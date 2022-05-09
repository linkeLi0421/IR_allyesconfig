; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/tua6100.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/tua6100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+tua6100_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_tua6100_attach\09\09\09\09"
module asm "\09.long\09__crc_tua6100_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tua6100_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tua6100_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tua6100_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.tua6100_priv = type { i32, ptr, i32 }

@tua6100_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Infineon TUA6100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 1000000, i32 0, i32 0, i32 0 }, ptr @tua6100_release, ptr null, ptr @tua6100_sleep, ptr null, ptr null, ptr @tua6100_set_params, ptr null, ptr null, ptr @tua6100_get_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_tua6100_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tua6100_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tua6100_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tua6100_attach to i32), ptr @__kstrtab_tua6100_attach, ptr @__kstrtabns_tua6100_attach }, section "___ksymtab+tua6100_attach", align 4
@__UNIQUE_ID_description290 = internal constant [39 x i8] c"tua6100.description=DVB tua6100 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [33 x i8] c"tua6100.author=Andrew de Quincey\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [49 x i8] c"tua6100.file=drivers/media/dvb-frontends/tua6100\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [20 x i8] c"tua6100.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tua6100_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: i2c error\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tua6100_sleep\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/tua6100.c\00", [58 x i8] zeroinitializer }, align 32
@tua6100_sleep._entry_ptr = internal global ptr @tua6100_sleep._entry, section ".printk_index", align 4
@__const.tua6100_set_params.reg2 = private unnamed_addr constant [3 x i8] c"\02\00\00", align 1
@___asan_gen_.3 = private unnamed_addr constant [18 x i8] c"tua6100_tuner_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 147, i32 35 }
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [41 x i8] c"../drivers/media/dvb-frontends/tua6100.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 49, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__ksymtab_tua6100_attach, ptr @tua6100_sleep._entry, ptr @tua6100_sleep._entry_ptr, ptr @tua6100_tuner_ops, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tua6100_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tua6100_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tua6100_attach(ptr noundef %fe, i32 noundef %addr, ptr noundef %i2c) #0 align 64 {
entry:
  %b1 = alloca [1 x i8], align 1
  %b2 = alloca [1 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1) #6
  %0 = ptrtoint ptr %b1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -128, ptr %b1, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b2) #6
  %1 = ptrtoint ptr %b2 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %b2, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #6
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %conv = trunc i32 %addr to i16
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %b1, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %8 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %arrayinit.element, align 4
  %flags4 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %9 = ptrtoint ptr %flags4 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %flags4, align 2
  %len5 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %10 = ptrtoint ptr %len5 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %len5, align 4
  %buf6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %11 = ptrtoint ptr %buf6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %b2, ptr %buf6, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %12 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = call i32 %13(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call11 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg, i32 noundef 2) #6
  %14 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool14.not = icmp eq ptr %15, null
  br i1 %tobool14.not, label %if.end.if.end19_crit_edge, label %if.then15

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = call i32 %15(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end.if.end19_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call11)
  %cmp.not = icmp eq i32 %call11, 2
  br i1 %cmp.not, label %if.end22, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.end19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 12) #9
  %cmp24 = icmp eq ptr %call7.i.i, null
  br i1 %cmp24, label %if.end22.cleanup_crit_edge, label %if.end27

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %addr, ptr %call7.i.i, align 8
  %i2c28 = getelementptr inbounds %struct.tua6100_priv, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %i2c28 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %i2c, ptr %i2c28, align 4
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %19 = call ptr @memcpy(ptr %tuner_ops, ptr @tua6100_tuner_ops, i32 220)
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %20 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end22.cleanup_crit_edge, %if.end19.cleanup_crit_edge
  %retval.0 = phi ptr [ %fe, %if.end27 ], [ null, %if.end19.cleanup_crit_edge ], [ null, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b2) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tua6100_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %1) #6
  %2 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %tuner_priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tua6100_sleep(ptr noundef %fe) #0 align 64 {
entry:
  %reg0 = alloca [2 x i8], align 2
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg0) #6
  %2 = ptrtoint ptr %reg0 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %reg0, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #6
  %3 = getelementptr inbounds i8, ptr %msg, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %conv = trunc i32 %6 to i16
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %reg0, ptr %buf, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %11 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = call i32 %12(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i2c = getelementptr inbounds %struct.tua6100_priv, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c, align 4
  %call3 = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 1
  br i1 %cmp.not, label %if.end.if.end7_crit_edge, label %do.end

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.end.if.end7_crit_edge
  %15 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool10.not = icmp eq ptr %16, null
  br i1 %tobool10.not, label %if.end7.if.end15_crit_edge, label %if.then11

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = call i32 %16(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end7.if.end15_crit_edge
  %spec.select = select i1 %cmp.not, i32 0, i32 %call3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg0) #6
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tua6100_set_params(ptr noundef %fe) #0 align 64 {
entry:
  %reg0 = alloca [2 x i8], align 2
  %reg1 = alloca [4 x i8], align 4
  %reg2 = alloca [3 x i8], align 1
  %msg0 = alloca %struct.i2c_msg, align 4
  %msg1 = alloca %struct.i2c_msg, align 4
  %msg2 = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg0) #6
  %2 = ptrtoint ptr %reg0 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %reg0, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg1) #6
  %3 = ptrtoint ptr %reg1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 16777216, ptr %reg1, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %reg2) #6
  %4 = call ptr @memcpy(ptr %reg2, ptr @__const.tua6100_set_params.reg2, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg0) #6
  %5 = getelementptr inbounds i8, ptr %msg0, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %conv = trunc i32 %8 to i16
  %9 = ptrtoint ptr %msg0 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %msg0, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg0, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg0, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg0, i32 0, i32 3
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %reg0, ptr %buf, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg1) #6
  %13 = getelementptr inbounds i8, ptr %msg1, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %13, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  %conv3 = trunc i32 %16 to i16
  %17 = ptrtoint ptr %msg1 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv3, ptr %msg1, align 4
  %flags4 = getelementptr inbounds %struct.i2c_msg, ptr %msg1, i32 0, i32 1
  %18 = ptrtoint ptr %flags4 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %flags4, align 2
  %len5 = getelementptr inbounds %struct.i2c_msg, ptr %msg1, i32 0, i32 2
  %19 = ptrtoint ptr %len5 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 4, ptr %len5, align 4
  %buf6 = getelementptr inbounds %struct.i2c_msg, ptr %msg1, i32 0, i32 3
  %20 = ptrtoint ptr %buf6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %reg1, ptr %buf6, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg2) #6
  %21 = getelementptr inbounds i8, ptr %msg2, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %21, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %1, align 4
  %conv10 = trunc i32 %24 to i16
  %25 = ptrtoint ptr %msg2 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv10, ptr %msg2, align 4
  %flags11 = getelementptr inbounds %struct.i2c_msg, ptr %msg2, i32 0, i32 1
  %26 = ptrtoint ptr %flags11 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %flags11, align 2
  %len12 = getelementptr inbounds %struct.i2c_msg, ptr %msg2, i32 0, i32 2
  %27 = ptrtoint ptr %len12 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 3, ptr %len12, align 4
  %buf13 = getelementptr inbounds %struct.i2c_msg, ptr %msg2, i32 0, i32 3
  %28 = ptrtoint ptr %buf13 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %reg2, ptr %buf13, align 4
  %29 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %30)
  %cmp = icmp ult i32 %30, 2000000
  %arrayidx = getelementptr inbounds [2 x i8], ptr %reg0, i32 0, i32 1
  br i1 %cmp, label %if.end, label %if.else43

if.end:                                           ; preds = %entry
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 3, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1630000, i32 %30)
  %cmp18 = icmp ult i32 %30, 1630000
  %arrayidx21 = getelementptr inbounds [4 x i8], ptr %reg1, i32 0, i32 1
  br i1 %cmp18, label %if.end24, label %if.end.if.else52_crit_edge

if.end.if.else52_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else52

if.end24:                                         ; preds = %if.end
  %32 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 44, ptr %arrayidx21, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1524999, i32 %30)
  %cmp26 = icmp ugt i32 %30, 1524999
  br i1 %cmp26, label %if.else43.thread185, label %if.end32

if.else43.thread185:                              ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx21, align 1
  %35 = or i8 %34, -128
  store i8 %35, ptr %arrayidx21, align 1
  %arrayidx33177188 = getelementptr inbounds [3 x i8], ptr %reg2, i32 0, i32 1
  %arrayidx34178189 = getelementptr inbounds [3 x i8], ptr %reg2, i32 0, i32 2
  %36 = ptrtoint ptr %arrayidx34178189 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 4, ptr %arrayidx34178189, align 1
  br label %if.then47

if.end32:                                         ; preds = %if.end24
  %arrayidx33 = getelementptr inbounds [3 x i8], ptr %reg2, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [3 x i8], ptr %reg2, i32 0, i32 2
  %37 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 4, ptr %arrayidx34, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1455000, i32 %30)
  %cmp36 = icmp ult i32 %30, 1455000
  br i1 %cmp36, label %if.then38, label %if.end32.if.then47_crit_edge

if.end32.if.then47_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then47

if.then38:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 28, ptr %arrayidx33, align 1
  br label %if.end58

if.else43:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 7, ptr %arrayidx, align 1
  %arrayidx29 = getelementptr inbounds [4 x i8], ptr %reg1, i32 0, i32 1
  br label %if.else52

if.then47:                                        ; preds = %if.end32.if.then47_crit_edge, %if.else43.thread185
  %arrayidx33181184 = phi ptr [ %arrayidx33177188, %if.else43.thread185 ], [ %arrayidx33, %if.end32.if.then47_crit_edge ]
  %40 = ptrtoint ptr %arrayidx33181184 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 12, ptr %arrayidx33181184, align 1
  br label %if.end58

if.else52:                                        ; preds = %if.else43, %if.end.if.else52_crit_edge
  %arrayidx29.sink = phi ptr [ %arrayidx29, %if.else43 ], [ %arrayidx21, %if.end.if.else52_crit_edge ]
  %41 = ptrtoint ptr %arrayidx29.sink to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -116, ptr %arrayidx29.sink, align 1
  %arrayidx33177 = getelementptr inbounds [3 x i8], ptr %reg2, i32 0, i32 1
  %arrayidx34178 = getelementptr inbounds [3 x i8], ptr %reg2, i32 0, i32 2
  %42 = ptrtoint ptr %arrayidx34178 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 4, ptr %arrayidx34178, align 1
  %43 = ptrtoint ptr %arrayidx33177 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 28, ptr %arrayidx33177, align 1
  br label %if.end58

if.end58:                                         ; preds = %if.else52, %if.then47, %if.then38
  %mul = shl i32 %30, 2
  %div60 = udiv i32 %mul, 4000
  %div61 = udiv i32 %mul, 128000
  %shr = lshr i32 %div61, 9
  %arrayidx62 = getelementptr inbounds [4 x i8], ptr %reg1, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx62, align 1
  %46 = trunc i32 %shr to i8
  %47 = and i8 %46, 3
  %conv65 = or i8 %45, %47
  store i8 %conv65, ptr %arrayidx62, align 1
  %shr66 = lshr i32 %div61, 1
  %conv67 = trunc i32 %shr66 to i8
  %arrayidx68 = getelementptr inbounds [4 x i8], ptr %reg1, i32 0, i32 2
  %48 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv67, ptr %arrayidx68, align 2
  %div61.tr = trunc i32 %div61 to i8
  %conv69 = shl i8 %div61.tr, 7
  %arrayidx70 = getelementptr inbounds [4 x i8], ptr %reg1, i32 0, i32 3
  %mul71.neg = mul nuw nsw i32 %div61, 96
  %div73168 = mul nuw nsw i32 %div61, 32000
  %frequency74 = getelementptr inbounds %struct.tua6100_priv, ptr %1, i32 0, i32 2
  %49 = ptrtoint ptr %frequency74 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %div73168, ptr %frequency74, align 4
  %sub = add nuw nsw i32 %mul71.neg, %div60
  %50 = trunc i32 %sub to i8
  %51 = and i8 %50, 127
  %conv80 = or i8 %51, %conv69
  %52 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv80, ptr %arrayidx70, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %53 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %54, null
  br i1 %tobool.not, label %if.end58.if.end84_crit_edge, label %if.then81

if.end58.if.end84_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

if.then81:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %call = call i32 %54(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %if.end58.if.end84_crit_edge
  %i2c = getelementptr inbounds %struct.tua6100_priv, ptr %1, i32 0, i32 1
  %55 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i2c, align 4
  %call85 = call i32 @i2c_transfer(ptr noundef %56, ptr noundef nonnull %msg0, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call85)
  %cmp86.not = icmp eq i32 %call85, 1
  br i1 %cmp86.not, label %if.end89, label %if.end84.cleanup_crit_edge

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end89:                                         ; preds = %if.end84
  %57 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool92.not = icmp eq ptr %58, null
  br i1 %tobool92.not, label %if.end89.if.end97_crit_edge, label %if.then93

if.end89.if.end97_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

if.then93:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  %call96 = call i32 %58(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end97

if.end97:                                         ; preds = %if.then93, %if.end89.if.end97_crit_edge
  %59 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i2c, align 4
  %call99 = call i32 @i2c_transfer(ptr noundef %60, ptr noundef nonnull %msg2, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call99)
  %cmp100.not = icmp eq i32 %call99, 1
  br i1 %cmp100.not, label %if.end103, label %if.end97.cleanup_crit_edge

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end103:                                        ; preds = %if.end97
  %61 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool106.not = icmp eq ptr %62, null
  br i1 %tobool106.not, label %if.end103.if.end111_crit_edge, label %if.then107

if.end103.if.end111_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

if.then107:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  %call110 = call i32 %62(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end111

if.end111:                                        ; preds = %if.then107, %if.end103.if.end111_crit_edge
  %63 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i2c, align 4
  %call113 = call i32 @i2c_transfer(ptr noundef %64, ptr noundef nonnull %msg1, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call113)
  %cmp114.not = icmp eq i32 %call113, 1
  br i1 %cmp114.not, label %if.end117, label %if.end111.cleanup_crit_edge

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end117:                                        ; preds = %if.end111
  %65 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool120.not = icmp eq ptr %66, null
  br i1 %tobool120.not, label %if.end117.cleanup_crit_edge, label %if.then121

if.end117.cleanup_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then121:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  %call124 = call i32 %66(ptr noundef %fe, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then121, %if.end117.cleanup_crit_edge, %if.end111.cleanup_crit_edge, %if.end97.cleanup_crit_edge, %if.end84.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.end84.cleanup_crit_edge ], [ -5, %if.end97.cleanup_crit_edge ], [ -5, %if.end111.cleanup_crit_edge ], [ 0, %if.then121 ], [ 0, %if.end117.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg2) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg0) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %reg2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg1) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg0) #6
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tua6100_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %frequency1 = getelementptr inbounds %struct.tua6100_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %frequency1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency1, align 4
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !15, !16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__ksymtab_tua6100_attach, !1, !"__ksymtab_tua6100_attach", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/tua6100.c", i32 189, i32 1}
!2 = !{ptr @__UNIQUE_ID_description290, !3, !"__UNIQUE_ID_description290", i1 false, i1 false}
!3 = !{!"../drivers/media/dvb-frontends/tua6100.c", i32 191, i32 1}
!4 = !{ptr @__UNIQUE_ID_author291, !5, !"__UNIQUE_ID_author291", i1 false, i1 false}
!5 = !{!"../drivers/media/dvb-frontends/tua6100.c", i32 192, i32 1}
!6 = !{ptr @__UNIQUE_ID_file292, !7, !"__UNIQUE_ID_file292", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/tua6100.c", i32 193, i32 1}
!8 = !{ptr @__UNIQUE_ID_license293, !7, !"__UNIQUE_ID_license293", i1 false, i1 false}
!9 = !{ptr @tua6100_tuner_ops, !10, !"tua6100_tuner_ops", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/tua6100.c", i32 147, i32 35}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/tua6100.c", i32 49, i32 3}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @tua6100_sleep._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @tua6100_sleep._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
