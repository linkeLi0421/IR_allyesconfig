; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bios/therm.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/therm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvbios_therm_sensor = type { i16, i16, i16, i16, i8, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold }
%struct.nvbios_therm_threshold = type { i8, i8 }
%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvbios_therm_fan = type { i32, i32, i8, i8, i16, i16, i32, [10 x %struct.nvbios_therm_trip_point], i8, i8, i8 }
%struct.nvbios_therm_trip_point = type { i32, i32, i32 }

@__const.nvbios_therm_fan_parse.duty_lut = private unnamed_addr constant [16 x i8] c"\00\00\19\00(\002\00K\00U\00d\00d\00", align 1
@therm_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 42, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: unknown offset for thermal in BIT P %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"therm_table\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/bios/therm.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@therm_table._entry_ptr = internal global ptr @therm_table._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 8, i64 0, i64 1, i64 4, i64 7, i64 8, i64 16, i64 17, i64 18, i64 19, i64 50]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.6 = internal global [9 x i64] [i64 7, i64 8, i64 34, i64 36, i64 37, i64 38, i64 59, i64 60, i64 70]
@___asan_gen_.7 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [52 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/therm.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 40, i32 4 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @therm_table._entry, ptr @therm_table._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @therm_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_therm_sensor_parse(ptr noundef %bios, i32 noundef %domain, ptr nocapture noundef writeonly %sensor) local_unnamed_addr #0 align 64 {
entry:
  %ver = alloca i8, align 1
  %len = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #4
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %len, align 1, !annotation !17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %domain)
  %cmp.not = icmp eq i32 %domain, 0
  br i1 %cmp.not, label %while.cond.preheader, label %entry.cleanup107_crit_edge

entry.cleanup107_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup107

while.cond.preheader:                             ; preds = %entry
  %call159 = call fastcc i32 @nvbios_therm_entry(ptr noundef %bios, i32 noundef 0, ptr noundef nonnull %ver, ptr noundef nonnull %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool.not160 = icmp eq i32 %call159, 0
  br i1 %tobool.not160, label %while.cond.preheader.cleanup107_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup107_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup107

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %thrs_shutdown = getelementptr inbounds %struct.nvbios_therm_sensor, ptr %sensor, i32 0, i32 8
  %hysteresis105 = getelementptr inbounds %struct.nvbios_therm_sensor, ptr %sensor, i32 0, i32 8, i32 1
  %slope_div = getelementptr inbounds %struct.nvbios_therm_sensor, ptr %sensor, i32 0, i32 1
  %offset_den = getelementptr inbounds %struct.nvbios_therm_sensor, ptr %sensor, i32 0, i32 3
  %offset_num = getelementptr inbounds %struct.nvbios_therm_sensor, ptr %sensor, i32 0, i32 2
  %thrs_fan_boost = getelementptr inbounds %struct.nvbios_therm_sensor, ptr %sensor, i32 0, i32 5
  %hysteresis65 = getelementptr inbounds %struct.nvbios_therm_sensor, ptr %sensor, i32 0, i32 5, i32 1
  %thrs_down_clock = getelementptr inbounds %struct.nvbios_therm_sensor, ptr %sensor, i32 0, i32 6
  %hysteresis49 = getelementptr inbounds %struct.nvbios_therm_sensor, ptr %sensor, i32 0, i32 6, i32 1
  %thrs_critical = getelementptr inbounds %struct.nvbios_therm_sensor, ptr %sensor, i32 0, i32 7
  %hysteresis = getelementptr inbounds %struct.nvbios_therm_sensor, ptr %sensor, i32 0, i32 7, i32 1
  %offset_constant = getelementptr inbounds %struct.nvbios_therm_sensor, ptr %sensor, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %call164 = phi i32 [ %call159, %while.body.lr.ph ], [ %call, %cleanup.while.body_crit_edge ]
  %inc163 = phi i8 [ 1, %while.body.lr.ph ], [ %inc, %cleanup.while.body_crit_edge ]
  %sensor_section.0162 = phi i8 [ -1, %while.body.lr.ph ], [ %sensor_section.1, %cleanup.while.body_crit_edge ]
  %thrs_section.0161 = phi i8 [ 0, %while.body.lr.ph ], [ %thrs_section.1, %cleanup.while.body_crit_edge ]
  %add = add i32 %call164, 1
  %call2 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add) #4
  %call4 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %call164) #4
  %1 = zext i8 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i8 %call4, label %while.body.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb12
    i8 4, label %sw.bb23
    i8 7, label %sw.bb35
    i8 8, label %sw.bb51
    i8 16, label %sw.bb67
    i8 17, label %sw.bb73
    i8 18, label %sw.bb79
    i8 19, label %sw.bb85
    i8 50, label %sw.bb91
  ]

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %while.body
  %conv6 = trunc i16 %call2 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call2)
  %cmp8 = icmp sgt i16 %call2, 0
  br i1 %cmp8, label %sw.bb.cleanup107_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb.cleanup107_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup107

sw.bb12:                                          ; preds = %while.body
  %inc13 = add i8 %sensor_section.0162, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc13)
  %cmp15 = icmp eq i8 %inc13, 0
  br i1 %cmp15, label %if.then17, label %sw.bb12.cleanup_crit_edge

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then17:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #6
  %add18 = add i32 %call164, 2
  %call19 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add18) #4
  %2 = sdiv i8 %call19, 2
  %3 = ptrtoint ptr %offset_constant to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %offset_constant, align 2
  br label %cleanup

sw.bb23:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %thrs_section.0161)
  %cmp25 = icmp eq i8 %thrs_section.0161, 0
  br i1 %cmp25, label %if.then27, label %sw.bb23.cleanup_crit_edge

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then27:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #6
  %4 = lshr i16 %call2, 4
  %conv29 = trunc i16 %4 to i8
  %5 = ptrtoint ptr %thrs_critical to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv29, ptr %thrs_critical, align 1
  %6 = trunc i16 %call2 to i8
  %conv32 = and i8 %6, 15
  %7 = ptrtoint ptr %hysteresis to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv32, ptr %hysteresis, align 1
  br label %cleanup

sw.bb35:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %thrs_section.0161)
  %cmp37 = icmp eq i8 %thrs_section.0161, 0
  br i1 %cmp37, label %if.then39, label %sw.bb35.cleanup_crit_edge

sw.bb35.cleanup_crit_edge:                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then39:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #6
  %8 = lshr i16 %call2, 4
  %conv43 = trunc i16 %8 to i8
  %9 = ptrtoint ptr %thrs_down_clock to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv43, ptr %thrs_down_clock, align 1
  %10 = trunc i16 %call2 to i8
  %conv47 = and i8 %10, 15
  %11 = ptrtoint ptr %hysteresis49 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv47, ptr %hysteresis49, align 1
  br label %cleanup

sw.bb51:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %thrs_section.0161)
  %cmp53 = icmp eq i8 %thrs_section.0161, 0
  br i1 %cmp53, label %if.then55, label %sw.bb51.cleanup_crit_edge

sw.bb51.cleanup_crit_edge:                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then55:                                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #6
  %12 = lshr i16 %call2, 4
  %conv59 = trunc i16 %12 to i8
  %13 = ptrtoint ptr %thrs_fan_boost to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv59, ptr %thrs_fan_boost, align 1
  %14 = trunc i16 %call2 to i8
  %conv63 = and i8 %14, 15
  %15 = ptrtoint ptr %hysteresis65 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv63, ptr %hysteresis65, align 1
  br label %cleanup

sw.bb67:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %sensor_section.0162)
  %cmp69 = icmp eq i8 %sensor_section.0162, 0
  br i1 %cmp69, label %if.then71, label %sw.bb67.cleanup_crit_edge

sw.bb67.cleanup_crit_edge:                        ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then71:                                        ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %offset_num to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %call2, ptr %offset_num, align 2
  br label %cleanup

sw.bb73:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %sensor_section.0162)
  %cmp75 = icmp eq i8 %sensor_section.0162, 0
  br i1 %cmp75, label %if.then77, label %sw.bb73.cleanup_crit_edge

sw.bb73.cleanup_crit_edge:                        ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then77:                                        ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %offset_den to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %call2, ptr %offset_den, align 2
  br label %cleanup

sw.bb79:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %sensor_section.0162)
  %cmp81 = icmp eq i8 %sensor_section.0162, 0
  br i1 %cmp81, label %if.then83, label %sw.bb79.cleanup_crit_edge

sw.bb79.cleanup_crit_edge:                        ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then83:                                        ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %sensor to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %call2, ptr %sensor, align 2
  br label %cleanup

sw.bb85:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %sensor_section.0162)
  %cmp87 = icmp eq i8 %sensor_section.0162, 0
  br i1 %cmp87, label %if.then89, label %sw.bb85.cleanup_crit_edge

sw.bb85.cleanup_crit_edge:                        ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then89:                                        ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %slope_div to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %call2, ptr %slope_div, align 2
  br label %cleanup

sw.bb91:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %thrs_section.0161)
  %cmp93 = icmp eq i8 %thrs_section.0161, 0
  br i1 %cmp93, label %if.then95, label %sw.bb91.cleanup_crit_edge

sw.bb91.cleanup_crit_edge:                        ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then95:                                        ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #6
  %20 = lshr i16 %call2, 4
  %conv99 = trunc i16 %20 to i8
  %21 = ptrtoint ptr %thrs_shutdown to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv99, ptr %thrs_shutdown, align 1
  %22 = trunc i16 %call2 to i8
  %conv103 = and i8 %22, 15
  %23 = ptrtoint ptr %hysteresis105 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv103, ptr %hysteresis105, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then95, %sw.bb91.cleanup_crit_edge, %if.then89, %sw.bb85.cleanup_crit_edge, %if.then83, %sw.bb79.cleanup_crit_edge, %if.then77, %sw.bb73.cleanup_crit_edge, %if.then71, %sw.bb67.cleanup_crit_edge, %if.then55, %sw.bb51.cleanup_crit_edge, %if.then39, %sw.bb35.cleanup_crit_edge, %if.then27, %sw.bb23.cleanup_crit_edge, %if.then17, %sw.bb12.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %thrs_section.1 = phi i8 [ %thrs_section.0161, %while.body.cleanup_crit_edge ], [ 0, %if.then95 ], [ %thrs_section.0161, %sw.bb91.cleanup_crit_edge ], [ %thrs_section.0161, %if.then89 ], [ %thrs_section.0161, %sw.bb85.cleanup_crit_edge ], [ %thrs_section.0161, %if.then83 ], [ %thrs_section.0161, %sw.bb79.cleanup_crit_edge ], [ %thrs_section.0161, %if.then77 ], [ %thrs_section.0161, %sw.bb73.cleanup_crit_edge ], [ %thrs_section.0161, %if.then71 ], [ %thrs_section.0161, %sw.bb67.cleanup_crit_edge ], [ 0, %if.then55 ], [ %thrs_section.0161, %sw.bb51.cleanup_crit_edge ], [ 0, %if.then39 ], [ %thrs_section.0161, %sw.bb35.cleanup_crit_edge ], [ 0, %if.then27 ], [ %thrs_section.0161, %sw.bb23.cleanup_crit_edge ], [ %thrs_section.0161, %if.then17 ], [ %thrs_section.0161, %sw.bb12.cleanup_crit_edge ], [ %conv6, %sw.bb.cleanup_crit_edge ]
  %sensor_section.1 = phi i8 [ %sensor_section.0162, %while.body.cleanup_crit_edge ], [ %sensor_section.0162, %if.then95 ], [ %sensor_section.0162, %sw.bb91.cleanup_crit_edge ], [ 0, %if.then89 ], [ %sensor_section.0162, %sw.bb85.cleanup_crit_edge ], [ 0, %if.then83 ], [ %sensor_section.0162, %sw.bb79.cleanup_crit_edge ], [ 0, %if.then77 ], [ %sensor_section.0162, %sw.bb73.cleanup_crit_edge ], [ 0, %if.then71 ], [ %sensor_section.0162, %sw.bb67.cleanup_crit_edge ], [ %sensor_section.0162, %if.then55 ], [ %sensor_section.0162, %sw.bb51.cleanup_crit_edge ], [ %sensor_section.0162, %if.then39 ], [ %sensor_section.0162, %sw.bb35.cleanup_crit_edge ], [ %sensor_section.0162, %if.then27 ], [ %sensor_section.0162, %sw.bb23.cleanup_crit_edge ], [ 0, %if.then17 ], [ %inc13, %sw.bb12.cleanup_crit_edge ], [ %sensor_section.0162, %sw.bb.cleanup_crit_edge ]
  %inc = add i8 %inc163, 1
  %conv = zext i8 %inc163 to i32
  %call = call fastcc i32 @nvbios_therm_entry(ptr noundef %bios, i32 noundef %conv, ptr noundef nonnull %ver, ptr noundef nonnull %len)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup.cleanup107_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

cleanup.cleanup107_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup107

cleanup107:                                       ; preds = %cleanup.cleanup107_crit_edge, %sw.bb.cleanup107_crit_edge, %while.cond.preheader.cleanup107_crit_edge, %entry.cleanup107_crit_edge
  %retval.2 = phi i32 [ -22, %entry.cleanup107_crit_edge ], [ 0, %while.cond.preheader.cleanup107_crit_edge ], [ 0, %sw.bb.cleanup107_crit_edge ], [ 0, %cleanup.cleanup107_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #4
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvbios_therm_entry(ptr noundef %bios, i32 noundef %idx, ptr nocapture noundef writeonly %ver, ptr nocapture noundef %len) unnamed_addr #0 align 64 {
entry:
  %bit_P.i = alloca %struct.bit_entry, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bit_P.i) #4
  %0 = getelementptr inbounds %struct.bit_entry, ptr %bit_P.i, i32 0, i32 3
  %1 = call ptr @memset(ptr %bit_P.i, i32 255, i32 6)
  %call.i = call i32 @bit_entry(ptr noundef %bios, i8 noundef zeroext 80, ptr noundef nonnull %bit_P.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.therm_table.exit.thread_crit_edge

entry.therm_table.exit.thread_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %therm_table.exit.thread

if.then.i:                                        ; preds = %entry
  %2 = getelementptr inbounds %struct.bit_entry, ptr %bit_P.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  %conv.i = zext i8 %4 to i32
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %4, label %do.body.i [
    i8 1, label %if.then.i.if.end25.i_crit_edge
    i8 2, label %if.then9.i
  ]

if.then.i.if.end25.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25.i

if.then9.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25.i

do.body.i:                                        ; preds = %if.then.i
  %debug.i = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %6 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp15.not.i = icmp eq i32 %7, 0
  br i1 %cmp15.not.i, label %do.body.i.therm_table.exit.thread_crit_edge, label %do.end.i

do.body.i.therm_table.exit.thread_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %therm_table.exit.thread

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %device.i = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %8 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str, ptr noundef %name.i, i32 noundef %conv.i) #7
  br label %therm_table.exit.thread

if.end25.i:                                       ; preds = %if.then9.i, %if.then.i.if.end25.i_crit_edge
  %.sink.i = phi i32 [ 16, %if.then9.i ], [ 12, %if.then.i.if.end25.i_crit_edge ]
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %0, align 2
  %conv3.i = zext i16 %13 to i32
  %add.i = add nuw nsw i32 %.sink.i, %conv3.i
  %call4.i = call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool26.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool26.not.i, label %if.end25.i.therm_table.exit.thread_crit_edge, label %therm_table.exit

if.end25.i.therm_table.exit.thread_crit_edge:     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %therm_table.exit.thread

therm_table.exit.thread:                          ; preds = %if.end25.i.therm_table.exit.thread_crit_edge, %do.end.i, %do.body.i.therm_table.exit.thread_crit_edge, %entry.therm_table.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bit_P.i) #4
  br label %cleanup

therm_table.exit:                                 ; preds = %if.end25.i
  %call30.i = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %call4.i) #4
  %14 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call30.i, ptr %ver, align 1
  %add31.i = add i32 %call4.i, 1
  %call32.i = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add31.i) #4
  %add33.i = add i32 %call4.i, 2
  %call34.i = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add33.i) #4
  %15 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call34.i, ptr %len, align 1
  %add35.i = add i32 %call4.i, 3
  %call36.i = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add35.i) #4
  %call38.i = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add31.i) #4
  %conv39.i = zext i8 %call38.i to i32
  %add40.i = add i32 %call4.i, %conv39.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bit_P.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add40.i)
  %tobool.not = icmp ne i32 %add40.i, 0
  %conv = zext i8 %call36.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %idx)
  %cmp = icmp sgt i32 %conv, %idx
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %therm_table.exit.cleanup_crit_edge

therm_table.exit.cleanup_crit_edge:               ; preds = %therm_table.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %therm_table.exit
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %len, align 1
  %conv2 = zext i8 %17 to i32
  %mul = mul i32 %conv2, %idx
  %add = add i32 %mul, %add40.i
  br label %cleanup

cleanup:                                          ; preds = %if.then, %therm_table.exit.cleanup_crit_edge, %therm_table.exit.thread
  %retval.0 = phi i32 [ %add, %if.then ], [ 0, %therm_table.exit.cleanup_crit_edge ], [ 0, %therm_table.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_therm_fan_parse(ptr noundef %bios, ptr nocapture noundef %fan) local_unnamed_addr #0 align 64 {
entry:
  %ver = alloca i8, align 1
  %len = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #4
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %len, align 1, !annotation !17
  %nr_fan_trip = getelementptr inbounds %struct.nvbios_therm_fan, ptr %fan, i32 0, i32 8
  %1 = ptrtoint ptr %nr_fan_trip to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %nr_fan_trip, align 4
  %fan_mode = getelementptr inbounds %struct.nvbios_therm_fan, ptr %fan, i32 0, i32 6
  %2 = ptrtoint ptr %fan_mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %fan_mode, align 4
  %call104 = call fastcc i32 @nvbios_therm_entry(ptr noundef %bios, i32 noundef 0, ptr noundef nonnull %ver, ptr noundef nonnull %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool.not105 = icmp eq i32 %call104, 0
  br i1 %tobool.not105, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %linear_min_temp = getelementptr inbounds %struct.nvbios_therm_fan, ptr %fan, i32 0, i32 9
  %linear_max_temp = getelementptr inbounds %struct.nvbios_therm_fan, ptr %fan, i32 0, i32 10
  %slow_down_period = getelementptr inbounds %struct.nvbios_therm_fan, ptr %fan, i32 0, i32 5
  %bump_period = getelementptr inbounds %struct.nvbios_therm_fan, ptr %fan, i32 0, i32 4
  %pwm_freq = getelementptr inbounds %struct.nvbios_therm_fan, ptr %fan, i32 0, i32 1
  %min_duty = getelementptr inbounds %struct.nvbios_therm_fan, ptr %fan, i32 0, i32 2
  %max_duty = getelementptr inbounds %struct.nvbios_therm_fan, ptr %fan, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %call107 = phi i32 [ %call104, %while.body.lr.ph ], [ %call, %sw.epilog.while.body_crit_edge ]
  %inc106 = phi i8 [ 1, %while.body.lr.ph ], [ %inc, %sw.epilog.while.body_crit_edge ]
  %add = add i32 %call107, 1
  %call2 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add) #4
  %call4 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %call107) #4
  %3 = zext i8 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %call4, label %while.body.sw.epilog_crit_edge [
    i8 34, label %sw.bb
    i8 36, label %sw.bb11
    i8 37, label %sw.bb29
    i8 38, label %sw.bb37
    i8 59, label %sw.bb43
    i8 60, label %sw.bb44
    i8 70, label %sw.bb45
  ]

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %conv7 = trunc i16 %call2 to i8
  %4 = ptrtoint ptr %min_duty to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv7, ptr %min_duty, align 4
  %5 = lshr i16 %call2, 8
  %conv10 = trunc i16 %5 to i8
  %6 = ptrtoint ptr %max_duty to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv10, ptr %max_duty, align 1
  br label %sw.epilog

sw.bb11:                                          ; preds = %while.body
  %7 = ptrtoint ptr %nr_fan_trip to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %nr_fan_trip, align 4
  %inc13 = add i8 %8, 1
  store i8 %inc13, ptr %nr_fan_trip, align 4
  %9 = ptrtoint ptr %fan_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fan_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %sw.bb11.if.end_crit_edge, label %if.then

sw.bb11.if.end_crit_edge:                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %fan_mode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %fan_mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb11.if.end_crit_edge
  %conv18 = zext i8 %inc13 to i32
  %sub = add nsw i32 %conv18, -1
  %arrayidx = getelementptr %struct.nvbios_therm_fan, ptr %fan, i32 0, i32 7, i32 %sub
  %conv19108 = zext i16 %call2 to i32
  %and20 = and i32 %conv19108, 15
  %hysteresis = getelementptr %struct.nvbios_therm_fan, ptr %fan, i32 0, i32 7, i32 %sub, i32 2
  %12 = ptrtoint ptr %hysteresis to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and20, ptr %hysteresis, align 4
  %and22 = lshr i32 %conv19108, 4
  %13 = and i32 %and22, 255
  %temp = getelementptr %struct.nvbios_therm_fan, ptr %fan, i32 0, i32 7, i32 %sub, i32 1
  %14 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %temp, align 4
  %and25 = lshr i32 %conv19108, 12
  %arrayidx27 = getelementptr [16 x i8], ptr @__const.nvbios_therm_fan_parse.duty_lut, i32 0, i32 %and25
  %15 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %16 to i32
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv28, ptr %arrayidx, align 4
  br label %sw.epilog

sw.bb29:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %nr_fan_trip to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %nr_fan_trip, align 4
  %conv32 = zext i8 %19 to i32
  %sub33 = add nsw i32 %conv32, -1
  %arrayidx34 = getelementptr %struct.nvbios_therm_fan, ptr %fan, i32 0, i32 7, i32 %sub33
  %conv35 = sext i16 %call2 to i32
  %20 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv35, ptr %arrayidx34, align 4
  br label %sw.epilog

sw.bb37:                                          ; preds = %while.body
  %21 = ptrtoint ptr %pwm_freq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pwm_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool38.not = icmp eq i32 %22, 0
  br i1 %tobool38.not, label %if.then39, label %sw.bb37.sw.epilog_crit_edge

sw.bb37.sw.epilog_crit_edge:                      ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then39:                                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #6
  %conv40 = sext i16 %call2 to i32
  %23 = ptrtoint ptr %pwm_freq to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv40, ptr %pwm_freq, align 4
  br label %sw.epilog

sw.bb43:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %bump_period to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %call2, ptr %bump_period, align 2
  br label %sw.epilog

sw.bb44:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %slow_down_period to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %call2, ptr %slow_down_period, align 4
  br label %sw.epilog

sw.bb45:                                          ; preds = %while.body
  %26 = ptrtoint ptr %fan_mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fan_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp47 = icmp ugt i32 %27, 1
  br i1 %cmp47, label %if.then49, label %sw.bb45.if.end51_crit_edge

sw.bb45.if.end51_crit_edge:                       ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51

if.then49:                                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %fan_mode to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %fan_mode, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %sw.bb45.if.end51_crit_edge
  %call53 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add) #4
  %29 = ptrtoint ptr %linear_min_temp to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %call53, ptr %linear_min_temp, align 1
  %add54 = add i32 %call107, 2
  %call55 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add54) #4
  %30 = ptrtoint ptr %linear_max_temp to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %call55, ptr %linear_max_temp, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end51, %sw.bb44, %sw.bb43, %if.then39, %sw.bb37.sw.epilog_crit_edge, %sw.bb29, %if.end, %sw.bb, %while.body.sw.epilog_crit_edge
  %inc = add i8 %inc106, 1
  %conv = zext i8 %inc106 to i32
  %call = call fastcc i32 @nvbios_therm_entry(ptr noundef %bios, i32 noundef %conv, ptr noundef nonnull %ver, ptr noundef nonnull %len)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %sw.epilog.while.end_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %entry.while.end_crit_edge
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %31 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device, align 4
  %card_type = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 15
  %33 = ptrtoint ptr %card_type to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %card_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 191, i32 %34)
  %cmp56 = icmp ugt i32 %34, 191
  br i1 %cmp56, label %land.lhs.true, label %while.end.if.end63_crit_edge

while.end.if.end63_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end63

land.lhs.true:                                    ; preds = %while.end
  %35 = ptrtoint ptr %fan_mode to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fan_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp59 = icmp eq i32 %36, 2
  br i1 %cmp59, label %if.then61, label %land.lhs.true.if.end63_crit_edge

land.lhs.true.if.end63_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end63

if.then61:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %fan_mode to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %fan_mode, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %land.lhs.true.if.end63_crit_edge, %while.end.if.end63_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/therm.c", i32 40, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @therm_table._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @therm_table._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"auto-init"}
