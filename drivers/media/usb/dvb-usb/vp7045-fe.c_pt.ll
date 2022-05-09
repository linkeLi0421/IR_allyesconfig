; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb/vp7045-fe.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb/vp7045-fe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.vp7045_fe_state = type { %struct.dvb_frontend, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }

@vp7045_fe_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Twinhan VP7045/46 USB DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 44250000, i32 867250000, i32 1000, i32 0, i32 0, i32 0, i32 0, i32 1075523247 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @vp7045_fe_release, ptr null, ptr @vp7045_fe_init, ptr @vp7045_fe_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vp7045_fe_set_frontend, ptr @vp7045_fe_get_tune_settings, ptr null, ptr @vp7045_fe_read_status, ptr @vp7045_fe_read_ber, ptr @vp7045_fe_read_signal_strength, ptr @vp7045_fe_read_snr, ptr @vp7045_fe_read_unc_blocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@___asan_gen_.1 = private unnamed_addr constant [14 x i8] c"vp7045_fe_ops\00", align 1
@___asan_gen_.2 = private constant [41 x i8] c"../drivers/media/usb/dvb-usb/vp7045-fe.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 157, i32 38 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @vp7045_fe_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp7045_fe_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vp7045_fe_attach(ptr noundef %d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1044) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %d1 = getelementptr inbounds %struct.vp7045_fe_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %d1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %d, ptr %d1, align 8
  %ops = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %ops, ptr @vp7045_fe_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vp7045_fe_release(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vp7045_fe_init(ptr nocapture noundef readnone %fe) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vp7045_fe_sleep(ptr nocapture noundef readnone %fe) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp7045_fe_set_frontend(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf) #6
  %2 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds i8, ptr %buf, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1
  %8 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dtv_property_cache, align 4
  %div = udiv i32 %9, 1000
  %shr = lshr i32 %div, 16
  %conv = trunc i32 %shr to i8
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %buf, align 1
  %shr1 = lshr i32 %div, 8
  %conv3 = trunc i32 %shr1 to i8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv3, ptr %2, align 1
  %conv6 = trunc i32 %div to i8
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv6, ptr %3, align 1
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %4, align 1
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %14 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bandwidth_hz, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %entry.cleanup_crit_edge [
    i32 8000000, label %entry.sw.epilog_crit_edge
    i32 7000000, label %sw.bb10
    i32 6000000, label %sw.bb12
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb10, %entry.sw.epilog_crit_edge
  %.sink = phi i8 [ 6, %sw.bb12 ], [ 7, %sw.bb10 ], [ 8, %entry.sw.epilog_crit_edge ]
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.sink, ptr %5, align 1
  %d = getelementptr inbounds %struct.vp7045_fe_state, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d, align 4
  %call = call i32 @vp7045_usb_op(ptr noundef %19, i8 noundef zeroext 9, ptr noundef nonnull %buf, i32 noundef 5, ptr noundef null, i32 noundef 0, i32 noundef 200) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @vp7045_fe_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %tune) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tune to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 800, ptr %tune, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp7045_fe_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %d = getelementptr inbounds %struct.vp7045_fe_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d, align 4
  %call = tail call zeroext i8 @vp7045_read_reg(ptr noundef %3, i8 noundef zeroext 0) #6
  %4 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d, align 4
  %call2 = tail call zeroext i8 @vp7045_read_reg(ptr noundef %5, i8 noundef zeroext 1) #6
  %6 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d, align 4
  %call4 = tail call zeroext i8 @vp7045_read_reg(ptr noundef %7, i8 noundef zeroext 3) #6
  %conv = zext i8 %call to i32
  %and = lshr i32 %conv, 3
  %8 = and i32 %and, 2
  %and6 = shl nuw nsw i32 %conv, 1
  %9 = and i32 %and6, 4
  %10 = or i32 %9, %8
  %11 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %status, align 4
  %and12 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %entry.if.end16_crit_edge, label %if.then14

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 4
  %or15 = or i32 %13, 16
  store i32 %or15, ptr %status, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %entry.if.end16_crit_edge
  %14 = and i8 %call2, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool19.not = icmp eq i8 %14, 0
  br i1 %tobool19.not, label %if.end16.if.end22_crit_edge, label %if.then20

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status, align 4
  %or21 = or i32 %16, 8
  store i32 %or21, ptr %status, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end16.if.end22_crit_edge
  %17 = and i8 %call4, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool25.not = icmp eq i8 %17, 0
  br i1 %tobool25.not, label %if.end22.if.end28_crit_edge, label %if.then26

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status, align 4
  %or27 = or i32 %19, 1
  store i32 %or27, ptr %status, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end22.if.end28_crit_edge
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status, align 4
  %and29 = and i32 %21, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %and29)
  %cmp.not = icmp eq i32 %and29, 14
  br i1 %cmp.not, label %if.end28.if.end33_crit_edge, label %if.then31

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %and32 = and i32 %21, -17
  %22 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and32, ptr %status, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end28.if.end33_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp7045_fe_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %d = getelementptr inbounds %struct.vp7045_fe_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d, align 4
  %call = tail call zeroext i8 @vp7045_read_reg(ptr noundef %3, i8 noundef zeroext 13) #6
  %conv = zext i8 %call to i32
  %shl = shl nuw nsw i32 %conv, 16
  %4 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d, align 4
  %call2 = tail call zeroext i8 @vp7045_read_reg(ptr noundef %5, i8 noundef zeroext 14) #6
  %conv3 = zext i8 %call2 to i32
  %shl4 = shl nuw nsw i32 %conv3, 8
  %or = or i32 %shl4, %shl
  %6 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d, align 4
  %call6 = tail call zeroext i8 @vp7045_read_reg(ptr noundef %7, i8 noundef zeroext 15) #6
  %conv7 = zext i8 %call6 to i32
  %or8 = or i32 %or, %conv7
  %8 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or8, ptr %ber, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp7045_fe_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %d = getelementptr inbounds %struct.vp7045_fe_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d, align 4
  %call = tail call zeroext i8 @vp7045_read_reg(ptr noundef %3, i8 noundef zeroext 20) #6
  %conv = zext i8 %call to i16
  %shl = shl nuw i16 %conv, 8
  %4 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d, align 4
  %call2 = tail call zeroext i8 @vp7045_read_reg(ptr noundef %5, i8 noundef zeroext 21) #6
  %conv3 = zext i8 %call2 to i16
  %or = or i16 %shl, %conv3
  %neg = xor i16 %or, -1
  %6 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %neg, ptr %strength, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp7045_fe_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %d = getelementptr inbounds %struct.vp7045_fe_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d, align 4
  %call = tail call zeroext i8 @vp7045_read_reg(ptr noundef %3, i8 noundef zeroext 9) #6
  %conv = zext i8 %call to i16
  %or = mul nuw i16 %conv, 257
  %4 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %or, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp7045_fe_read_unc_blocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %unc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %d = getelementptr inbounds %struct.vp7045_fe_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d, align 4
  %call = tail call zeroext i8 @vp7045_read_reg(ptr noundef %3, i8 noundef zeroext 16) #6
  %conv = zext i8 %call to i32
  %shl = shl nuw nsw i32 %conv, 8
  %4 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d, align 4
  %call2 = tail call zeroext i8 @vp7045_read_reg(ptr noundef %5, i8 noundef zeroext 17) #6
  %conv3 = zext i8 %call2 to i32
  %or = or i32 %shl, %conv3
  %6 = ptrtoint ptr %unc to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %unc, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vp7045_usb_op(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @vp7045_read_reg(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @vp7045_fe_ops, !1, !"vp7045_fe_ops", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb/vp7045-fe.c", i32 157, i32 38}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
