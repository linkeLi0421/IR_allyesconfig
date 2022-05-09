; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_eeprom.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_eeprom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@amdgpu_eeprom_xfer._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.amdgpu_eeprom_xfer = private unnamed_addr constant [19 x i8] c"amdgpu_eeprom_xfer\00", align 1
@amdgpu_eeprom_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.amdgpu_eeprom_xfer, ptr @.str.2, i32 199, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"amdgpu: maddr:0x%04X size:0x%02X:quirk max_%s_len must be > %d\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_eeprom.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amdgpu_eeprom_xfer._entry_ptr = internal global ptr @amdgpu_eeprom_xfer._entry, section ".printk_index", align 4
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private constant [46 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_eeprom.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 196, i32 3 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @amdgpu_eeprom_xfer._entry, ptr @amdgpu_eeprom_xfer._entry_ptr, ptr @amdgpu_eeprom_xfer._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_eeprom_xfer._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_eeprom_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_eeprom_read(ptr noundef %i2c_adap, i32 noundef %eeprom_addr, ptr noundef %eeprom_buf, i16 noundef zeroext %bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @amdgpu_eeprom_xfer(ptr noundef %i2c_adap, i32 noundef %eeprom_addr, ptr noundef %eeprom_buf, i16 noundef zeroext %bytes, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_eeprom_xfer(ptr noundef %i2c_adap, i32 noundef %eeprom_addr, ptr noundef %eeprom_buf, i16 noundef zeroext %buf_size, i1 noundef zeroext %read) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks1 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 17
  %0 = ptrtoint ptr %quirks1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %quirks1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then7_crit_edge, label %if.else

entry.if.then7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

if.else:                                          ; preds = %entry
  %max_read_len = getelementptr inbounds %struct.i2c_adapter_quirks, ptr %1, i32 0, i32 3
  %max_write_len = getelementptr inbounds %struct.i2c_adapter_quirks, ptr %1, i32 0, i32 2
  %limit.0.in = select i1 %read, ptr %max_read_len, ptr %max_write_len
  %2 = ptrtoint ptr %limit.0.in to i32
  call void @__asan_load2_noabort(i32 %2)
  %limit.0 = load i16, ptr %limit.0.in, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %limit.0)
  %cmp = icmp eq i16 %limit.0, 0
  br i1 %cmp, label %if.else.if.then7_crit_edge, label %if.else9

if.else.if.then7_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

if.then7:                                         ; preds = %if.else.if.then7_crit_edge, %entry.if.then7_crit_edge
  %call = tail call fastcc i32 @__amdgpu_eeprom_xfer(ptr noundef %i2c_adap, i32 noundef %eeprom_addr, ptr noundef %eeprom_buf, i16 noundef zeroext %buf_size, i1 noundef zeroext %read)
  br label %cleanup53

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %limit.0)
  %cmp11 = icmp ult i16 %limit.0, 3
  br i1 %cmp11, label %do.body, label %if.else24

do.body:                                          ; preds = %if.else9
  %call14 = tail call i32 @___ratelimit(ptr noundef nonnull @amdgpu_eeprom_xfer._rs, ptr noundef nonnull @__func__.amdgpu_eeprom_xfer) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.body.cleanup53_crit_edge, label %do.end

do.body.cleanup53_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup53

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9
  %conv18 = zext i16 %buf_size to i32
  %cond = select i1 %read, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %eeprom_addr, i32 noundef %conv18, ptr noundef nonnull %cond, i32 noundef 2) #8
  br label %cleanup53

if.else24:                                        ; preds = %if.else9
  %sub = add i16 %limit.0, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %buf_size)
  %cmp28.not85 = icmp eq i16 %buf_size, 0
  br i1 %cmp28.not85, label %if.else24.cleanup53_crit_edge, label %if.else24.for.body_crit_edge

if.else24.for.body_crit_edge:                     ; preds = %if.else24
  br label %for.body

if.else24.cleanup53_crit_edge:                    ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup53

for.body:                                         ; preds = %if.end43.for.body_crit_edge, %if.else24.for.body_crit_edge
  %res.089 = phi i32 [ %add, %if.end43.for.body_crit_edge ], [ 0, %if.else24.for.body_crit_edge ]
  %eeprom_addr.addr.088 = phi i32 [ %add49, %if.end43.for.body_crit_edge ], [ %eeprom_addr, %if.else24.for.body_crit_edge ]
  %buf_size.addr.087 = phi i16 [ %sub46, %if.end43.for.body_crit_edge ], [ %buf_size, %if.else24.for.body_crit_edge ]
  %eeprom_buf.addr.086 = phi ptr [ %add.ptr, %if.end43.for.body_crit_edge ], [ %eeprom_buf, %if.else24.for.body_crit_edge ]
  %3 = tail call i16 @llvm.umin.i16(i16 %sub, i16 %buf_size.addr.087)
  %call39 = tail call fastcc i32 @__amdgpu_eeprom_xfer(ptr noundef %i2c_adap, i32 noundef %eeprom_addr.addr.088, ptr noundef %eeprom_buf.addr.086, i16 noundef zeroext %3, i1 noundef zeroext %read)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %for.body.cleanup53_crit_edge, label %if.end43

for.body.cleanup53_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup53

if.end43:                                         ; preds = %for.body
  %add = add i32 %call39, %res.089
  %conv44 = zext i16 %3 to i32
  %sub46 = sub i16 %buf_size.addr.087, %3
  %add49 = add i32 %eeprom_addr.addr.088, %conv44
  %add.ptr = getelementptr i8, ptr %eeprom_buf.addr.086, i32 %conv44
  %cmp28.not = icmp eq i16 %sub46, 0
  br i1 %cmp28.not, label %if.end43.cleanup53_crit_edge, label %if.end43.for.body_crit_edge

if.end43.for.body_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end43.cleanup53_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup53

cleanup53:                                        ; preds = %if.end43.cleanup53_crit_edge, %for.body.cleanup53_crit_edge, %if.else24.cleanup53_crit_edge, %do.end, %do.body.cleanup53_crit_edge, %if.then7
  %retval.1 = phi i32 [ %call, %if.then7 ], [ -22, %do.end ], [ -22, %do.body.cleanup53_crit_edge ], [ 0, %if.else24.cleanup53_crit_edge ], [ %add, %if.end43.cleanup53_crit_edge ], [ %call39, %for.body.cleanup53_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_eeprom_write(ptr noundef %i2c_adap, i32 noundef %eeprom_addr, ptr noundef %eeprom_buf, i16 noundef zeroext %bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @amdgpu_eeprom_xfer(ptr noundef %i2c_adap, i32 noundef %eeprom_addr, ptr noundef %eeprom_buf, i16 noundef zeroext %bytes, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__amdgpu_eeprom_xfer(ptr noundef %i2c_adap, i32 noundef %eeprom_addr, ptr noundef %eeprom_buf, i16 noundef zeroext %buf_size, i1 noundef zeroext %read) unnamed_addr #0 align 64 {
entry:
  %eeprom_offset_buf = alloca [2 x i8], align 1
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %eeprom_offset_buf) #5
  %0 = ptrtoint ptr %eeprom_offset_buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %eeprom_offset_buf, align 1, !annotation !21
  %1 = getelementptr inbounds [2 x i8], ptr %eeprom_offset_buf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #5
  %3 = getelementptr inbounds i8, ptr %msgs, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 20)
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %eeprom_offset_buf, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1
  %flags2 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %conv = zext i1 %read to i16
  %8 = ptrtoint ptr %flags2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %flags2, align 2
  %len3 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %buf4 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %buf_size)
  %cmp.not75 = icmp eq i16 %buf_size, 0
  br i1 %cmp.not75, label %entry.for.end.thread_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.thread

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %eeprom_addr.addr.078 = phi i32 [ %add, %for.inc.for.body_crit_edge ], [ %eeprom_addr, %entry.for.body_crit_edge ]
  %eeprom_buf.addr.077 = phi ptr [ %add.ptr, %for.inc.for.body_crit_edge ], [ %eeprom_buf, %entry.for.body_crit_edge ]
  %buf_size.addr.076 = phi i16 [ %sub46, %for.inc.for.body_crit_edge ], [ %buf_size, %entry.for.body_crit_edge ]
  %conv6 = zext i16 %buf_size.addr.076 to i32
  %shr = lshr i32 %eeprom_addr.addr.078, 16
  %9 = trunc i32 %shr to i16
  %10 = and i16 %9, 7
  %conv8 = or i16 %10, 80
  %11 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv8, ptr %msgs, align 4
  %12 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv8, ptr %arrayinit.element, align 4
  %shr14 = lshr i32 %eeprom_addr.addr.078, 8
  %conv16 = trunc i32 %shr14 to i8
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buf, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv16, ptr %14, align 1
  %conv21 = trunc i32 %eeprom_addr.addr.078 to i8
  %16 = load ptr, ptr %buf, align 4
  %arrayidx24 = getelementptr i8, ptr %16, i32 1
  %17 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv21, ptr %arrayidx24, align 1
  %and20 = and i32 %eeprom_addr.addr.078, 255
  %sub = sub nuw nsw i32 256, %and20
  %18 = call i32 @llvm.umin.i32(i32 %sub, i32 %conv6)
  %conv31 = trunc i32 %18 to i16
  %len5.0 = select i1 %read, i16 %buf_size.addr.076, i16 %conv31
  %19 = ptrtoint ptr %len3 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %len5.0, ptr %len3, align 4
  %20 = ptrtoint ptr %buf4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %eeprom_buf.addr.077, ptr %buf4, align 4
  %call = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msgs, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp37.not = icmp eq i32 %call, 2
  br i1 %cmp37.not, label %if.end40, label %for.end

if.end40:                                         ; preds = %for.body
  br i1 %read, label %if.end40.for.inc_crit_edge, label %if.then42

if.end40.for.inc_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  call void @msleep(i32 noundef 10) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then42, %if.end40.for.inc_crit_edge
  %conv44 = zext i16 %len5.0 to i32
  %sub46 = sub i16 %buf_size.addr.076, %len5.0
  %add = add i32 %eeprom_addr.addr.078, %conv44
  %add.ptr = getelementptr i8, ptr %eeprom_buf.addr.077, i32 %conv44
  %cmp.not = icmp eq i16 %sub46, 0
  br i1 %cmp.not, label %for.inc.for.end.thread_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.inc.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  %eeprom_buf.addr.0.lcssa.ph = phi ptr [ %eeprom_buf, %entry.for.end.thread_crit_edge ], [ %add.ptr, %for.inc.for.end.thread_crit_edge ]
  %sub.ptr.lhs.cast85 = ptrtoint ptr %eeprom_buf.addr.0.lcssa.ph to i32
  %sub.ptr.rhs.cast86 = ptrtoint ptr %eeprom_buf to i32
  %sub.ptr.sub87 = sub i32 %sub.ptr.lhs.cast85, %sub.ptr.rhs.cast86
  br label %21

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp50 = icmp slt i32 %call, 0
  %sub.ptr.lhs.cast = ptrtoint ptr %eeprom_buf.addr.077 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %eeprom_buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %spec.select = select i1 %cmp50, i32 %call, i32 %sub.ptr.sub
  br label %21

21:                                               ; preds = %for.end, %for.end.thread
  %22 = phi i32 [ %sub.ptr.sub87, %for.end.thread ], [ %spec.select, %for.end ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %eeprom_offset_buf) #5
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_eeprom.c", i32 196, i32 3}
!2 = !{ptr @amdgpu_eeprom_xfer._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.amdgpu_eeprom_xfer, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @amdgpu_eeprom_xfer._entry, !1, !"_entry", i1 false, i1 false}
!9 = !{ptr @amdgpu_eeprom_xfer._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"auto-init"}
