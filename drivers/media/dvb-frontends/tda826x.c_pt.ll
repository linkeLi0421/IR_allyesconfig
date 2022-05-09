; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/tda826x.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/tda826x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+tda826x_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_tda826x_attach\09\09\09\09"
module asm "\09.long\09__crc_tda826x_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tda826x_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tda826x_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tda826x_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.78 }
%union.anon.78 = type { ptr }
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
%struct.tda826x_priv = type { i32, ptr, i8, i32 }

@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tda826x_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017tda826x: %s:\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda826x_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/tda826x.c\00", [58 x i8] zeroinitializer }, align 32
@tda826x_attach._entry_ptr = internal global ptr @tda826x_attach._entry, section ".printk_index", align 4
@tda826x_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Philips TDA826X\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2119967296, i32 0, i32 0, i32 0, i32 0 }, ptr @tda826x_release, ptr null, ptr @tda826x_sleep, ptr null, ptr null, ptr @tda826x_set_params, ptr null, ptr null, ptr @tda826x_get_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_tda826x_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tda826x_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tda826x_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tda826x_attach to i32), ptr @__kstrtab_tda826x_attach, ptr @__kstrtabns_tda826x_attach }, section "___ksymtab+tda826x_attach", align 4
@__param_str_debug = internal constant [14 x i8] c"tda826x.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [27 x i8] c"tda826x.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [65 x i8] c"tda826x.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [39 x i8] c"tda826x.description=DVB TDA826x driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [33 x i8] c"tda826x.author=Andrew de Quincey\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [49 x i8] c"tda826x.file=drivers/media/dvb-frontends/tda826x\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"tda826x.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tda826x_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 44, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tda826x_sleep\00", [18 x i8] zeroinitializer }, align 32
@tda826x_sleep._entry_ptr = internal global ptr @tda826x_sleep._entry, section ".printk_index", align 4
@tda826x_sleep._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.3, ptr @.str.2, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017tda826x: %s: i2c error\0A\00", [38 x i8] zeroinitializer }, align 32
@tda826x_sleep._entry_ptr.6 = internal global ptr @tda826x_sleep._entry.4, section ".printk_index", align 4
@tda826x_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.7, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tda826x_set_params\00", [45 x i8] zeroinitializer }, align 32
@tda826x_set_params._entry_ptr = internal global ptr @tda826x_set_params._entry, section ".printk_index", align 4
@tda826x_set_params._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.7, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tda826x_set_params._entry_ptr.9 = internal global ptr @tda826x_set_params._entry.8, section ".printk_index", align 4
@___asan_gen_.10 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 17, i32 12 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 140, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"tda826x_tuner_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 118, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 44, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 52, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 71, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private constant [41 x i8] c"../drivers/media/dvb-frontends/tda826x.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 101, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_tda826x_attach, ptr @__param_debug, ptr @tda826x_attach._entry, ptr @tda826x_attach._entry_ptr, ptr @tda826x_set_params._entry, ptr @tda826x_set_params._entry.8, ptr @tda826x_set_params._entry_ptr, ptr @tda826x_set_params._entry_ptr.9, ptr @tda826x_sleep._entry, ptr @tda826x_sleep._entry.4, ptr @tda826x_sleep._entry_ptr, ptr @tda826x_sleep._entry_ptr.6, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @tda826x_tuner_ops, ptr @.str.3, ptr @.str.5, ptr @.str.7], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda826x_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda826x_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda826x_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda826x_sleep._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda826x_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda826x_set_params._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tda826x_attach(ptr noundef %fe, i32 noundef %addr, ptr noundef %i2c, i32 noundef %has_loopthrough) #0 align 64 {
entry:
  %b1 = alloca [2 x i8], align 2
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1) #7
  %0 = ptrtoint ptr %b1 to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %b1, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #7
  %1 = getelementptr inbounds i8, ptr %msg, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 16)
  %conv = trunc i32 %addr to i16
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %7 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %arrayinit.element, align 4
  %flags4 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %8 = ptrtoint ptr %flags4 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %flags4, align 2
  %len5 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %9 = ptrtoint ptr %len5 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 2, ptr %len5, align 4
  %buf6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %10 = ptrtoint ptr %buf6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %b1, ptr %buf6, align 4
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %12 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %do.end9.if.end15_crit_edge, label %if.then11

do.end9.if.end15_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then11:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = call i32 %13(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %do.end9.if.end15_crit_edge
  %call17 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg, i32 noundef 2) #7
  %14 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool20.not = icmp eq ptr %15, null
  br i1 %tobool20.not, label %if.end15.if.end25_crit_edge, label %if.then21

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = call i32 %15(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end15.if.end25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call17)
  %cmp.not = icmp eq i32 %call17, 2
  br i1 %cmp.not, label %if.end28, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %if.end25
  %arrayidx = getelementptr inbounds [2 x i8], ptr %b1, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %tobool30.not = icmp sgt i8 %17, -1
  br i1 %tobool30.not, label %if.end28.cleanup_crit_edge, label %if.end32

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 16) #11
  %cmp34 = icmp eq ptr %call7.i.i, null
  br i1 %cmp34, label %if.end32.cleanup_crit_edge, label %if.end37

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %addr, ptr %call7.i.i, align 8
  %i2c38 = getelementptr inbounds %struct.tda826x_priv, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %i2c38 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %i2c, ptr %i2c38, align 4
  %conv39 = trunc i32 %has_loopthrough to i8
  %has_loopthrough40 = getelementptr inbounds %struct.tda826x_priv, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %has_loopthrough40 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %has_loopthrough40, align 8
  %bf.shl = shl i8 %conv39, 7
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %has_loopthrough40, align 8
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %22 = call ptr @memcpy(ptr %tuner_ops, ptr @tda826x_tuner_ops, i32 220)
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %23 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end32.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end25.cleanup_crit_edge
  %retval.0 = phi ptr [ %fe, %if.end37 ], [ null, %if.end25.cleanup_crit_edge ], [ null, %if.end28.cleanup_crit_edge ], [ null, %if.end32.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1) #7
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda826x_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %1) #7
  %2 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %tuner_priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda826x_sleep(ptr noundef %fe) #0 align 64 {
entry:
  %buf = alloca [2 x i8], align 2
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #7
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 141, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
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
  %buf1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %10 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buf, ptr %buf1, align 4
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %has_loopthrough = getelementptr inbounds %struct.tda826x_priv, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %has_loopthrough to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %has_loopthrough, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool5.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool5.not, label %if.then6, label %do.end4.if.end7_crit_edge

do.end4.if.end7_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -83, ptr %arrayidx, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.end4.if.end7_crit_edge
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %14 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %if.end7.if.end13_crit_edge, label %if.then9

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = call i32 %15(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end7.if.end13_crit_edge
  %i2c = getelementptr inbounds %struct.tda826x_priv, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c, align 4
  %call14 = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call14)
  %cmp.not = icmp eq i32 %call14, 1
  br i1 %cmp.not, label %if.end13.if.end28_crit_edge, label %do.body17

if.end13.if.end28_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

do.body17:                                        ; preds = %if.end13
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool18.not = icmp eq i32 %18, 0
  br i1 %tobool18.not, label %do.body17.if.end28_crit_edge, label %do.end22

do.body17.if.end28_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

do.end22:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3) #10
  br label %if.end28

if.end28:                                         ; preds = %do.end22, %do.body17.if.end28_crit_edge, %if.end13.if.end28_crit_edge
  %19 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool31.not = icmp eq ptr %20, null
  br i1 %tobool31.not, label %if.end28.if.end36_crit_edge, label %if.then32

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %call35 = call i32 %20(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end28.if.end36_crit_edge
  %spec.select = select i1 %cmp.not, i32 0, i32 %call14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #7
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda826x_set_params(ptr noundef %fe) #0 align 64 {
entry:
  %buf = alloca [11 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buf) #7
  %2 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 5
  %7 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 6
  %8 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 7
  %9 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 8
  %10 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 9
  %11 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 10
  %12 = call ptr @memset(ptr %buf, i32 255, i32 11)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %13 = getelementptr inbounds i8, ptr %msg, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %13, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  %conv = trunc i32 %16 to i16
  %17 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %19 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 11, ptr %len, align 4
  %buf1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %20 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %buf, ptr %buf1, align 4
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %22 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dtv_property_cache, align 4
  %add = add i32 %23, 999
  %div5 = udiv i32 %add, 1000
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %24 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %symbol_rate, align 4
  %div6 = udiv i32 %25, 1000
  %mul = mul nuw i32 %div6, 878
  %add7 = add nuw i32 %mul, 6500000
  %div8 = udiv i32 %add7, 1000000
  %26 = call i32 @llvm.umin.i32(i32 %div8, i32 35)
  %27 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %buf, align 1
  %has_loopthrough = getelementptr inbounds %struct.tda826x_priv, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %has_loopthrough to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load = load i8, ptr %has_loopthrough, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool18.not = icmp sgt i8 %bf.load, -1
  %spec.store.select = select i1 %tobool18.not, i8 41, i8 9
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %spec.store.select, ptr %2, align 1
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 43, ptr %3, align 1
  %shr = lshr i32 %div5, 7
  %conv25 = trunc i32 %shr to i8
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv25, ptr %4, align 1
  %div5.tr = trunc i32 %div5 to i8
  %conv27 = shl i8 %div5.tr, 1
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv27, ptr %5, align 1
  %.tr = trunc i32 %26 to i8
  %33 = shl i8 %.tr, 3
  %conv31 = add i8 %33, -25
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv31, ptr %6, align 1
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -2, ptr %7, align 1
  %36 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -125, ptr %8, align 1
  %37 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -128, ptr %9, align 1
  %38 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 26, ptr %10, align 1
  %39 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -44, ptr %11, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %40 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool38.not = icmp eq ptr %41, null
  br i1 %tobool38.not, label %do.end4.if.end43_crit_edge, label %if.then39

do.end4.if.end43_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then39:                                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = call i32 %41(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %do.end4.if.end43_crit_edge
  %i2c = getelementptr inbounds %struct.tda826x_priv, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i2c, align 4
  %call44 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call44)
  %cmp45.not = icmp eq i32 %call44, 1
  br i1 %cmp45.not, label %if.end43.if.end59_crit_edge, label %do.body48

if.end43.if.end59_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

do.body48:                                        ; preds = %if.end43
  %44 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool49.not = icmp eq i32 %44, 0
  br i1 %tobool49.not, label %do.body48.if.end59_crit_edge, label %do.end53

do.body48.if.end59_crit_edge:                     ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

do.end53:                                         ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #9
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7) #10
  br label %if.end59

if.end59:                                         ; preds = %do.end53, %do.body48.if.end59_crit_edge, %if.end43.if.end59_crit_edge
  %45 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool62.not = icmp eq ptr %46, null
  br i1 %tobool62.not, label %if.end59.if.end67_crit_edge, label %if.then63

if.end59.if.end67_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %call66 = call i32 %46(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %if.end59.if.end67_crit_edge
  %mul68 = mul nuw i32 %div5, 1000
  %frequency69 = getelementptr inbounds %struct.tda826x_priv, ptr %1, i32 0, i32 3
  %47 = ptrtoint ptr %frequency69 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mul68, ptr %frequency69, align 4
  %spec.select = select i1 %cmp45.not, i32 0, i32 %call44
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf) #7
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tda826x_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %frequency1 = getelementptr inbounds %struct.tda826x_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %frequency1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency1, align 4
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !13, !15, !17, !19, !20, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/tda826x.c", i32 140, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @tda826x_attach._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @tda826x_attach._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_tda826x_attach, !7, !"__ksymtab_tda826x_attach", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/tda826x.c", i32 167, i32 1}
!8 = !{ptr @__param_debug, !9, !"__param_debug", i1 false, i1 false}
!9 = !{!"../drivers/media/dvb-frontends/tda826x.c", i32 169, i32 1}
!10 = !{ptr @__UNIQUE_ID_debugtype290, !9, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_debug291, !12, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/tda826x.c", i32 170, i32 1}
!13 = !{ptr @__UNIQUE_ID_description292, !14, !"__UNIQUE_ID_description292", i1 false, i1 false}
!14 = !{!"../drivers/media/dvb-frontends/tda826x.c", i32 172, i32 1}
!15 = !{ptr @__UNIQUE_ID_author293, !16, !"__UNIQUE_ID_author293", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/tda826x.c", i32 173, i32 1}
!17 = !{ptr @__UNIQUE_ID_file294, !18, !"__UNIQUE_ID_file294", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-frontends/tda826x.c", i32 174, i32 1}
!19 = !{ptr @__UNIQUE_ID_license295, !18, !"__UNIQUE_ID_license295", i1 false, i1 false}
!20 = !{ptr @debug, !21, !"debug", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/tda826x.c", i32 17, i32 12}
!22 = !{ptr @tda826x_tuner_ops, !23, !"tda826x_tuner_ops", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/tda826x.c", i32 118, i32 35}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/tda826x.c", i32 44, i32 2}
!26 = !{ptr @tda826x_sleep._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @tda826x_sleep._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/dvb-frontends/tda826x.c", i32 52, i32 3}
!30 = !{ptr @tda826x_sleep._entry.4, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @tda826x_sleep._entry_ptr.6, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/tda826x.c", i32 71, i32 2}
!34 = !{ptr @tda826x_set_params._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @tda826x_set_params._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @tda826x_set_params._entry.8, !37, !"_entry", i1 false, i1 false}
!37 = !{!"../drivers/media/dvb-frontends/tda826x.c", i32 101, i32 3}
!38 = !{ptr @tda826x_set_params._entry_ptr.9, !37, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @__param_str_debug, !9, !"__param_str_debug", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
