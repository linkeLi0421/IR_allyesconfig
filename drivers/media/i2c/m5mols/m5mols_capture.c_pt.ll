; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/m5mols/m5mols_capture.c_pt.bc'
source_filename = "../drivers/media/i2c/m5mols/m5mols_capture.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.m5mols_info = type { ptr, %struct.v4l2_subdev, %struct.media_pad, %struct.wait_queue_head, %struct.atomic_t, %struct.v4l2_ctrl_handler, %struct.anon.92, %struct.anon.93, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, [2 x %struct.v4l2_mbus_framefmt], i32, %struct.m5mols_version, %struct.m5mols_capture, i8, i8, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.92 = type { ptr, ptr, ptr, ptr }
%struct.anon.93 = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.88, i16, i16, i16, [10 x i16] }
%union.anon.88 = type { i16 }
%struct.m5mols_version = type { i8, i8, i16, i16, i16, i16, [22 x i8], i8 }
%struct.m5mols_capture = type { %struct.m5mols_exif, i32, i32, i32, i32 }
%struct.m5mols_exif = type { i32, i32, i32, i32, i32, i16, i16, i16, i16 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }

@m5mols_debug = external dso_local local_unnamed_addr global i32, align 4
@m5mols_start_capture._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: %s: size: %d, thumb.: %d B\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"m5mols_start_capture\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/i2c/m5mols/m5mols_capture.c\00", [54 x i8] zeroinitializer }, align 32
@m5mols_start_capture._entry_ptr = internal global ptr @m5mols_start_capture._entry, section ".printk_index", align 4
@___asan_gen_.3 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [45 x i8] c"../drivers/media/i2c/m5mols/m5mols_capture.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 152, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @m5mols_start_capture._entry, ptr @m5mols_start_capture._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_start_capture._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @m5mols_start_capture(ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  %num.i127.i = alloca i32, align 4
  %den.i128.i = alloca i32, align 4
  %num.i112.i = alloca i32, align 4
  %den.i113.i = alloca i32, align 4
  %num.i97.i = alloca i32, align 4
  %den.i98.i = alloca i32, align 4
  %num.i.i = alloca i32, align 4
  %den.i.i = alloca i32, align 4
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_size = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 21, i32 1
  %0 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buf_size, align 4
  %sub = add i32 %1, -131072
  %sd1 = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 1
  %call = tail call i32 @m5mols_set_mode(ptr noundef %info, i8 noundef zeroext 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @m5mols_restore_controls(ptr noundef %info) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call5 = tail call i32 @m5mols_write(ptr noundef %sd1, i32 noundef 720897, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool7.not = icmp eq i32 %call5, 0
  br i1 %tobool7.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %resolution = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 23
  %2 = ptrtoint ptr %resolution to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %resolution, align 1
  %conv = zext i8 %3 to i32
  %call9 = tail call i32 @m5mols_write(ptr noundef %sd1, i32 noundef 721153, i32 noundef %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool11.not = icmp eq i32 %call9, 0
  br i1 %tobool11.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %call13 = tail call i32 @m5mols_write(ptr noundef %sd1, i32 noundef 724740, i32 noundef %sub) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool15.not = icmp eq i32 %call13, 0
  br i1 %tobool15.not, label %if.end18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %call17 = tail call i32 @m5mols_set_mode(ptr noundef %info, i8 noundef zeroext 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool19.not = icmp eq i32 %call17, 0
  br i1 %tobool19.not, label %if.end22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %call21 = tail call i32 @m5mols_wait_interrupt(ptr noundef %sd1, i8 noundef zeroext 8, i32 noundef 2000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool23.not = icmp eq i32 %call21, 0
  br i1 %tobool23.not, label %if.end25, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end25:                                         ; preds = %if.end22
  %call26 = tail call i32 @m5mols_write(ptr noundef %sd1, i32 noundef 787969, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end30, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %call29 = tail call i32 @m5mols_write(ptr noundef %sd1, i32 noundef 788737, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool31.not = icmp eq i32 %call29, 0
  br i1 %tobool31.not, label %if.then32, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then32:                                        ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #4
  %call33 = tail call i32 @m5mols_wait_interrupt(ptr noundef %sd1, i8 noundef zeroext 8, i32 noundef 2000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then35, label %if.then32.cond.end_crit_edge

if.then32.cond.end_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

if.then35:                                        ; preds = %if.then32
  %cap.i = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num.i.i) #4
  %4 = ptrtoint ptr %num.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %num.i.i, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %den.i.i) #4
  %5 = ptrtoint ptr %den.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %den.i.i, align 4, !annotation !15
  %call.i.i = call i32 @m5mols_read_u32(ptr noundef %sd1, i32 noundef 458756, ptr noundef nonnull %num.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then35.m5mols_read_rational.exit.thread.i_crit_edge

if.then35.m5mols_read_rational.exit.thread.i_crit_edge: ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #6
  br label %m5mols_read_rational.exit.thread.i

if.end.i.i:                                       ; preds = %if.then35
  %call1.i.i = call i32 @m5mols_read_u32(ptr noundef %sd1, i32 noundef 459780, ptr noundef nonnull %den.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.m5mols_read_rational.exit.thread.i_crit_edge

if.end.i.i.m5mols_read_rational.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %m5mols_read_rational.exit.thread.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %6 = ptrtoint ptr %den.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %den.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 0
  br i1 %cmp.i.i, label %if.end4.i.i.if.end.i_crit_edge, label %cond.false.i.i

if.end4.i.i.if.end.i_crit_edge:                   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

cond.false.i.i:                                   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num.i.i, align 4
  %div.i.i = udiv i32 %9, %7
  br label %if.end.i

m5mols_read_rational.exit.thread.i:               ; preds = %if.end.i.i.m5mols_read_rational.exit.thread.i_crit_edge, %if.then35.m5mols_read_rational.exit.thread.i_crit_edge
  %ret.013.i.ph.i = phi i32 [ %call.i.i, %if.then35.m5mols_read_rational.exit.thread.i_crit_edge ], [ %call1.i.i, %if.end.i.i.m5mols_read_rational.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %den.i.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num.i.i) #4
  br label %cond.true

if.end.i:                                         ; preds = %cond.false.i.i, %if.end4.i.i.if.end.i_crit_edge
  %cond.i.i = phi i32 [ %div.i.i, %cond.false.i.i ], [ 0, %if.end4.i.i.if.end.i_crit_edge ]
  %10 = ptrtoint ptr %cap.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond.i.i, ptr %cap.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %den.i.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num.i.i) #4
  %shutter_speed.i = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 21, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num.i97.i) #4
  %11 = ptrtoint ptr %num.i97.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %num.i97.i, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %den.i98.i) #4
  %12 = ptrtoint ptr %den.i98.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %den.i98.i, align 4, !annotation !15
  %call.i99.i = call i32 @m5mols_read_u32(ptr noundef %sd1, i32 noundef 460804, ptr noundef nonnull %num.i97.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99.i)
  %tobool.not.i100.i = icmp eq i32 %call.i99.i, 0
  br i1 %tobool.not.i100.i, label %if.end.i103.i, label %if.end.i.m5mols_read_rational.exit111.thread.i_crit_edge

if.end.i.m5mols_read_rational.exit111.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %m5mols_read_rational.exit111.thread.i

if.end.i103.i:                                    ; preds = %if.end.i
  %call1.i101.i = call i32 @m5mols_read_u32(ptr noundef %sd1, i32 noundef 461828, ptr noundef nonnull %den.i98.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i101.i)
  %tobool2.not.i102.i = icmp eq i32 %call1.i101.i, 0
  br i1 %tobool2.not.i102.i, label %if.end4.i105.i, label %if.end.i103.i.m5mols_read_rational.exit111.thread.i_crit_edge

if.end.i103.i.m5mols_read_rational.exit111.thread.i_crit_edge: ; preds = %if.end.i103.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %m5mols_read_rational.exit111.thread.i

if.end4.i105.i:                                   ; preds = %if.end.i103.i
  %13 = ptrtoint ptr %den.i98.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %den.i98.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i104.i = icmp eq i32 %14, 0
  br i1 %cmp.i104.i, label %if.end4.i105.i.if.end6.i_crit_edge, label %cond.false.i107.i

if.end4.i105.i.if.end6.i_crit_edge:               ; preds = %if.end4.i105.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6.i

cond.false.i107.i:                                ; preds = %if.end4.i105.i
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %num.i97.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num.i97.i, align 4
  %div.i106.i = udiv i32 %16, %14
  br label %if.end6.i

m5mols_read_rational.exit111.thread.i:            ; preds = %if.end.i103.i.m5mols_read_rational.exit111.thread.i_crit_edge, %if.end.i.m5mols_read_rational.exit111.thread.i_crit_edge
  %ret.013.i110.ph.i = phi i32 [ %call.i99.i, %if.end.i.m5mols_read_rational.exit111.thread.i_crit_edge ], [ %call1.i101.i, %if.end.i103.i.m5mols_read_rational.exit111.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %den.i98.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num.i97.i) #4
  br label %cond.true

if.end6.i:                                        ; preds = %cond.false.i107.i, %if.end4.i105.i.if.end6.i_crit_edge
  %cond.i108.i = phi i32 [ %div.i106.i, %cond.false.i107.i ], [ 0, %if.end4.i105.i.if.end6.i_crit_edge ]
  %17 = ptrtoint ptr %shutter_speed.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond.i108.i, ptr %shutter_speed.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %den.i98.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num.i97.i) #4
  %aperture.i = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 21, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num.i112.i) #4
  %18 = ptrtoint ptr %num.i112.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %num.i112.i, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %den.i113.i) #4
  %19 = ptrtoint ptr %den.i113.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %den.i113.i, align 4, !annotation !15
  %call.i114.i = call i32 @m5mols_read_u32(ptr noundef %sd1, i32 noundef 462852, ptr noundef nonnull %num.i112.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114.i)
  %tobool.not.i115.i = icmp eq i32 %call.i114.i, 0
  br i1 %tobool.not.i115.i, label %if.end.i118.i, label %if.end6.i.m5mols_read_rational.exit126.thread.i_crit_edge

if.end6.i.m5mols_read_rational.exit126.thread.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %m5mols_read_rational.exit126.thread.i

if.end.i118.i:                                    ; preds = %if.end6.i
  %call1.i116.i = call i32 @m5mols_read_u32(ptr noundef %sd1, i32 noundef 463876, ptr noundef nonnull %den.i113.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i116.i)
  %tobool2.not.i117.i = icmp eq i32 %call1.i116.i, 0
  br i1 %tobool2.not.i117.i, label %if.end4.i120.i, label %if.end.i118.i.m5mols_read_rational.exit126.thread.i_crit_edge

if.end.i118.i.m5mols_read_rational.exit126.thread.i_crit_edge: ; preds = %if.end.i118.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %m5mols_read_rational.exit126.thread.i

if.end4.i120.i:                                   ; preds = %if.end.i118.i
  %20 = ptrtoint ptr %den.i113.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %den.i113.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i119.i = icmp eq i32 %21, 0
  br i1 %cmp.i119.i, label %if.end4.i120.i.if.end10.i_crit_edge, label %cond.false.i122.i

if.end4.i120.i.if.end10.i_crit_edge:              ; preds = %if.end4.i120.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

cond.false.i122.i:                                ; preds = %if.end4.i120.i
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %num.i112.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num.i112.i, align 4
  %div.i121.i = udiv i32 %23, %21
  br label %if.end10.i

m5mols_read_rational.exit126.thread.i:            ; preds = %if.end.i118.i.m5mols_read_rational.exit126.thread.i_crit_edge, %if.end6.i.m5mols_read_rational.exit126.thread.i_crit_edge
  %ret.013.i125.ph.i = phi i32 [ %call.i114.i, %if.end6.i.m5mols_read_rational.exit126.thread.i_crit_edge ], [ %call1.i116.i, %if.end.i118.i.m5mols_read_rational.exit126.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %den.i113.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num.i112.i) #4
  br label %cond.true

if.end10.i:                                       ; preds = %cond.false.i122.i, %if.end4.i120.i.if.end10.i_crit_edge
  %cond.i123.i = phi i32 [ %div.i121.i, %cond.false.i122.i ], [ 0, %if.end4.i120.i.if.end10.i_crit_edge ]
  %24 = ptrtoint ptr %aperture.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond.i123.i, ptr %aperture.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %den.i113.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num.i112.i) #4
  %brightness.i = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 21, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num.i127.i) #4
  %25 = ptrtoint ptr %num.i127.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %num.i127.i, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %den.i128.i) #4
  %26 = ptrtoint ptr %den.i128.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %den.i128.i, align 4, !annotation !15
  %call.i129.i = call i32 @m5mols_read_u32(ptr noundef %sd1, i32 noundef 464900, ptr noundef nonnull %num.i127.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129.i)
  %tobool.not.i130.i = icmp eq i32 %call.i129.i, 0
  br i1 %tobool.not.i130.i, label %if.end.i133.i, label %if.end10.i.m5mols_read_rational.exit141.thread.i_crit_edge

if.end10.i.m5mols_read_rational.exit141.thread.i_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %m5mols_read_rational.exit141.thread.i

if.end.i133.i:                                    ; preds = %if.end10.i
  %call1.i131.i = call i32 @m5mols_read_u32(ptr noundef %sd1, i32 noundef 465924, ptr noundef nonnull %den.i128.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i131.i)
  %tobool2.not.i132.i = icmp eq i32 %call1.i131.i, 0
  br i1 %tobool2.not.i132.i, label %if.end4.i135.i, label %if.end.i133.i.m5mols_read_rational.exit141.thread.i_crit_edge

if.end.i133.i.m5mols_read_rational.exit141.thread.i_crit_edge: ; preds = %if.end.i133.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %m5mols_read_rational.exit141.thread.i

if.end4.i135.i:                                   ; preds = %if.end.i133.i
  %27 = ptrtoint ptr %den.i128.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %den.i128.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i134.i = icmp eq i32 %28, 0
  br i1 %cmp.i134.i, label %if.end4.i135.i.if.end14.i_crit_edge, label %cond.false.i137.i

if.end4.i135.i.if.end14.i_crit_edge:              ; preds = %if.end4.i135.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14.i

cond.false.i137.i:                                ; preds = %if.end4.i135.i
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %num.i127.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num.i127.i, align 4
  %div.i136.i = udiv i32 %30, %28
  br label %if.end14.i

m5mols_read_rational.exit141.thread.i:            ; preds = %if.end.i133.i.m5mols_read_rational.exit141.thread.i_crit_edge, %if.end10.i.m5mols_read_rational.exit141.thread.i_crit_edge
  %ret.013.i140.ph.i = phi i32 [ %call.i129.i, %if.end10.i.m5mols_read_rational.exit141.thread.i_crit_edge ], [ %call1.i131.i, %if.end.i133.i.m5mols_read_rational.exit141.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %den.i128.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num.i127.i) #4
  br label %cond.true

if.end14.i:                                       ; preds = %cond.false.i137.i, %if.end4.i135.i.if.end14.i_crit_edge
  %cond.i138.i = phi i32 [ %div.i136.i, %cond.false.i137.i ], [ 0, %if.end4.i135.i.if.end14.i_crit_edge ]
  %31 = ptrtoint ptr %brightness.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %cond.i138.i, ptr %brightness.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %den.i128.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num.i127.i) #4
  %exposure_bias.i = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 21, i32 0, i32 4
  %call15.i = call fastcc i32 @m5mols_read_rational(ptr noundef %sd1, i32 noundef 466948, i32 noundef 467972, ptr noundef %exposure_bias.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end14.i.cond.true_crit_edge

if.end14.i.cond.true_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.true

if.end18.i:                                       ; preds = %if.end14.i
  %iso_speed.i = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 21, i32 0, i32 5
  %call19.i = call i32 @m5mols_read_u16(ptr noundef %sd1, i32 noundef 468994, ptr noundef %iso_speed.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end23.i, label %if.end18.i.cond.true_crit_edge

if.end18.i.cond.true_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.true

if.end23.i:                                       ; preds = %if.end18.i
  %flash.i = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 21, i32 0, i32 6
  %call22.i = call i32 @m5mols_read_u16(ptr noundef %sd1, i32 noundef 469506, ptr noundef %flash.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool24.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool24.not.i, label %if.end27.i, label %if.end23.i.cond.true_crit_edge

if.end23.i.cond.true_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.true

if.end27.i:                                       ; preds = %if.end23.i
  %sdr.i = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 21, i32 0, i32 7
  %call26.i = call i32 @m5mols_read_u16(ptr noundef %sd1, i32 noundef 470018, ptr noundef %sdr.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool28.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool28.not.i, label %if.end31.i, label %if.end27.i.cond.true_crit_edge

if.end27.i.cond.true_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.true

if.end31.i:                                       ; preds = %if.end27.i
  %qval.i = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 21, i32 0, i32 8
  %call30.i = call i32 @m5mols_read_u16(ptr noundef %sd1, i32 noundef 470530, ptr noundef %qval.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool32.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %if.end31.i.cond.true_crit_edge

if.end31.i.cond.true_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.true

if.then36.i:                                      ; preds = %if.end31.i
  %main.i = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 21, i32 2
  %call38.i = call i32 @m5mols_read_u32(ptr noundef %sd1, i32 noundef 789764, ptr noundef %main.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool40.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool40.not.i, label %if.end44.i, label %if.then36.i.cond.true_crit_edge

if.then36.i.cond.true_crit_edge:                  ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.true

if.end44.i:                                       ; preds = %if.then36.i
  %thumb.i = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 21, i32 3
  %call43.i = call i32 @m5mols_read_u32(ptr noundef %sd1, i32 noundef 790788, ptr noundef %thumb.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool45.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool45.not.i, label %if.then46.i, label %if.end44.i.cond.true_crit_edge

if.end44.i.cond.true_crit_edge:                   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.true

if.then46.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %main.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %main.i, align 4
  %34 = ptrtoint ptr %thumb.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %thumb.i, align 4
  %add.i = add i32 %35, %33
  %total.i = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 21, i32 4
  %36 = ptrtoint ptr %total.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add.i, ptr %total.i, align 4
  br label %cond.true

cond.true:                                        ; preds = %if.then46.i, %if.end44.i.cond.true_crit_edge, %if.then36.i.cond.true_crit_edge, %if.end31.i.cond.true_crit_edge, %if.end27.i.cond.true_crit_edge, %if.end23.i.cond.true_crit_edge, %if.end18.i.cond.true_crit_edge, %if.end14.i.cond.true_crit_edge, %m5mols_read_rational.exit141.thread.i, %m5mols_read_rational.exit126.thread.i, %m5mols_read_rational.exit111.thread.i, %m5mols_read_rational.exit.thread.i
  %ret.7.ph = phi i32 [ %call38.i, %if.then36.i.cond.true_crit_edge ], [ %call19.i, %if.end18.i.cond.true_crit_edge ], [ %call22.i, %if.end23.i.cond.true_crit_edge ], [ %call26.i, %if.end27.i.cond.true_crit_edge ], [ %ret.013.i140.ph.i, %m5mols_read_rational.exit141.thread.i ], [ %ret.013.i125.ph.i, %m5mols_read_rational.exit126.thread.i ], [ %ret.013.i110.ph.i, %m5mols_read_rational.exit111.thread.i ], [ %ret.013.i.ph.i, %m5mols_read_rational.exit.thread.i ], [ %call43.i, %if.end44.i.cond.true_crit_edge ], [ 0, %if.then46.i ], [ %call30.i, %if.end31.i.cond.true_crit_edge ], [ %call15.i, %if.end14.i.cond.true_crit_edge ]
  %main = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 21, i32 2
  %37 = ptrtoint ptr %main to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %main, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then32.cond.end_crit_edge
  %ret.795 = phi i32 [ %ret.7.ph, %cond.true ], [ %call33, %if.then32.cond.end_crit_edge ]
  %cond = phi i32 [ %38, %cond.true ], [ 0, %if.then32.cond.end_crit_edge ]
  %39 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %cond, ptr %size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @m5mols_debug to i32))
  %40 = load i32, ptr @m5mols_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp = icmp sgt i32 %40, 0
  br i1 %cmp, label %do.end, label %cond.end.do.end48_crit_edge

cond.end.do.end48_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end48

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 1, i32 9
  %thumb = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 21, i32 3
  %41 = ptrtoint ptr %thumb to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %thumb, align 4
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.1, i32 noundef %cond, i32 noundef %42) #7
  br label %do.end48

do.end48:                                         ; preds = %do.end, %cond.end.do.end48_crit_edge
  %tobool.not.i = icmp eq ptr %sd1, null
  br i1 %tobool.not.i, label %do.end48.v4l2_subdev_notify.exit_crit_edge, label %land.lhs.true.i

do.end48.v4l2_subdev_notify.exit_crit_edge:       ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %v4l2_subdev_notify.exit

land.lhs.true.i:                                  ; preds = %do.end48
  %v4l2_dev.i = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 1, i32 5
  %43 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %v4l2_dev.i, align 4
  %tobool1.not.i = icmp eq ptr %44, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.v4l2_subdev_notify.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.v4l2_subdev_notify.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %v4l2_subdev_notify.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %notify.i = getelementptr inbounds %struct.v4l2_device, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %notify.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %notify.i, align 4
  %tobool4.not.i = icmp eq ptr %46, null
  br i1 %tobool4.not.i, label %land.lhs.true2.i.v4l2_subdev_notify.exit_crit_edge, label %if.then.i

land.lhs.true2.i.v4l2_subdev_notify.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %v4l2_subdev_notify.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #6
  call void %46(ptr noundef nonnull %sd1, i32 noundef 25856, ptr noundef nonnull %size) #4
  br label %v4l2_subdev_notify.exit

v4l2_subdev_notify.exit:                          ; preds = %if.then.i, %land.lhs.true2.i.v4l2_subdev_notify.exit_crit_edge, %land.lhs.true.i.v4l2_subdev_notify.exit_crit_edge, %do.end48.v4l2_subdev_notify.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #4
  br label %cleanup

cleanup:                                          ; preds = %v4l2_subdev_notify.exit, %if.end30.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.end22.cleanup_crit_edge ], [ %call29, %if.end30.cleanup_crit_edge ], [ %ret.795, %v4l2_subdev_notify.exit ], [ %call17, %if.end18.cleanup_crit_edge ], [ %call13, %if.end14.cleanup_crit_edge ], [ %call9, %if.end10.cleanup_crit_edge ], [ %call5, %if.end6.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %call26, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m5mols_set_mode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m5mols_restore_controls(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m5mols_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m5mols_wait_interrupt(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @m5mols_read_rational(ptr noundef %sd, i32 noundef %addr_num, i32 noundef %addr_den, ptr nocapture noundef writeonly %val) unnamed_addr #0 align 64 {
entry:
  %num = alloca i32, align 4
  %den = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #4
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %den) #4
  %1 = ptrtoint ptr %den to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %den, align 4, !annotation !15
  %call = call i32 @m5mols_read_u32(ptr noundef %sd, i32 noundef %addr_num, ptr noundef nonnull %num) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @m5mols_read_u32(ptr noundef %sd, i32 noundef %addr_den, ptr noundef nonnull %den) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %den to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %den, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.end4.cond.end_crit_edge, label %cond.false

if.end4.cond.end_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num, align 4
  %div = udiv i32 %5, %3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end4.cond.end_crit_edge
  %cond = phi i32 [ %div, %cond.false ], [ 0, %if.end4.cond.end_crit_edge ]
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %ret.013 = phi i32 [ %call1, %if.end.cleanup_crit_edge ], [ 0, %cond.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %den) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #4
  ret i32 %ret.013
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m5mols_read_u16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m5mols_read_u32(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/m5mols/m5mols_capture.c", i32 152, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @m5mols_start_capture._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @m5mols_start_capture._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"auto-init"}
