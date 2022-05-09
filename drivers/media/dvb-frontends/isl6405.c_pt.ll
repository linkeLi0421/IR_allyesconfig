; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/isl6405.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/isl6405.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+isl6405_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_isl6405_attach\09\09\09\09"
module asm "\09.long\09__crc_isl6405_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_isl6405_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22isl6405_attach\22\09\09\09\09\09"
module asm "__kstrtabns_isl6405_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.isl6405 = type { i8, i8, i8, ptr, i8 }
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

@__kstrtab_isl6405_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_isl6405_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_isl6405_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @isl6405_attach to i32), ptr @__kstrtab_isl6405_attach, ptr @__kstrtabns_isl6405_attach }, section "___ksymtab+isl6405_attach", align 4
@__UNIQUE_ID_description290 = internal constant [65 x i8] c"isl6405.description=Driver for lnb supply and control ic isl6405\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [49 x i8] c"isl6405.author=Hartmut Hackmann & Oliver Endriss\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [49 x i8] c"isl6405.file=drivers/media/dvb-frontends/isl6405\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [20 x i8] c"isl6405.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__ksymtab_isl6405_attach], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @isl6405_attach(ptr noundef %fe, ptr noundef %i2c, i8 noundef zeroext %i2c_addr, i8 noundef zeroext %override_set, i8 noundef zeroext %override_clear) #0 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 12) #7
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %override_set)
  %tobool1.not = icmp sgt i8 %override_set, -1
  %. = select i1 %tobool1.not, i8 32, i8 64
  %i2c5 = getelementptr inbounds %struct.isl6405, ptr %call7.i, i32 0, i32 3
  %1 = ptrtoint ptr %i2c5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %i2c, ptr %i2c5, align 4
  %i2c_addr6 = getelementptr inbounds %struct.isl6405, ptr %call7.i, i32 0, i32 4
  %2 = ptrtoint ptr %i2c_addr6 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %i2c_addr, ptr %i2c_addr6, align 8
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %3 = ptrtoint ptr %sec_priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i, ptr %sec_priv, align 4
  %override_or = getelementptr inbounds %struct.isl6405, ptr %call7.i, i32 0, i32 1
  %4 = ptrtoint ptr %override_or to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %override_set, ptr %override_or, align 1
  %neg = xor i8 %override_clear, -1
  %override_and = getelementptr inbounds %struct.isl6405, ptr %call7.i, i32 0, i32 2
  %5 = ptrtoint ptr %override_and to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %neg, ptr %override_and, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #4
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 131071, ptr %6, align 4
  %conv.i = zext i8 %i2c_addr to i16
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i, ptr %buf.i, align 4
  %or3457.i = or i8 %., %override_set
  %and3958.i = and i8 %or3457.i, %neg
  %11 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %and3958.i, ptr %call7.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #4
  br i1 %cmp.i, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @kfree(ptr noundef nonnull %call7.i) #4
  %12 = ptrtoint ptr %sec_priv to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %sec_priv, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %release_sec = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 4
  %13 = ptrtoint ptr %release_sec to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @isl6405_release, ptr %release_sec, align 4
  %set_voltage = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 25
  %14 = ptrtoint ptr %set_voltage to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @isl6405_set_voltage, ptr %set_voltage, align 4
  %enable_high_lnb_voltage = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 26
  %15 = ptrtoint ptr %enable_high_lnb_voltage to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @isl6405_enable_high_lnb_voltage, ptr %enable_high_lnb_voltage, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then11 ], [ %fe, %if.end13 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl6405_set_voltage(ptr nocapture noundef readonly %fe, i32 noundef %voltage) #0 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %0 = ptrtoint ptr %sec_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sec_priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #4
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %i2c_addr = getelementptr inbounds %struct.isl6405, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i2c_addr, align 4
  %conv = zext i8 %5 to i16
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %buf, align 4
  %override_or = getelementptr inbounds %struct.isl6405, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %override_or to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %override_or, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %tobool.not = icmp sgt i8 %11, -1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %1, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %14 = and i8 %13, -13
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %1, align 4
  %16 = zext i32 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %voltage, label %if.then.cleanup_crit_edge [
    i32 2, label %if.then.if.end_crit_edge
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %17 = or i8 %14, 4
  br label %if.end.sink.split

sw.bb9:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %18 = or i8 %13, 12
  br label %if.end.sink.split

if.else:                                          ; preds = %entry
  %19 = and i8 %13, -7
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %1, align 4
  %21 = zext i32 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %voltage, label %if.else.cleanup_crit_edge [
    i32 2, label %if.else.if.end_crit_edge
    i32 0, label %sw.bb18
    i32 1, label %sw.bb23
  ]

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb18:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %22 = or i8 %19, 2
  br label %if.end.sink.split

sw.bb23:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %23 = or i8 %13, 6
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %sw.bb23, %sw.bb18, %sw.bb9, %sw.bb
  %.sink = phi i8 [ %22, %sw.bb18 ], [ %23, %sw.bb23 ], [ %17, %sw.bb ], [ %18, %sw.bb9 ]
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %.sink, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %1, align 4
  %or3457 = or i8 %26, %11
  %override_and = getelementptr inbounds %struct.isl6405, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %override_and to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %override_and, align 2
  %and3958 = and i8 %28, %or3457
  store i8 %and3958, ptr %1, align 4
  %i2c = getelementptr inbounds %struct.isl6405, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c, align 4
  %call = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %msg, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  %cond = select i1 %cmp, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isl6405_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sec_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %0 = ptrtoint ptr %sec_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sec_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #4
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 131071, ptr %2, align 4
  %i2c_addr.i = getelementptr inbounds %struct.isl6405, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i2c_addr.i, align 4
  %conv.i = zext i8 %5 to i16
  %6 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %1, ptr %buf.i, align 4
  %override_or.i = getelementptr inbounds %struct.isl6405, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %override_or.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %override_or.i, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i4 = icmp slt i8 %10, 0
  %storemerge.v = select i1 %tobool.not.i4, i8 -13, i8 -7
  %storemerge = and i8 %12, %storemerge.v
  %or3457.i = or i8 %storemerge, %10
  %override_and.i = getelementptr inbounds %struct.isl6405, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %override_and.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %override_and.i, align 2
  %and3958.i = and i8 %or3457.i, %14
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %and3958.i, ptr %1, align 4
  %i2c.i = getelementptr inbounds %struct.isl6405, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 1) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #4
  %18 = ptrtoint ptr %sec_priv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sec_priv.i, align 4
  call void @kfree(ptr noundef %19) #4
  %20 = ptrtoint ptr %sec_priv.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %sec_priv.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl6405_enable_high_lnb_voltage(ptr nocapture noundef readonly %fe, i32 noundef %arg) #0 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %0 = ptrtoint ptr %sec_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sec_priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #4
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %i2c_addr = getelementptr inbounds %struct.isl6405, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i2c_addr, align 4
  %conv = zext i8 %5 to i16
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %buf, align 4
  %override_or = getelementptr inbounds %struct.isl6405, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %override_or to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %override_or, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %tobool.not = icmp sgt i8 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool12.not = icmp eq i32 %arg, 0
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %1, align 4
  br i1 %tobool.not, label %if.else11, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool12.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %14 = or i8 %13, 16
  br label %if.end24

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %15 = and i8 %13, -17
  br label %if.end24

if.else11:                                        ; preds = %entry
  br i1 %tobool12.not, label %if.else18, label %if.then13

if.then13:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #6
  %16 = or i8 %13, 8
  br label %if.end24

if.else18:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #6
  %17 = and i8 %13, -9
  br label %if.end24

if.end24:                                         ; preds = %if.else18, %if.then13, %if.else, %if.then3
  %.sink = phi i8 [ %16, %if.then13 ], [ %17, %if.else18 ], [ %14, %if.then3 ], [ %15, %if.else ]
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %.sink, ptr %1, align 4
  %or2949 = or i8 %.sink, %11
  %override_and = getelementptr inbounds %struct.isl6405, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %override_and to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %override_and, align 2
  %and3450 = and i8 %20, %or2949
  store i8 %and3450, ptr %1, align 4
  %i2c = getelementptr inbounds %struct.isl6405, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c, align 4
  %call = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  %cond = select i1 %cmp, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #4
  ret i32 %cond
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @__ksymtab_isl6405_attach, !1, !"__ksymtab_isl6405_attach", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/isl6405.c", i32 144, i32 1}
!2 = !{ptr @__UNIQUE_ID_description290, !3, !"__UNIQUE_ID_description290", i1 false, i1 false}
!3 = !{!"../drivers/media/dvb-frontends/isl6405.c", i32 146, i32 1}
!4 = !{ptr @__UNIQUE_ID_author291, !5, !"__UNIQUE_ID_author291", i1 false, i1 false}
!5 = !{!"../drivers/media/dvb-frontends/isl6405.c", i32 147, i32 1}
!6 = !{ptr @__UNIQUE_ID_file292, !7, !"__UNIQUE_ID_file292", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/isl6405.c", i32 148, i32 1}
!8 = !{ptr @__UNIQUE_ID_license293, !7, !"__UNIQUE_ID_license293", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
