; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/lnbp21.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/lnbp21.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+lnbh24_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_lnbh24_attach\09\09\09\09"
module asm "\09.long\09__crc_lnbh24_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lnbh24_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22lnbh24_attach\22\09\09\09\09\09"
module asm "__kstrtabns_lnbh24_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+lnbp21_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_lnbp21_attach\09\09\09\09"
module asm "\09.long\09__crc_lnbp21_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lnbp21_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22lnbp21_attach\22\09\09\09\09\09"
module asm "__kstrtabns_lnbp21_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.lnbp21 = type { i8, i8, i8, ptr, i8 }
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

@__kstrtab_lnbh24_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_lnbh24_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_lnbh24_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lnbh24_attach to i32), ptr @__kstrtab_lnbh24_attach, ptr @__kstrtabns_lnbh24_attach }, section "___ksymtab+lnbh24_attach", align 4
@__kstrtab_lnbp21_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_lnbp21_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_lnbp21_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lnbp21_attach to i32), ptr @__kstrtab_lnbp21_attach, ptr @__kstrtabns_lnbp21_attach }, section "___ksymtab+lnbp21_attach", align 4
@__UNIQUE_ID_description290 = internal constant [71 x i8] c"lnbp21.description=Driver for lnb supply and control ic lnbp21, lnbh24\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [48 x i8] c"lnbp21.author=Oliver Endriss, Igor M. Liplianin\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [47 x i8] c"lnbp21.file=drivers/media/dvb-frontends/lnbp21\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [19 x i8] c"lnbp21.license=GPL\00", section ".modinfo", align 1
@lnbx2x_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016LNBx2x attached on addr=%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lnbx2x_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/dvb-frontends/lnbp21.c\00", [59 x i8] zeroinitializer }, align 32
@lnbx2x_attach._entry_ptr = internal global ptr @lnbx2x_attach._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.4 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [40 x i8] c"../drivers/media/dvb-frontends/lnbp21.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 146, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__ksymtab_lnbh24_attach, ptr @__ksymtab_lnbp21_attach, ptr @lnbx2x_attach._entry, ptr @lnbx2x_attach._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lnbx2x_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @lnbh24_attach(ptr noundef %fe, ptr noundef %i2c, i8 noundef zeroext %override_set, i8 noundef zeroext %override_clear, i8 noundef zeroext %i2c_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lnbx2x_attach(ptr noundef %fe, ptr noundef %i2c, i8 noundef zeroext %override_set, i8 noundef zeroext %override_clear, i8 noundef zeroext %i2c_addr)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @lnbx2x_attach(ptr noundef %fe, ptr noundef %i2c, i8 noundef zeroext %override_set, i8 noundef zeroext %override_clear, i8 noundef zeroext %i2c_addr) unnamed_addr #0 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 12) #8
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %i2c2 = getelementptr inbounds %struct.lnbp21, ptr %call7.i, i32 0, i32 3
  %1 = ptrtoint ptr %i2c2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %i2c, ptr %i2c2, align 4
  %i2c_addr3 = getelementptr inbounds %struct.lnbp21, ptr %call7.i, i32 0, i32 4
  %2 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %i2c_addr, ptr %i2c_addr3, align 8
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %3 = ptrtoint ptr %sec_priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i, ptr %sec_priv, align 4
  %override_or = getelementptr inbounds %struct.lnbp21, ptr %call7.i, i32 0, i32 1
  %4 = ptrtoint ptr %override_or to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %override_set, ptr %override_or, align 1
  %neg = xor i8 %override_clear, -1
  %override_and = getelementptr inbounds %struct.lnbp21, ptr %call7.i, i32 0, i32 2
  %5 = ptrtoint ptr %override_and to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %neg, ptr %override_and, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #5
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
  %or1533.i = or i8 %override_set, 64
  %and2034.i = and i8 %or1533.i, %neg
  %11 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %and2034.i, ptr %call7.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  br i1 %cmp.i, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %call7.i) #5
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %release_sec = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %release_sec to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @lnbp21_release, ptr %release_sec, align 4
  %set_voltage = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 25
  %13 = ptrtoint ptr %set_voltage to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @lnbp21_set_voltage, ptr %set_voltage, align 4
  %enable_high_lnb_voltage = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 26
  %14 = ptrtoint ptr %enable_high_lnb_voltage to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @lnbp21_enable_high_lnb_voltage, ptr %enable_high_lnb_voltage, align 4
  %15 = and i8 %override_clear, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool12.not = icmp eq i8 %15, 0
  br i1 %tobool12.not, label %if.then13, label %if.end8.do.end_crit_edge

if.end8.do.end_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %set_tone = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 24
  %16 = ptrtoint ptr %set_tone to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @lnbp21_set_tone, ptr %set_tone, align 4
  br label %do.end

do.end:                                           ; preds = %if.then13, %if.end8.do.end_crit_edge
  %17 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %i2c_addr3, align 8
  %conv17 = zext i8 %18 to i32
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv17) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then7 ], [ %fe, %do.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @lnbp21_attach(ptr noundef %fe, ptr noundef %i2c, i8 noundef zeroext %override_set, i8 noundef zeroext %override_clear) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lnbx2x_attach(ptr noundef %fe, ptr noundef %i2c, i8 noundef zeroext %override_set, i8 noundef zeroext %override_clear, i8 noundef zeroext 8)
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lnbp21_set_voltage(ptr nocapture noundef readonly %fe, i32 noundef %voltage) #0 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %0 = ptrtoint ptr %sec_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sec_priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #5
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %i2c_addr = getelementptr inbounds %struct.lnbp21, ptr %1, i32 0, i32 4
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
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %1, align 4
  %12 = and i8 %11, -13
  store i8 %12, ptr %1, align 4
  %13 = zext i32 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %voltage, label %entry.cleanup_crit_edge [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %14 = or i8 %12, 4
  br label %sw.epilog.sink.split

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %15 = or i8 %11, 12
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb7, %sw.bb
  %.sink = phi i8 [ %15, %sw.bb7 ], [ %14, %sw.bb ]
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.sink, ptr %1, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %override_or = getelementptr inbounds %struct.lnbp21, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %override_or to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %override_or, align 1
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %1, align 4
  %or1533 = or i8 %20, %18
  %override_and = getelementptr inbounds %struct.lnbp21, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %override_and to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %override_and, align 2
  %and2034 = and i8 %22, %or1533
  store i8 %and2034, ptr %1, align 4
  %i2c = getelementptr inbounds %struct.lnbp21, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c, align 4
  %call = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  %cond = select i1 %cmp, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lnbp21_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sec_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %0 = ptrtoint ptr %sec_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sec_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #5
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 131071, ptr %2, align 4
  %i2c_addr.i = getelementptr inbounds %struct.lnbp21, ptr %1, i32 0, i32 4
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
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %1, align 4
  %11 = and i8 %10, -13
  %override_or.i = getelementptr inbounds %struct.lnbp21, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %override_or.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %override_or.i, align 1
  %or1533.i = or i8 %13, %11
  %override_and.i = getelementptr inbounds %struct.lnbp21, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %override_and.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %override_and.i, align 2
  %and2034.i = and i8 %15, %or1533.i
  store i8 %and2034.i, ptr %1, align 4
  %i2c.i = getelementptr inbounds %struct.lnbp21, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  %18 = ptrtoint ptr %sec_priv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sec_priv.i, align 4
  call void @kfree(ptr noundef %19) #5
  %20 = ptrtoint ptr %sec_priv.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %sec_priv.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lnbp21_enable_high_lnb_voltage(ptr nocapture noundef readonly %fe, i32 noundef %arg) #0 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %0 = ptrtoint ptr %sec_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sec_priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #5
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %i2c_addr = getelementptr inbounds %struct.lnbp21, ptr %1, i32 0, i32 4
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool.not = icmp eq i32 %arg, 0
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %1, align 4
  %12 = and i8 %11, -17
  %masksel = select i1 %tobool.not, i8 0, i8 16
  %storemerge = or i8 %12, %masksel
  %override_or = getelementptr inbounds %struct.lnbp21, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %override_or to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %override_or, align 1
  %or1026 = or i8 %14, %storemerge
  %override_and = getelementptr inbounds %struct.lnbp21, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %override_and to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %override_and, align 2
  %and1527 = and i8 %16, %or1026
  store i8 %and1527, ptr %1, align 4
  %i2c = getelementptr inbounds %struct.lnbp21, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c, align 4
  %call = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  %cond = select i1 %cmp, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #5
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lnbp21_set_tone(ptr nocapture noundef readonly %fe, i32 noundef %tone) #0 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %0 = ptrtoint ptr %sec_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sec_priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #5
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %i2c_addr = getelementptr inbounds %struct.lnbp21, ptr %1, i32 0, i32 4
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
  %10 = zext i32 %tone to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %tone, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %1, align 4
  %13 = and i8 %12, -33
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %1, align 4
  %16 = or i8 %15, 32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb
  %storemerge = phi i8 [ %16, %sw.bb4 ], [ %13, %sw.bb ]
  %override_or = getelementptr inbounds %struct.lnbp21, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %override_or to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %override_or, align 1
  %or1128 = or i8 %18, %storemerge
  %override_and = getelementptr inbounds %struct.lnbp21, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %override_and to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %override_and, align 2
  %and1629 = and i8 %20, %or1128
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %and1629, ptr %1, align 4
  %i2c = getelementptr inbounds %struct.lnbp21, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c, align 4
  %call = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  %cond = select i1 %cmp, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #5
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !15, !16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__ksymtab_lnbh24_attach, !1, !"__ksymtab_lnbh24_attach", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/lnbp21.c", i32 158, i32 1}
!2 = !{ptr @__ksymtab_lnbp21_attach, !3, !"__ksymtab_lnbp21_attach", i1 false, i1 false}
!3 = !{!"../drivers/media/dvb-frontends/lnbp21.c", i32 167, i32 1}
!4 = !{ptr @__UNIQUE_ID_description290, !5, !"__UNIQUE_ID_description290", i1 false, i1 false}
!5 = !{!"../drivers/media/dvb-frontends/lnbp21.c", i32 169, i32 1}
!6 = !{ptr @__UNIQUE_ID_author291, !7, !"__UNIQUE_ID_author291", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/lnbp21.c", i32 170, i32 1}
!8 = !{ptr @__UNIQUE_ID_file292, !9, !"__UNIQUE_ID_file292", i1 false, i1 false}
!9 = !{!"../drivers/media/dvb-frontends/lnbp21.c", i32 171, i32 1}
!10 = !{ptr @__UNIQUE_ID_license293, !9, !"__UNIQUE_ID_license293", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/lnbp21.c", i32 146, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @lnbx2x_attach._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @lnbx2x_attach._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
