; ModuleID = '/llk/IR_all_yes/drivers/media/platform/sti/delta/delta-mjpeg-hdr.c_pt.bc'
source_filename = "../drivers/media/platform/sti/delta/delta-mjpeg-hdr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.delta_ctx = type { i32, %struct.v4l2_fh, ptr, ptr, %struct.delta_ipc_ctx, i32, i32, i32, i32, %struct.delta_streaminfo, %struct.delta_frameinfo, i32, [21 x ptr], i32, i32, i32, i32, i32, i32, %struct.list_head, [100 x i8], %struct.work_struct, %struct.mutex, i8, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delta_ipc_ctx = type { i32, i32, %struct.completion, %struct.delta_buf, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delta_buf = type { i32, ptr, i32, ptr, i32 }
%struct.delta_streaminfo = type { i32, i32, i32, i32, i32, %struct.v4l2_rect, %struct.v4l2_fract, i32, [32 x i8], [32 x i8], [32 x i8], i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.delta_frameinfo = type { i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_rect, %struct.v4l2_fract, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delta_dev = type { %struct.v4l2_device, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, [10 x ptr], i32, [10 x i32], i32, [10 x i32], i32, i8, ptr, %struct.rpmsg_driver, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rpmsg_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mjpeg_header = type { i32, i32, i32, i32, i32, [5 x %struct.mjpeg_component] }
%struct.mjpeg_component = type { i32, i32, i32, i32 }

@delta_mjpeg_read_header._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 112, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s   wrong sequence, got SOF while SOI not seen\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"delta_mjpeg_read_header\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/media/platform/sti/delta/delta-mjpeg-hdr.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@delta_mjpeg_read_header._entry_ptr = internal global ptr @delta_mjpeg_read_header._entry, section ".printk_index", align 4
@delta_mjpeg_read_header.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"st_delta\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s   found header @ offset %d:\0A%s\00", [62 x i8] zeroinitializer }, align 32
@delta_mjpeg_read_header._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 144, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s   no header found within %d bytes input stream\0A\00", [45 x i8] zeroinitializer }, align 32
@delta_mjpeg_read_header._entry_ptr.9 = internal global ptr @delta_mjpeg_read_header._entry.7, section ".printk_index", align 4
@delta_mjpeg_read_sof._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 66, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s   unsupported number of components (%d > %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"delta_mjpeg_read_sof\00", [43 x i8] zeroinitializer }, align 32
@delta_mjpeg_read_sof._entry_ptr = internal global ptr @delta_mjpeg_read_sof._entry, section ".printk_index", align 4
@delta_mjpeg_read_sof._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 79, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s   sof: reached end of %d size input stream\0A\00", [49 x i8] zeroinitializer }, align 32
@delta_mjpeg_read_sof._entry_ptr.14 = internal global ptr @delta_mjpeg_read_sof._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"[MJPEG header]\0A|- length     = %d\0A|- precision  = %d\0A|- width      = %d\0A|- height     = %d\0A|- components = %d\0A\00", [49 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 192, i64 193, i64 216]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 110, i32 6 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 135, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 142, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 63, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 77, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 23, i32 10 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [54 x i8] c"../drivers/media/platform/sti/delta/delta-mjpeg-hdr.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 25, i32 22 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @delta_mjpeg_read_header._entry, ptr @delta_mjpeg_read_header._entry.7, ptr @delta_mjpeg_read_header._entry_ptr, ptr @delta_mjpeg_read_header._entry_ptr.9, ptr @delta_mjpeg_read_sof._entry, ptr @delta_mjpeg_read_sof._entry.12, ptr @delta_mjpeg_read_sof._entry_ptr, ptr @delta_mjpeg_read_sof._entry_ptr.14, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_mjpeg_read_header._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_mjpeg_read_header._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_mjpeg_read_sof._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_mjpeg_read_sof._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @delta_mjpeg_read_header(ptr noundef %pctx, ptr nocapture noundef readonly %data, i32 noundef %size, ptr noundef %header, ptr nocapture noundef %data_offset) local_unnamed_addr #0 align 64 {
entry:
  %str = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %str) #6
  %2 = call ptr @memset(ptr %str, i32 255, i32 200)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %size)
  %cmp = icmp ult i32 %size, 2
  br i1 %cmp, label %entry.do.end38_crit_edge, label %while.cond.preheader

entry.do.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end38

while.cond.preheader:                             ; preds = %entry
  %umax = call i32 @llvm.umax.i32(i32 %size, i32 3)
  %3 = add i32 %umax, -3
  br label %while.cond

while.cond:                                       ; preds = %if.end16.while.cond_crit_edge, %while.cond.preheader
  %offset.0 = phi i32 [ %add, %if.end16.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  %soi.0 = phi i32 [ %soi.1, %if.end16.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  %arrayidx = getelementptr i8, ptr %data, i32 %offset.0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp1 = icmp eq i8 %5, -1
  %add = add nuw i32 %offset.0, 1
  br i1 %cmp1, label %if.then3, label %while.cond.if.end16_crit_edge

while.cond.if.end16_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then3:                                         ; preds = %while.cond
  %arrayidx4 = getelementptr i8, ptr %data, i32 %add
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %if.then3.if.end16_crit_edge [
    i8 -40, label %sw.bb
    i8 -64, label %if.then3.sw.bb6_crit_edge
    i8 -63, label %if.then3.sw.bb6_crit_edge88
  ]

if.then3.sw.bb6_crit_edge88:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

if.then3.sw.bb6_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

if.then3.if.end16_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

sw.bb:                                            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %data_offset to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %offset.0, ptr %data_offset, align 4
  br label %if.end16

sw.bb6:                                           ; preds = %if.then3.sw.bb6_crit_edge, %if.then3.sw.bb6_crit_edge88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %soi.0)
  %tobool.not = icmp eq i32 %soi.0, 0
  br i1 %tobool.not, label %do.end, label %if.end9

do.end:                                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  %dev8 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev8, align 4
  %name = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str, ptr noundef %name) #9
  br label %cleanup

if.end9:                                          ; preds = %sw.bb6
  %add10 = add i32 %offset.0, 2
  %sub = sub i32 %size, %add10
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub)
  %cmp.i = icmp ult i32 %sub, 64
  br i1 %cmp.i, label %if.end9.do.end28.i_crit_edge, label %if.end.i

if.end9.do.end28.i_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28.i

if.end.i:                                         ; preds = %if.end9
  %arrayidx11 = getelementptr i8, ptr %data, i32 %add10
  %14 = call ptr @memset(ptr %header, i32 0, i32 100)
  %15 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx11, align 2
  %conv.i = zext i16 %16 to i32
  %17 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv.i, ptr %header, align 4
  %add.ptr1.i = getelementptr i8, ptr %arrayidx11, i32 2
  %18 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr1.i, align 1
  %conv2.i = zext i8 %19 to i32
  %sample_precision.i = getelementptr inbounds %struct.mjpeg_header, ptr %header, i32 0, i32 1
  %20 = ptrtoint ptr %sample_precision.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv2.i, ptr %sample_precision.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %arrayidx11, i32 3
  %21 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr4.i, align 2
  %conv5.i = zext i16 %22 to i32
  %frame_height.i = getelementptr inbounds %struct.mjpeg_header, ptr %header, i32 0, i32 3
  %23 = ptrtoint ptr %frame_height.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv5.i, ptr %frame_height.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %arrayidx11, i32 5
  %24 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr7.i, align 2
  %conv8.i = zext i16 %25 to i32
  %frame_width.i = getelementptr inbounds %struct.mjpeg_header, ptr %header, i32 0, i32 2
  %26 = ptrtoint ptr %frame_width.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv8.i, ptr %frame_width.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %arrayidx11, i32 7
  %27 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %add.ptr10.i, align 1
  %conv11.i = zext i8 %28 to i32
  %nb_of_components.i = getelementptr inbounds %struct.mjpeg_header, ptr %header, i32 0, i32 4
  %29 = ptrtoint ptr %nb_of_components.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv11.i, ptr %nb_of_components.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %28)
  %cmp14.i = icmp ugt i8 %28, 4
  br i1 %cmp14.i, label %do.end.i, label %if.end19.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev17.i = getelementptr inbounds %struct.delta_dev, ptr %13, i32 0, i32 3
  %30 = ptrtoint ptr %dev17.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev17.i, align 4
  %name.i = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef %conv11.i, i32 noundef 5) #9
  br label %cleanup

if.end19.i:                                       ; preds = %if.end.i
  %mul.i = shl nuw nsw i32 %conv11.i, 4
  %add21.i = or i32 %mul.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add21.i, i32 %sub)
  %cmp22.i = icmp ugt i32 %add21.i, %sub
  br i1 %cmp22.i, label %if.end19.i.do.end28.i_crit_edge, label %do.body22

if.end19.i.do.end28.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28.i

do.end28.i:                                       ; preds = %if.end19.i.do.end28.i_crit_edge, %if.end9.do.end28.i_crit_edge
  %dev29.i = getelementptr inbounds %struct.delta_dev, ptr %13, i32 0, i32 3
  %32 = ptrtoint ptr %dev29.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev29.i, align 4
  %name30.i = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.13, ptr noundef %name30.i, i32 noundef %sub) #9
  br label %cleanup

if.end16:                                         ; preds = %sw.bb, %if.then3.if.end16_crit_edge, %while.cond.if.end16_crit_edge
  %soi.1 = phi i32 [ 1, %sw.bb ], [ %soi.0, %if.then3.if.end16_crit_edge ], [ %soi.0, %while.cond.if.end16_crit_edge ]
  %exitcond.not = icmp eq i32 %offset.0, %3
  br i1 %exitcond.not, label %if.end16.do.end38_crit_edge, label %if.end16.while.cond_crit_edge

if.end16.while.cond_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

if.end16.do.end38_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end38

do.body22:                                        ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_mjpeg_read_header.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_mjpeg_read_header, %if.then27)) #6
          to label %cleanup [label %if.then27], !srcloc !38

if.then27:                                        ; preds = %do.body22
  %dev28 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev28, align 4
  %name29 = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 20
  %36 = ptrtoint ptr %data_offset to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data_offset, align 4
  %tobool.not.i = icmp eq ptr %header, null
  br i1 %tobool.not.i, label %if.then27.header_str.exit_crit_edge, label %if.end.i71

if.then27.header_str.exit_crit_edge:              ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %header_str.exit

if.end.i71:                                       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %header, align 4
  %40 = ptrtoint ptr %sample_precision.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sample_precision.i, align 4
  %42 = ptrtoint ptr %frame_width.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %frame_width.i, align 4
  %44 = ptrtoint ptr %frame_height.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %frame_height.i, align 4
  %46 = ptrtoint ptr %nb_of_components.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nb_of_components.i, align 4
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str, i32 noundef 200, ptr noundef nonnull @.str.16, i32 noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %47) #6
  br label %header_str.exit

header_str.exit:                                  ; preds = %if.end.i71, %if.then27.header_str.exit_crit_edge
  %retval.0.i72 = phi ptr [ %str, %if.end.i71 ], [ @.str.15, %if.then27.header_str.exit_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_mjpeg_read_header.__UNIQUE_ID_ddebug298, ptr noundef %35, ptr noundef nonnull @.str.6, ptr noundef %name29, i32 noundef %37, ptr noundef nonnull %retval.0.i72) #6
  br label %cleanup

do.end38:                                         ; preds = %if.end16.do.end38_crit_edge, %entry.do.end38_crit_edge
  %dev39 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %48 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev39, align 4
  %name40 = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.8, ptr noundef %name40, i32 noundef %size) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %header_str.exit, %do.body22, %do.end28.i, %do.end.i, %do.end
  %retval.0 = phi i32 [ -61, %do.end38 ], [ -22, %do.end ], [ 0, %header_str.exit ], [ 0, %do.body22 ], [ -22, %do.end.i ], [ -61, %do.end28.i ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %str) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-hdr.c", i32 110, i32 6}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @delta_mjpeg_read_header._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @delta_mjpeg_read_header._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-hdr.c", i32 135, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @delta_mjpeg_read_header.__UNIQUE_ID_ddebug298, !9, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-hdr.c", i32 142, i32 2}
!14 = !{ptr @delta_mjpeg_read_header._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @delta_mjpeg_read_header._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-hdr.c", i32 63, i32 3}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @delta_mjpeg_read_sof._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @delta_mjpeg_read_sof._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-hdr.c", i32 77, i32 2}
!23 = !{ptr @delta_mjpeg_read_sof._entry.12, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @delta_mjpeg_read_sof._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-hdr.c", i32 23, i32 10}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-hdr.c", i32 25, i32 22}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 2148304934, i64 2148304939, i64 2148304952, i64 2148304996, i64 2148305030, i64 2148305051}
