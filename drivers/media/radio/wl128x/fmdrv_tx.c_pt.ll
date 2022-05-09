; ModuleID = '/llk/IR_all_yes/drivers/media/radio/wl128x/fmdrv_tx.c_pt.bc'
source_filename = "../drivers/media/radio/wl128x/fmdrv_tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fmdev = type { ptr, %struct.v4l2_device, ptr, i16, %struct.spinlock, %struct.spinlock, i32, i32, %struct.sk_buff_head, %struct.tasklet_struct, %struct.sk_buff_head, %struct.tasklet_struct, i32, %struct.atomic_t, ptr, %struct.completion, i8, ptr, %struct.fm_irq, i8, %struct.fm_rx, %struct.fmtx_data, %struct.v4l2_ctrl_handler, %struct.mutex }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff_head = type { %union.anon.111, i32, %struct.spinlock }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.133, i32 }
%union.anon.133 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.fm_irq = type { i8, i16, i16, %struct.timer_list, i8, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.fm_rx = type { %struct.region_info, i32, i8, i8, i8, i16, i16, i8, i32, i8, i8, %struct.tuned_station_info, %struct.fm_rds }
%struct.region_info = type { i32, i32, i32, i8 }
%struct.tuned_station_info = type { i16, [25 x i32], i8, i8 }
%struct.fm_rds = type { i8, i8, %struct.wait_queue_head, i32, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fmtx_data = type { i8, i8, i8, i8, i16, i32, i32, %struct.tx_rds }
%struct.tx_rds = type { i8, [25 x i8], i8, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@__const.fm_tx_set_rds_mode.rds_text = private unnamed_addr constant [7 x i8] c"Zoom2\0A\00", align 1
@fm_tx_set_region._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013fmdrv: Invalid band\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fm_tx_set_region\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/radio/wl128x/fmdrv_tx.c\00", [58 x i8] zeroinitializer }, align 32
@fm_tx_set_region._entry_ptr = internal global ptr @fm_tx_set_region._entry, section ".printk_index", align 4
@enable_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013fmdrv: Timeout(%d sec),didn't get tune ended interrupt\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"enable_xmit\00", [20 x i8] zeroinitializer }, align 32
@enable_xmit._entry_ptr = internal global ptr @enable_xmit._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 192, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private constant [41 x i8] c"../drivers/media/radio/wl128x/fmdrv_tx.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 267, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 87, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @enable_xmit._entry, ptr @enable_xmit._entry_ptr, ptr @fm_tx_set_region._entry, ptr @fm_tx_set_region._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @init_completion.__key, ptr @.str.5], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_tx_set_region._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm_tx_set_stereo_mono(ptr noundef %fmdev, i16 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  %payload = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload) #6
  %aud_mode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 21, i32 4
  %0 = ptrtoint ptr %aud_mode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %aud_mode, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %mode)
  %cmp = icmp eq i16 %1, %mode
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  %sub = sub i16 1, %mode
  %2 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %sub, ptr %payload, align 2
  %call = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 66, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %aud_mode to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %mode, ptr %aud_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end8 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fmc_send_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm_tx_set_rds_mode(ptr noundef %fmdev, i8 noundef zeroext %rds_en_dis) local_unnamed_addr #0 align 64 {
entry:
  %payload.i49 = alloca i16, align 2
  %payload.i47 = alloca i16, align 2
  %payload.i42 = alloca i16, align 2
  %payload.i40 = alloca i16, align 2
  %payload.i = alloca i16, align 2
  %payload = alloca i16, align 2
  %rds_text = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload) #6
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %rds_text) #6
  %0 = call ptr @memcpy(ptr %rds_text, ptr @__const.fm_tx_set_rds_mode.rds_text, i32 7)
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rds_en_dis)
  %cmp = icmp eq i8 %rds_en_dis, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @strlen(ptr noundef nonnull %rds_text) #9
  %conv2 = trunc i32 %call to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload.i) #6
  %1 = ptrtoint ptr %payload.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv2, ptr %payload.i, align 2
  %call.i = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 98, i16 noundef zeroext 0, ptr noundef nonnull %payload.i, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload.i40) #6
  %call.i41 = call i32 @strlen(ptr noundef nonnull %rds_text) #10
  %call1.i = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 99, i16 noundef zeroext 0, ptr noundef nonnull %rds_text, i32 noundef %call.i41, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then.set_rds_text.exit_crit_edge, label %if.end.i

if.then.set_rds_text.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_rds_text.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %payload.i40 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1, ptr %payload.i40, align 2
  %call2.i = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 74, i16 noundef zeroext 0, ptr noundef nonnull %payload.i40, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  br label %set_rds_text.exit

set_rds_text.exit:                                ; preds = %if.end.i, %if.then.set_rds_text.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i40) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload.i42) #6
  %3 = ptrtoint ptr %payload.i42 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -13570, ptr %payload.i42, align 2
  %call.i43 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 93, i16 noundef zeroext 0, ptr noundef nonnull %payload.i42, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %cmp.i44 = icmp slt i32 %call.i43, 0
  br i1 %cmp.i44, label %set_rds_text.exit.set_rds_data_mode.exit_crit_edge, label %if.end.i46

set_rds_text.exit.set_rds_data_mode.exit_crit_edge: ; preds = %set_rds_text.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_rds_data_mode.exit

if.end.i46:                                       ; preds = %set_rds_text.exit
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %payload.i42 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 10, ptr %payload.i42, align 2
  %call1.i45 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 80, i16 noundef zeroext 0, ptr noundef nonnull %payload.i42, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  br label %set_rds_data_mode.exit

set_rds_data_mode.exit:                           ; preds = %if.end.i46, %set_rds_text.exit.set_rds_data_mode.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i42) #6
  br label %if.end

if.end:                                           ; preds = %set_rds_data_mode.exit, %entry.if.end_crit_edge
  %. = zext i1 %cmp to i16
  %5 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %., ptr %payload, align 2
  %call12 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 94, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end
  br i1 %cmp, label %if.then20, label %if.end16.if.end27_crit_edge

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then20:                                        ; preds = %if.end16
  %call22 = call i32 @strlen(ptr noundef nonnull %rds_text) #9
  %conv23 = trunc i32 %call22 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload.i47) #6
  %6 = ptrtoint ptr %payload.i47 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv23, ptr %payload.i47, align 2
  %call.i48 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 98, i16 noundef zeroext 0, ptr noundef nonnull %payload.i47, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i47) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload.i49) #6
  %call.i50 = call i32 @strlen(ptr noundef nonnull %rds_text) #10
  %call1.i51 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 99, i16 noundef zeroext 0, ptr noundef nonnull %rds_text, i32 noundef %call.i50, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i51)
  %cmp.i52 = icmp slt i32 %call1.i51, 0
  br i1 %cmp.i52, label %if.then20.set_rds_text.exit55_crit_edge, label %if.end.i54

if.then20.set_rds_text.exit55_crit_edge:          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_rds_text.exit55

if.end.i54:                                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %payload.i49 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %payload.i49, align 2
  %call2.i53 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 74, i16 noundef zeroext 0, ptr noundef nonnull %payload.i49, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  br label %set_rds_text.exit55

set_rds_text.exit55:                              ; preds = %if.end.i54, %if.then20.set_rds_text.exit55_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i49) #6
  br label %if.end27

if.end27:                                         ; preds = %set_rds_text.exit55, %if.end16.if.end27_crit_edge
  %flag = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 21, i32 7, i32 2
  %8 = ptrtoint ptr %flag to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %rds_en_dis, ptr %flag, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end27 ], [ %call12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %rds_text) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm_tx_set_radio_text(ptr noundef %fmdev, ptr noundef %rds_text, i8 noundef zeroext %rds_type) local_unnamed_addr #0 align 64 {
entry:
  %payload.i23 = alloca i16, align 2
  %payload.i21 = alloca i16, align 2
  %payload.i20 = alloca i16, align 2
  %payload.i = alloca i16, align 2
  %payload = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload) #6
  %curr_fmmode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 19
  %0 = ptrtoint ptr %curr_fmmode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %curr_fmmode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload.i) #6
  %2 = ptrtoint ptr %payload.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %payload.i, align 2
  %call12.i = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 94, i16 noundef zeroext 0, ptr noundef nonnull %payload.i, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end.fm_tx_set_rds_mode.exit_crit_edge, label %if.end16.i

if.end.fm_tx_set_rds_mode.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %fm_tx_set_rds_mode.exit

if.end16.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %flag.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 21, i32 7, i32 2
  %3 = ptrtoint ptr %flag.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %flag.i, align 2
  br label %fm_tx_set_rds_mode.exit

fm_tx_set_rds_mode.exit:                          ; preds = %if.end16.i, %if.end.fm_tx_set_rds_mode.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i) #6
  %call2 = call i32 @strlen(ptr noundef %rds_text) #9
  %conv3 = trunc i32 %call2 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload.i20) #6
  %conv.i = zext i8 %rds_type to i16
  %shl.i = shl nuw i16 %conv.i, 8
  %or.i = or i16 %shl.i, %conv3
  %4 = ptrtoint ptr %payload.i20 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %or.i, ptr %payload.i20, align 2
  %call.i = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 98, i16 noundef zeroext 0, ptr noundef nonnull %payload.i20, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i20) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload.i21) #6
  %call.i22 = call i32 @strlen(ptr noundef %rds_text) #10
  %call1.i = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 99, i16 noundef zeroext 0, ptr noundef %rds_text, i32 noundef %call.i22, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %fm_tx_set_rds_mode.exit.set_rds_text.exit_crit_edge, label %if.end.i

fm_tx_set_rds_mode.exit.set_rds_text.exit_crit_edge: ; preds = %fm_tx_set_rds_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_rds_text.exit

if.end.i:                                         ; preds = %fm_tx_set_rds_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %payload.i21 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %payload.i21, align 2
  %call2.i = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 74, i16 noundef zeroext 0, ptr noundef nonnull %payload.i21, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  br label %set_rds_text.exit

set_rds_text.exit:                                ; preds = %if.end.i, %fm_tx_set_rds_mode.exit.set_rds_text.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i21) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload.i23) #6
  %6 = ptrtoint ptr %payload.i23 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -13570, ptr %payload.i23, align 2
  %call.i24 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 93, i16 noundef zeroext 0, ptr noundef nonnull %payload.i23, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %cmp.i25 = icmp slt i32 %call.i24, 0
  br i1 %cmp.i25, label %set_rds_text.exit.set_rds_data_mode.exit_crit_edge, label %if.end.i27

set_rds_text.exit.set_rds_data_mode.exit_crit_edge: ; preds = %set_rds_text.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_rds_data_mode.exit

if.end.i27:                                       ; preds = %set_rds_text.exit
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %payload.i23 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 10, ptr %payload.i23, align 2
  %call1.i26 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 80, i16 noundef zeroext 0, ptr noundef nonnull %payload.i23, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  br label %set_rds_data_mode.exit

set_rds_data_mode.exit:                           ; preds = %if.end.i27, %set_rds_text.exit.set_rds_data_mode.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i23) #6
  %8 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %payload, align 2
  %call7 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 94, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  %9 = call i32 @llvm.smin.i32(i32 %call7, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %set_rds_data_mode.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %9, %set_rds_data_mode.exit ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm_tx_set_af(ptr noundef %fmdev, i32 noundef %af) local_unnamed_addr #0 align 64 {
entry:
  %payload = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload) #6
  %curr_fmmode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 19
  %0 = ptrtoint ptr %curr_fmmode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %curr_fmmode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  br i1 %cmp.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i32 %af, -87500
  %div = udiv i32 %sub, 100
  %conv2 = trunc i32 %div to i16
  %2 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv2, ptr %payload, align 2
  %call = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 78, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  %3 = call i32 @llvm.smin.i32(i32 %call, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %3, %do.end ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm_tx_set_region(ptr noundef %fmdev, i8 noundef zeroext %region) local_unnamed_addr #0 align 64 {
entry:
  %payload = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %region)
  %switch = icmp ult i8 %region, 2
  br i1 %switch, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv5 = zext i8 %region to i16
  %0 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv5, ptr %payload, align 2
  %call6 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 65, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  %1 = call i32 @llvm.smin.i32(i32 %call6, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %1, %if.end ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm_tx_set_mute_mode(ptr noundef %fmdev, i8 noundef zeroext %mute_mode_toset) local_unnamed_addr #0 align 64 {
entry:
  %payload = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload) #6
  %conv = zext i8 %mute_mode_toset to i16
  %0 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %payload, align 2
  %call = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 92, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  %1 = call i32 @llvm.smin.i32(i32 %call, i32 0)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload) #6
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm_tx_set_pwr_lvl(ptr noundef %fmdev, i8 noundef zeroext %new_pwr_lvl) local_unnamed_addr #0 align 64 {
entry:
  %payload = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload) #6
  %tx_data = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 21
  %curr_fmmode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 19
  %0 = ptrtoint ptr %curr_fmmode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %curr_fmmode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  br i1 %cmp.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  %flag = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 6
  %2 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flag, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.end.cleanup.sink.split_crit_edge, label %if.end3

do.end.cleanup.sink.split_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end3:                                          ; preds = %do.end
  %conv4 = zext i8 %new_pwr_lvl to i16
  %sub = sub nsw i16 122, %conv4
  %5 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %sub, ptr %payload, align 2
  %call6 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 59, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end3.cleanup_crit_edge, label %if.end3.cleanup.sink.split_crit_edge

if.end3.cleanup.sink.split_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end3.cleanup.sink.split_crit_edge, %do.end.cleanup.sink.split_crit_edge
  %6 = ptrtoint ptr %tx_data to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %new_pwr_lvl, ptr %tx_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %call6, %if.end3.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm_tx_set_preemph_filter(ptr noundef %fmdev, i32 noundef %preemphasis) local_unnamed_addr #0 align 64 {
entry:
  %payload = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload) #6
  %0 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %payload, align 2, !annotation !23
  %curr_fmmode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 19
  %1 = ptrtoint ptr %curr_fmmode to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %curr_fmmode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp.not = icmp eq i8 %2, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = zext i32 %preemphasis to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %preemphasis, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %payload, align 2
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %payload, align 2
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 2, ptr %payload, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb, %if.end.sw.epilog_crit_edge
  %call = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 64, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %sw.epilog.cleanup_crit_edge, label %if.end7

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %payload to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %payload, align 2
  %conv8 = zext i16 %8 to i32
  %preemph = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 21, i32 5
  %9 = ptrtoint ptr %preemph to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv8, ptr %preemph, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end7 ], [ -1, %entry.cleanup_crit_edge ], [ %call, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm_tx_get_tune_cap_val(ptr noundef %fmdev) local_unnamed_addr #0 align 64 {
entry:
  %curr_val = alloca i16, align 2
  %resp_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %curr_val) #6
  %0 = ptrtoint ptr %curr_val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %curr_val, align 2, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len) #6
  %1 = ptrtoint ptr %resp_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %resp_len, align 4, !annotation !23
  %curr_fmmode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 19
  %2 = ptrtoint ptr %curr_fmmode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %curr_fmmode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not = icmp eq i8 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 104, i16 noundef zeroext 1, ptr noundef null, i32 noundef 2, ptr noundef nonnull %curr_val, ptr noundef nonnull %resp_len) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %curr_val to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %curr_val, align 2
  %conv6 = zext i16 %5 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv6, %if.end5 ], [ -1, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %curr_val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm_tx_set_freq(ptr noundef %fmdev, i32 noundef %freq_to_set) local_unnamed_addr #0 align 64 {
entry:
  %payload.i41 = alloca i16, align 2
  %payload.i37 = alloca i16, align 2
  %payload.i = alloca i16, align 2
  %payload = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_data = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload) #6
  %flag = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 6
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flag, align 4
  %2 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @enable_xmit(ptr noundef %fmdev, i8 noundef zeroext 0)
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flag) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 3, ptr %payload, align 2
  %call3 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 26, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tx_frq = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 21, i32 6
  %4 = ptrtoint ptr %tx_frq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %freq_to_set, ptr %tx_frq, align 4
  %div = udiv i32 %freq_to_set, 10
  %conv = trunc i32 %div to i16
  %5 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %payload, align 2
  %call6 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 55, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %6 = ptrtoint ptr %tx_data to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx_data, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload.i) #6
  %curr_fmmode.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 19
  %8 = ptrtoint ptr %curr_fmmode.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %curr_fmmode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp.not.i = icmp eq i8 %9, 1
  br i1 %cmp.not.i, label %do.end.i, label %fm_tx_set_pwr_lvl.exit.thread

fm_tx_set_pwr_lvl.exit.thread:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload.i37) #6
  br label %fm_tx_set_preemph_filter.exit

do.end.i:                                         ; preds = %if.end10
  %10 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flag, align 4
  %12 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %do.end.i.cleanup.sink.split.i_crit_edge, label %if.end3.i

do.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end3.i:                                        ; preds = %do.end.i
  %conv4.i = zext i8 %7 to i16
  %sub.i = sub nsw i16 122, %conv4.i
  %13 = ptrtoint ptr %payload.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %sub.i, ptr %payload.i, align 2
  %call6.i = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 59, i16 noundef zeroext 0, ptr noundef nonnull %payload.i, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end3.i.fm_tx_set_pwr_lvl.exit_crit_edge, label %if.end3.i.cleanup.sink.split.i_crit_edge

if.end3.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end3.i.fm_tx_set_pwr_lvl.exit_crit_edge:       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fm_tx_set_pwr_lvl.exit

cleanup.sink.split.i:                             ; preds = %if.end3.i.cleanup.sink.split.i_crit_edge, %do.end.i.cleanup.sink.split.i_crit_edge
  %14 = ptrtoint ptr %tx_data to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %7, ptr %tx_data, align 4
  br label %fm_tx_set_pwr_lvl.exit

fm_tx_set_pwr_lvl.exit:                           ; preds = %cleanup.sink.split.i, %if.end3.i.fm_tx_set_pwr_lvl.exit_crit_edge
  %15 = ptrtoint ptr %curr_fmmode.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %.pr = load i8, ptr %curr_fmmode.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i) #6
  %preemph = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 21, i32 5
  %16 = ptrtoint ptr %preemph to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %preemph, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload.i37) #6
  %18 = ptrtoint ptr %payload.i37 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -1, ptr %payload.i37, align 2, !annotation !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.pr)
  %cmp.not.i39 = icmp eq i8 %.pr, 1
  br i1 %cmp.not.i39, label %if.end.i, label %fm_tx_set_pwr_lvl.exit.fm_tx_set_preemph_filter.exit_crit_edge

fm_tx_set_pwr_lvl.exit.fm_tx_set_preemph_filter.exit_crit_edge: ; preds = %fm_tx_set_pwr_lvl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %fm_tx_set_preemph_filter.exit

if.end.i:                                         ; preds = %fm_tx_set_pwr_lvl.exit
  %19 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %17, label %if.end.i.sw.epilog.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb3.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %payload.i37 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %payload.i37, align 2
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %payload.i37 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %payload.i37, align 2
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %payload.i37 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 2, ptr %payload.i37, align 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb.i, %if.end.i.sw.epilog.i_crit_edge
  %call.i = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 64, i16 noundef zeroext 0, ptr noundef nonnull %payload.i37, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.i = icmp slt i32 %call.i, 0
  br i1 %cmp4.i, label %sw.epilog.i.fm_tx_set_preemph_filter.exit_crit_edge, label %if.end7.i

sw.epilog.i.fm_tx_set_preemph_filter.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fm_tx_set_preemph_filter.exit

if.end7.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %payload.i37 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %payload.i37, align 2
  %conv8.i = zext i16 %24 to i32
  %25 = ptrtoint ptr %preemph to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv8.i, ptr %preemph, align 4
  br label %fm_tx_set_preemph_filter.exit

fm_tx_set_preemph_filter.exit:                    ; preds = %if.end7.i, %sw.epilog.i.fm_tx_set_preemph_filter.exit_crit_edge, %fm_tx_set_pwr_lvl.exit.fm_tx_set_preemph_filter.exit_crit_edge, %fm_tx_set_pwr_lvl.exit.thread
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i37) #6
  %audio_io = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 21, i32 2
  %26 = ptrtoint ptr %audio_io to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %audio_io, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload.i41) #6
  %27 = ptrtoint ptr %payload.i41 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %payload.i41, align 2
  %call.i42 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 63, i16 noundef zeroext 0, ptr noundef nonnull %payload.i41, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i41) #6
  call fastcc void @enable_xmit(ptr noundef %fmdev, i8 noundef zeroext 1)
  %aud_mode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 21, i32 4
  %28 = ptrtoint ptr %aud_mode to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %aud_mode, align 4
  %flag15 = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 21, i32 7, i32 2
  %29 = ptrtoint ptr %flag15 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %flag15, align 2
  br label %cleanup

cleanup:                                          ; preds = %fm_tx_set_preemph_filter.exit, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %fm_tx_set_preemph_filter.exit ], [ %call3, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enable_xmit(ptr noundef %fmdev, i8 noundef zeroext %new_xmit_state) unnamed_addr #0 align 64 {
entry:
  %payload = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload) #6
  %0 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 2048, ptr %payload, align 2
  %call = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 26, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %new_xmit_state to i16
  %1 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv, ptr %payload, align 2
  %call1 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 90, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %maintask_comp = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 15
  %2 = ptrtoint ptr %maintask_comp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %maintask_comp, align 4
  %wait.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 15, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @init_completion.__key) #6
  %call7 = call i32 @wait_for_completion_timeout(ptr noundef %maintask_comp, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = call i32 @jiffies_to_msecs(i32 noundef 500) #6
  %div = udiv i32 %call9, 1000
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %div) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %flag = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 6
  call void @_set_bit(i32 noundef 6, ptr noundef %flag) #6
  %xmit_state = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 21, i32 1
  %3 = ptrtoint ptr %xmit_state to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %new_xmit_state, ptr %xmit_state, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/radio/wl128x/fmdrv_tx.c", i32 192, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @fm_tx_set_region._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @fm_tx_set_region._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/radio/wl128x/fmdrv_tx.c", i32 267, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @enable_xmit._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @enable_xmit._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @init_completion.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../include/linux/completion.h", i32 87, i32 2}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"auto-init"}
