; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/stb6000.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/stb6000.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+stb6000_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_stb6000_attach\09\09\09\09"
module asm "\09.long\09__crc_stb6000_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stb6000_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22stb6000_attach\22\09\09\09\09\09"
module asm "__kstrtabns_stb6000_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.78 }
%union.anon.78 = type { ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.stb6000_priv = type { i32, ptr, i32 }

@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@stb6000_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017stb6000: %s:\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stb6000_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/stb6000.c\00", [58 x i8] zeroinitializer }, align 32
@stb6000_attach._entry_ptr = internal global ptr @stb6000_attach._entry, section ".printk_index", align 4
@stb6000_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"ST STB6000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 0, i32 0, i32 0, i32 0 }, ptr @stb6000_release, ptr null, ptr @stb6000_sleep, ptr null, ptr null, ptr @stb6000_set_params, ptr null, ptr null, ptr @stb6000_get_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_stb6000_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_stb6000_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_stb6000_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stb6000_attach to i32), ptr @__kstrtab_stb6000_attach, ptr @__kstrtabns_stb6000_attach }, section "___ksymtab+stb6000_attach", align 4
@__param_str_debug = internal constant [14 x i8] c"stb6000.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [27 x i8] c"stb6000.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [65 x i8] c"stb6000.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [39 x i8] c"stb6000.description=DVB STB6000 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [51 x i8] c"stb6000.author=Igor M. Liplianin <liplianin@me.by>\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [49 x i8] c"stb6000.file=drivers/media/dvb-frontends/stb6000\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"stb6000.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@stb6000_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stb6000_sleep\00", [18 x i8] zeroinitializer }, align 32
@stb6000_sleep._entry_ptr = internal global ptr @stb6000_sleep._entry, section ".printk_index", align 4
@stb6000_sleep._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.3, ptr @.str.2, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017stb6000: %s: i2c error\0A\00", [38 x i8] zeroinitializer }, align 32
@stb6000_sleep._entry_ptr.6 = internal global ptr @stb6000_sleep._entry.4, section ".printk_index", align 4
@stb6000_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.7, ptr @.str.2, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stb6000_set_params\00", [45 x i8] zeroinitializer }, align 32
@stb6000_set_params._entry_ptr = internal global ptr @stb6000_set_params._entry, section ".printk_index", align 4
@stb6000_set_params._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.7, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb6000_set_params._entry_ptr.9 = internal global ptr @stb6000_set_params._entry.8, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@stb6000_set_params._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.7, ptr @.str.2, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb6000_set_params._entry_ptr.11 = internal global ptr @stb6000_set_params._entry.10, section ".printk_index", align 4
@___asan_gen_.12 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 17, i32 12 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 208, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"stb6000_tuner_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 175, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 49, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 56, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 80, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 137, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private constant [41 x i8] c"../drivers/media/dvb-frontends/stb6000.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 155, i32 4 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_stb6000_attach, ptr @__param_debug, ptr @stb6000_attach._entry, ptr @stb6000_attach._entry_ptr, ptr @stb6000_set_params._entry, ptr @stb6000_set_params._entry.10, ptr @stb6000_set_params._entry.8, ptr @stb6000_set_params._entry_ptr, ptr @stb6000_set_params._entry_ptr.11, ptr @stb6000_set_params._entry_ptr.9, ptr @stb6000_sleep._entry, ptr @stb6000_sleep._entry.4, ptr @stb6000_sleep._entry_ptr, ptr @stb6000_sleep._entry_ptr.6, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @stb6000_tuner_ops, ptr @.str.3, ptr @.str.5, ptr @.str.7], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6000_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6000_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6000_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6000_sleep._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6000_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6000_set_params._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6000_set_params._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @stb6000_attach(ptr noundef %fe, i32 noundef %addr, ptr noundef %i2c) #0 align 64 {
entry:
  %b0 = alloca [1 x i8], align 1
  %b1 = alloca [2 x i8], align 2
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0) #7
  %0 = ptrtoint ptr %b0 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %b0, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1) #7
  %1 = ptrtoint ptr %b1 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %b1, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #7
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
  store i16 0, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %b0, ptr %buf, align 4
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
  store i16 2, ptr %len5, align 4
  %buf6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %11 = ptrtoint ptr %buf6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %b1, ptr %buf6, align 4
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %13 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool11.not = icmp eq ptr %14, null
  br i1 %tobool11.not, label %do.end10.if.end16_crit_edge, label %if.then12

do.end10.if.end16_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then12:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = call i32 %14(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %do.end10.if.end16_crit_edge
  %call18 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg, i32 noundef 2) #7
  %15 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool21.not = icmp eq ptr %16, null
  br i1 %tobool21.not, label %if.end16.if.end26_crit_edge, label %if.then22

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = call i32 %16(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.end16.if.end26_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call18)
  %cmp.not = icmp eq i32 %call18, 2
  br i1 %cmp.not, label %if.end29, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %if.end26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 12) #11
  %cmp31 = icmp eq ptr %call7.i.i, null
  br i1 %cmp31, label %if.end29.cleanup_crit_edge, label %if.end34

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %addr, ptr %call7.i.i, align 8
  %i2c35 = getelementptr inbounds %struct.stb6000_priv, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %i2c35 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %i2c, ptr %i2c35, align 4
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %20 = call ptr @memcpy(ptr %tuner_ops, ptr @stb6000_tuner_ops, i32 220)
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %21 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end29.cleanup_crit_edge, %if.end26.cleanup_crit_edge
  %retval.0 = phi ptr [ %fe, %if.end34 ], [ null, %if.end26.cleanup_crit_edge ], [ null, %if.end29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0) #7
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
define internal void @stb6000_release(ptr nocapture noundef %fe) #0 align 64 {
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
define internal i32 @stb6000_sleep(ptr noundef %fe) #0 align 64 {
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
  store i16 2560, ptr %buf, align 2
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
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %12 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool5.not = icmp eq ptr %13, null
  br i1 %tobool5.not, label %do.end4.if.end10_crit_edge, label %if.then6

do.end4.if.end10_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then6:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = call i32 %13(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %do.end4.if.end10_crit_edge
  %i2c = getelementptr inbounds %struct.stb6000_priv, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c, align 4
  %call11 = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11)
  %cmp.not = icmp eq i32 %call11, 1
  br i1 %cmp.not, label %if.end10.if.end25_crit_edge, label %do.body14

if.end10.if.end25_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

do.body14:                                        ; preds = %if.end10
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool15.not = icmp eq i32 %16, 0
  br i1 %tobool15.not, label %do.body14.if.end25_crit_edge, label %do.end19

do.body14.if.end25_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

do.end19:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3) #10
  br label %if.end25

if.end25:                                         ; preds = %do.end19, %do.body14.if.end25_crit_edge, %if.end10.if.end25_crit_edge
  %17 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool28.not = icmp eq ptr %18, null
  br i1 %tobool28.not, label %if.end25.if.end33_crit_edge, label %if.then29

if.end25.if.end33_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = call i32 %18(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.end25.if.end33_crit_edge
  %spec.select = select i1 %cmp.not, i32 0, i32 %call11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #7
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb6000_set_params(ptr noundef %fe) #0 align 64 {
entry:
  %buf = alloca [12 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf) #7
  %2 = getelementptr inbounds [12 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [12 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [12 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [12 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [12 x i8], ptr %buf, i32 0, i32 5
  %7 = getelementptr inbounds [12 x i8], ptr %buf, i32 0, i32 6
  %8 = getelementptr inbounds [12 x i8], ptr %buf, i32 0, i32 7
  %9 = getelementptr inbounds [12 x i8], ptr %buf, i32 0, i32 8
  %10 = getelementptr inbounds [12 x i8], ptr %buf, i32 0, i32 9
  %11 = getelementptr inbounds [12 x i8], ptr %buf, i32 0, i32 10
  %12 = getelementptr inbounds [12 x i8], ptr %buf, i32 0, i32 11
  %13 = call ptr @memset(ptr %buf, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %14 = getelementptr inbounds i8, ptr %msg, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %14, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  %conv = trunc i32 %17 to i16
  %18 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %20 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 12, ptr %len, align 4
  %buf1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %21 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buf, ptr %buf1, align 4
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %23 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dtv_property_cache, align 4
  %div = udiv i32 %24, 1000
  %25 = add i32 %24, -950000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1201000, i32 %25)
  %26 = icmp ult i32 %25, 1201000
  br i1 %26, label %if.then13, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13:                                        ; preds = %do.end4
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %27 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %symbol_rate, align 4
  %div5 = udiv i32 %28, 1000000
  %29 = call i32 @llvm.umin.i32(i32 %div5, i32 31)
  %30 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1950000, i32 %24)
  %cmp15 = icmp ult i32 %24, 1950000
  %spec.select = select i1 %cmp15, i8 -86, i8 -84
  call void @__sanitizer_cov_trace_const_cmp4(i32 1800000, i32 %24)
  %cmp20 = icmp ult i32 %24, 1800000
  %storemerge210 = select i1 %cmp20, i8 -88, i8 %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 1650000, i32 %24)
  %cmp25 = icmp ult i32 %24, 1650000
  %storemerge211 = select i1 %cmp25, i8 -90, i8 %storemerge210
  call void @__sanitizer_cov_trace_const_cmp4(i32 1530000, i32 %24)
  %cmp30 = icmp ult i32 %24, 1530000
  %storemerge212 = select i1 %cmp30, i8 -91, i8 %storemerge211
  call void @__sanitizer_cov_trace_const_cmp4(i32 1470000, i32 %24)
  %cmp35 = icmp ult i32 %24, 1470000
  %storemerge213 = select i1 %cmp35, i8 -92, i8 %storemerge212
  call void @__sanitizer_cov_trace_const_cmp4(i32 1370000, i32 %24)
  %cmp40 = icmp ult i32 %24, 1370000
  %storemerge214 = select i1 %cmp40, i8 -94, i8 %storemerge213
  call void @__sanitizer_cov_trace_const_cmp4(i32 1300000, i32 %24)
  %cmp45 = icmp ult i32 %24, 1300000
  %storemerge215 = select i1 %cmp45, i8 -95, i8 %storemerge214
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200000, i32 %24)
  %cmp50 = icmp ult i32 %24, 1200000
  %storemerge216 = select i1 %cmp50, i8 -96, i8 %storemerge215
  call void @__sanitizer_cov_trace_const_cmp4(i32 1075000, i32 %24)
  %cmp55 = icmp ult i32 %24, 1075000
  %storemerge217 = select i1 %cmp55, i8 -68, i8 %storemerge216
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %24)
  %cmp60 = icmp ult i32 %24, 1000000
  %storemerge218 = select i1 %cmp60, i8 -70, i8 %storemerge217
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %storemerge218, ptr %2, align 1
  %n.0.v = select i1 %cmp55, i32 8000, i32 16000
  %n.0 = udiv i32 %24, %n.0.v
  %m.0 = select i1 %cmp55, i32 2, i32 1
  %shr = lshr i32 %n.0, 1
  %conv71 = trunc i32 %shr to i8
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv71, ptr %3, align 1
  %and = shl nuw nsw i32 %n.0, 7
  %mul = mul nuw nsw i32 %m.0, %div
  %mul73.neg = mul nuw nsw i32 %n.0, 240
  %sub = add nuw nsw i32 %mul73.neg, %mul
  %or = or i32 %sub, %and
  %33 = trunc i32 %or to i8
  %conv75 = or i8 %33, 96
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv75, ptr %4, align 1
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 4, ptr %5, align 1
  %36 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 14, ptr %6, align 1
  %conv79 = trunc i32 %29 to i8
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv79, ptr %7, align 1
  %38 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -40, ptr %8, align 1
  %39 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -48, ptr %9, align 1
  %40 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 80, ptr %10, align 1
  %41 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -21, ptr %11, align 1
  %42 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 79, ptr %12, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %43 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool86.not = icmp eq ptr %44, null
  br i1 %tobool86.not, label %if.then13.if.end91_crit_edge, label %if.then87

if.then13.if.end91_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

if.then87:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %call90 = call i32 %44(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end91

if.end91:                                         ; preds = %if.then87, %if.then13.if.end91_crit_edge
  %i2c = getelementptr inbounds %struct.stb6000_priv, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i2c, align 4
  %call92 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call92)
  %cmp93.not = icmp eq i32 %call92, 1
  br i1 %cmp93.not, label %if.end91.if.end107_crit_edge, label %do.body96

if.end91.if.end107_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

do.body96:                                        ; preds = %if.end91
  %47 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool97.not = icmp eq i32 %47, 0
  br i1 %tobool97.not, label %do.body96.if.end107_crit_edge, label %do.end101

do.body96.if.end107_crit_edge:                    ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

do.end101:                                        ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #9
  %call103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7) #10
  br label %if.end107

if.end107:                                        ; preds = %do.end101, %do.body96.if.end107_crit_edge, %if.end91.if.end107_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %48(i32 noundef 2147480) #7
  %49 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool110.not = icmp eq ptr %50, null
  br i1 %tobool110.not, label %if.end107.if.end115_crit_edge, label %if.then111

if.end107.if.end115_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end115

if.then111:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  %call114 = call i32 %50(ptr noundef %fe, i32 noundef 0) #7
  %51 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pr = load ptr, ptr %i2c_gate_ctrl, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then111, %if.end107.if.end115_crit_edge
  %52 = phi ptr [ %.pr, %if.then111 ], [ null, %if.end107.if.end115_crit_edge ]
  %53 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 7, ptr %buf, align 1
  %54 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -33, ptr %2, align 1
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -48, ptr %3, align 1
  %56 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 80, ptr %4, align 1
  %57 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -5, ptr %5, align 1
  %58 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 5, ptr %len, align 4
  %tobool124.not = icmp eq ptr %52, null
  br i1 %tobool124.not, label %if.end115.if.end129_crit_edge, label %if.then125

if.end115.if.end129_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end129

if.then125:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  %call128 = call i32 %52(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end129

if.end129:                                        ; preds = %if.then125, %if.end115.if.end129_crit_edge
  %59 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i2c, align 4
  %call131 = call i32 @i2c_transfer(ptr noundef %60, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call131)
  %cmp132.not = icmp eq i32 %call131, 1
  br i1 %cmp132.not, label %if.end129.if.end146_crit_edge, label %do.body135

if.end129.if.end146_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146

do.body135:                                       ; preds = %if.end129
  %61 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool136.not = icmp eq i32 %61, 0
  br i1 %tobool136.not, label %do.body135.if.end146_crit_edge, label %do.end140

do.body135.if.end146_crit_edge:                   ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146

do.end140:                                        ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #9
  %call142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7) #10
  br label %if.end146

if.end146:                                        ; preds = %do.end140, %do.body135.if.end146_crit_edge, %if.end129.if.end146_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %62(i32 noundef 2147480) #7
  %63 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool149.not = icmp eq ptr %64, null
  br i1 %tobool149.not, label %if.end146.if.end154_crit_edge, label %if.then150

if.end146.if.end154_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end154

if.then150:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #9
  %call153 = call i32 %64(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end154

if.end154:                                        ; preds = %if.then150, %if.end146.if.end154_crit_edge
  %mul155 = mul nuw i32 %div, 1000
  %frequency156 = getelementptr inbounds %struct.stb6000_priv, ptr %1, i32 0, i32 2
  %65 = ptrtoint ptr %frequency156 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %mul155, ptr %frequency156, align 4
  %spec.select219 = select i1 %cmp132.not, i32 0, i32 %call131
  br label %cleanup

cleanup:                                          ; preds = %if.end154, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select219, %if.end154 ], [ -1, %do.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stb6000_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %frequency1 = getelementptr inbounds %struct.stb6000_priv, ptr %1, i32 0, i32 2
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

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !13, !15, !17, !19, !20, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/stb6000.c", i32 208, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @stb6000_attach._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @stb6000_attach._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_stb6000_attach, !7, !"__ksymtab_stb6000_attach", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/stb6000.c", i32 235, i32 1}
!8 = !{ptr @__param_debug, !9, !"__param_debug", i1 false, i1 false}
!9 = !{!"../drivers/media/dvb-frontends/stb6000.c", i32 237, i32 1}
!10 = !{ptr @__UNIQUE_ID_debugtype290, !9, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_debug291, !12, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/stb6000.c", i32 238, i32 1}
!13 = !{ptr @__UNIQUE_ID_description292, !14, !"__UNIQUE_ID_description292", i1 false, i1 false}
!14 = !{!"../drivers/media/dvb-frontends/stb6000.c", i32 240, i32 1}
!15 = !{ptr @__UNIQUE_ID_author293, !16, !"__UNIQUE_ID_author293", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/stb6000.c", i32 241, i32 1}
!17 = !{ptr @__UNIQUE_ID_file294, !18, !"__UNIQUE_ID_file294", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-frontends/stb6000.c", i32 242, i32 1}
!19 = !{ptr @__UNIQUE_ID_license295, !18, !"__UNIQUE_ID_license295", i1 false, i1 false}
!20 = !{ptr @debug, !21, !"debug", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/stb6000.c", i32 17, i32 12}
!22 = !{ptr @stb6000_tuner_ops, !23, !"stb6000_tuner_ops", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/stb6000.c", i32 175, i32 35}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/stb6000.c", i32 49, i32 2}
!26 = !{ptr @stb6000_sleep._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @stb6000_sleep._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/dvb-frontends/stb6000.c", i32 56, i32 3}
!30 = !{ptr @stb6000_sleep._entry.4, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @stb6000_sleep._entry_ptr.6, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/stb6000.c", i32 80, i32 2}
!34 = !{ptr @stb6000_set_params._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @stb6000_set_params._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @stb6000_set_params._entry.8, !37, !"_entry", i1 false, i1 false}
!37 = !{!"../drivers/media/dvb-frontends/stb6000.c", i32 137, i32 4}
!38 = !{ptr @stb6000_set_params._entry_ptr.9, !37, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @stb6000_set_params._entry.10, !40, !"_entry", i1 false, i1 false}
!40 = !{!"../drivers/media/dvb-frontends/stb6000.c", i32 155, i32 4}
!41 = !{ptr @stb6000_set_params._entry_ptr.11, !40, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @__param_str_debug, !9, !"__param_str_debug", i1 false, i1 false}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
