; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/s5h1432.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/s5h1432.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+s5h1432_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_s5h1432_attach\09\09\09\09"
module asm "\09.long\09__crc_s5h1432_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s5h1432_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22s5h1432_attach\22\09\09\09\09\09"
module asm "__kstrtabns_s5h1432_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.78 }
%union.anon.78 = type { ptr }
%struct.s5h1432_state = type { ptr, ptr, %struct.dvb_frontend, i32, i8, i32, i32, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.s5h1432_config = type { i8, i8, i16, i16, i16, i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@s5h1432_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016 Enter s5h1432_attach(). attach success!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s5h1432_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/s5h1432.c\00", [58 x i8] zeroinitializer }, align 32
@s5h1432_attach._entry_ptr = internal global ptr @s5h1432_attach._entry, section ".printk_index", align 4
@s5h1432_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Samsung s5h1432 DVB-T Frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 177000000, i32 858000000, i32 166666, i32 0, i32 0, i32 0, i32 0, i32 1075523246 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @s5h1432_release, ptr null, ptr @s5h1432_init, ptr @s5h1432_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5h1432_set_frontend, ptr @s5h1432_get_tune_settings, ptr null, ptr @s5h1432_read_status, ptr @s5h1432_read_ber, ptr @s5h1432_read_signal_strength, ptr @s5h1432_read_snr, ptr @s5h1432_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__kstrtab_s5h1432_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_s5h1432_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_s5h1432_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s5h1432_attach to i32), ptr @__kstrtab_s5h1432_attach, ptr @__kstrtabns_s5h1432_attach }, section "___ksymtab+s5h1432_attach", align 4
@__param_str_debug = internal constant [14 x i8] c"s5h1432.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [27 x i8] c"s5h1432.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [49 x i8] c"s5h1432.parm=debug:Enable verbose debug messages\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [61 x i8] c"s5h1432.description=Samsung s5h1432 DVB-T Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [24 x i8] c"s5h1432.author=Bill Liu\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [49 x i8] c"s5h1432.file=drivers/media/dvb-frontends/s5h1432\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"s5h1432.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@s5h1432_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016 s5h1432_init().\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"s5h1432_init\00", [19 x i8] zeroinitializer }, align 32
@s5h1432_init._entry_ptr = internal global ptr @s5h1432_init._entry, section ".printk_index", align 4
@s5h1432_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: writereg error 0x%02x 0x%02x 0x%04x, ret == %i)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s5h1432_writereg\00", [47 x i8] zeroinitializer }, align 32
@s5h1432_writereg._entry_ptr = internal global ptr @s5h1432_writereg._entry, section ".printk_index", align 4
@s5h1432_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: readreg error (ret == %i)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s5h1432_readreg\00", [16 x i8] zeroinitializer }, align 32
@s5h1432_readreg._entry_ptr = internal global ptr @s5h1432_readreg._entry, section ".printk_index", align 4
@s5h1432_set_IF._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016Default IFFreq %d :reg value = 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s5h1432_set_IF\00", [17 x i8] zeroinitializer }, align 32
@s5h1432_set_IF._entry_ptr = internal global ptr @s5h1432_set_IF._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 7, i64 8]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 338, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [12 x i8] c"s5h1432_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 360, i32 38 }
@___asan_gen_.28 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 35, i32 12 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 241, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 53, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 73, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [41 x i8] c"../drivers/media/dvb-frontends/s5h1432.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 150, i32 4 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_s5h1432_attach, ptr @__param_debug, ptr @s5h1432_attach._entry, ptr @s5h1432_attach._entry_ptr, ptr @s5h1432_init._entry, ptr @s5h1432_init._entry_ptr, ptr @s5h1432_readreg._entry, ptr @s5h1432_readreg._entry_ptr, ptr @s5h1432_set_IF._entry, ptr @s5h1432_set_IF._entry_ptr, ptr @s5h1432_writereg._entry, ptr @s5h1432_writereg._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @s5h1432_ops, ptr @debug, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1432_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1432_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1432_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1432_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1432_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1432_set_IF._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @s5h1432_attach(ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 1068) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %config2 = getelementptr inbounds %struct.s5h1432_state, ptr %call7.i, i32 0, i32 1
  %1 = ptrtoint ptr %config2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %config, ptr %config2, align 4
  %2 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %call7.i, align 8
  %current_modulation = getelementptr inbounds %struct.s5h1432_state, ptr %call7.i, i32 0, i32 3
  %3 = ptrtoint ptr %current_modulation to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %current_modulation, align 8
  %inversion = getelementptr inbounds %struct.s5h1432_config, ptr %config, i32 0, i32 5
  %4 = ptrtoint ptr %inversion to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %inversion, align 2
  %inversion5 = getelementptr inbounds %struct.s5h1432_state, ptr %call7.i, i32 0, i32 7
  %6 = ptrtoint ptr %inversion5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %inversion5, align 8
  %frontend = getelementptr inbounds %struct.s5h1432_state, ptr %call7.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.s5h1432_state, ptr %call7.i, i32 0, i32 2, i32 1
  %7 = call ptr @memcpy(ptr %ops, ptr @s5h1432_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.s5h1432_state, ptr %call7.i, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i, ptr %demodulator_priv, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %frontend, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5h1432_release(ptr nocapture noundef readonly %fe) #0 align 64 {
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5h1432_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i304 = alloca [2 x i8], align 1
  %msg.i305 = alloca %struct.i2c_msg, align 4
  %buf.i294 = alloca [2 x i8], align 1
  %msg.i295 = alloca %struct.i2c_msg, align 4
  %buf.i284 = alloca [2 x i8], align 1
  %msg.i285 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i277 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i267 = alloca [2 x i8], align 1
  %msg.i268 = alloca %struct.i2c_msg, align 4
  %buf.i257 = alloca [2 x i8], align 1
  %msg.i258 = alloca %struct.i2c_msg, align 4
  %buf.i247 = alloca [2 x i8], align 1
  %msg.i248 = alloca %struct.i2c_msg, align 4
  %buf.i237 = alloca [2 x i8], align 1
  %msg.i238 = alloca %struct.i2c_msg, align 4
  %buf.i227 = alloca [2 x i8], align 1
  %msg.i228 = alloca %struct.i2c_msg, align 4
  %buf.i217 = alloca [2 x i8], align 1
  %msg.i218 = alloca %struct.i2c_msg, align 4
  %buf.i207 = alloca [2 x i8], align 1
  %msg.i208 = alloca %struct.i2c_msg, align 4
  %buf.i197 = alloca [2 x i8], align 1
  %msg.i198 = alloca %struct.i2c_msg, align 4
  %buf.i187 = alloca [2 x i8], align 1
  %msg.i188 = alloca %struct.i2c_msg, align 4
  %buf.i177 = alloca [2 x i8], align 1
  %msg.i178 = alloca %struct.i2c_msg, align 4
  %buf.i167 = alloca [2 x i8], align 1
  %msg.i168 = alloca %struct.i2c_msg, align 4
  %buf.i157 = alloca [2 x i8], align 1
  %msg.i158 = alloca %struct.i2c_msg, align 4
  %buf.i147 = alloca [2 x i8], align 1
  %msg.i148 = alloca %struct.i2c_msg, align 4
  %buf.i137 = alloca [2 x i8], align 1
  %msg.i138 = alloca %struct.i2c_msg, align 4
  %buf.i127 = alloca [2 x i8], align 1
  %msg.i128 = alloca %struct.i2c_msg, align 4
  %buf.i117 = alloca [2 x i8], align 1
  %msg.i118 = alloca %struct.i2c_msg, align 4
  %buf.i107 = alloca [2 x i8], align 1
  %msg.i108 = alloca %struct.i2c_msg, align 4
  %buf.i97 = alloca [2 x i8], align 1
  %msg.i98 = alloca %struct.i2c_msg, align 4
  %buf.i87 = alloca [2 x i8], align 1
  %msg.i88 = alloca %struct.i2c_msg, align 4
  %buf.i77 = alloca [2 x i8], align 1
  %msg.i78 = alloca %struct.i2c_msg, align 4
  %buf.i67 = alloca [2 x i8], align 1
  %msg.i68 = alloca %struct.i2c_msg, align 4
  %buf.i57 = alloca [2 x i8], align 1
  %msg.i58 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %current_frequency = getelementptr inbounds %struct.s5h1432_state, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %current_frequency to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %current_frequency, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %3 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %buf.i, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -88, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 196607, ptr %6, align 4
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %10 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buf.i, ptr %buf2.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %12, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %entry.s5h1432_writereg.exit_crit_edge, label %do.end.i

entry.s5h1432_writereg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_writereg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 4, i32 noundef 168, i32 noundef %call.i) #9
  br label %s5h1432_writereg.exit

s5h1432_writereg.exit:                            ; preds = %do.end.i, %entry.s5h1432_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i57) #6
  %13 = getelementptr inbounds [2 x i8], ptr %buf.i57, i32 0, i32 1
  %14 = ptrtoint ptr %buf.i57 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 5, ptr %buf.i57, align 1
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i58) #6
  %16 = getelementptr inbounds i8, ptr %msg.i58, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 196607, ptr %16, align 4
  %18 = ptrtoint ptr %msg.i58 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %msg.i58, align 4
  %flags.i59 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i58, i32 0, i32 1
  %19 = ptrtoint ptr %flags.i59 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %flags.i59, align 2
  %buf2.i61 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i58, i32 0, i32 3
  %20 = ptrtoint ptr %buf2.i61 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %buf.i57, ptr %buf2.i61, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i62 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i58, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i62)
  %cmp.not.i63 = icmp eq i32 %call.i62, 1
  br i1 %cmp.not.i63, label %s5h1432_writereg.exit.s5h1432_writereg.exit66_crit_edge, label %do.end.i65

s5h1432_writereg.exit.s5h1432_writereg.exit66_crit_edge: ; preds = %s5h1432_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_writereg.exit66

do.end.i65:                                       ; preds = %s5h1432_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 5, i32 noundef 1, i32 noundef %call.i62) #9
  br label %s5h1432_writereg.exit66

s5h1432_writereg.exit66:                          ; preds = %do.end.i65, %s5h1432_writereg.exit.s5h1432_writereg.exit66_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i58) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i57) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i67) #6
  %23 = getelementptr inbounds [2 x i8], ptr %buf.i67, i32 0, i32 1
  %24 = ptrtoint ptr %buf.i67 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 7, ptr %buf.i67, align 1
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 112, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i68) #6
  %26 = getelementptr inbounds i8, ptr %msg.i68, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 196607, ptr %26, align 4
  %28 = ptrtoint ptr %msg.i68 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %msg.i68, align 4
  %flags.i69 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i68, i32 0, i32 1
  %29 = ptrtoint ptr %flags.i69 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %flags.i69, align 2
  %buf2.i71 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i68, i32 0, i32 3
  %30 = ptrtoint ptr %buf2.i71 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %buf.i67, ptr %buf2.i71, align 4
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %call.i72 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %msg.i68, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i72)
  %cmp.not.i73 = icmp eq i32 %call.i72, 1
  br i1 %cmp.not.i73, label %s5h1432_writereg.exit66.s5h1432_writereg.exit76_crit_edge, label %do.end.i75

s5h1432_writereg.exit66.s5h1432_writereg.exit76_crit_edge: ; preds = %s5h1432_writereg.exit66
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_writereg.exit76

do.end.i75:                                       ; preds = %s5h1432_writereg.exit66
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 7, i32 noundef 112, i32 noundef %call.i72) #9
  br label %s5h1432_writereg.exit76

s5h1432_writereg.exit76:                          ; preds = %do.end.i75, %s5h1432_writereg.exit66.s5h1432_writereg.exit76_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i68) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i67) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i77) #6
  %33 = getelementptr inbounds [2 x i8], ptr %buf.i77, i32 0, i32 1
  %34 = ptrtoint ptr %buf.i77 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 25, ptr %buf.i77, align 1
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -128, ptr %33, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i78) #6
  %36 = getelementptr inbounds i8, ptr %msg.i78, i32 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 196607, ptr %36, align 4
  %38 = ptrtoint ptr %msg.i78 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %msg.i78, align 4
  %flags.i79 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i78, i32 0, i32 1
  %39 = ptrtoint ptr %flags.i79 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %flags.i79, align 2
  %buf2.i81 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i78, i32 0, i32 3
  %40 = ptrtoint ptr %buf2.i81 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %buf.i77, ptr %buf2.i81, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %call.i82 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg.i78, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i82)
  %cmp.not.i83 = icmp eq i32 %call.i82, 1
  br i1 %cmp.not.i83, label %s5h1432_writereg.exit76.s5h1432_writereg.exit86_crit_edge, label %do.end.i85

s5h1432_writereg.exit76.s5h1432_writereg.exit86_crit_edge: ; preds = %s5h1432_writereg.exit76
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_writereg.exit86

do.end.i85:                                       ; preds = %s5h1432_writereg.exit76
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 25, i32 noundef 128, i32 noundef %call.i82) #9
  br label %s5h1432_writereg.exit86

s5h1432_writereg.exit86:                          ; preds = %do.end.i85, %s5h1432_writereg.exit76.s5h1432_writereg.exit86_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i78) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i77) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i87) #6
  %43 = getelementptr inbounds [2 x i8], ptr %buf.i87, i32 0, i32 1
  %44 = ptrtoint ptr %buf.i87 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 27, ptr %buf.i87, align 1
  %45 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -99, ptr %43, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i88) #6
  %46 = getelementptr inbounds i8, ptr %msg.i88, i32 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 196607, ptr %46, align 4
  %48 = ptrtoint ptr %msg.i88 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 1, ptr %msg.i88, align 4
  %flags.i89 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i88, i32 0, i32 1
  %49 = ptrtoint ptr %flags.i89 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %flags.i89, align 2
  %buf2.i91 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i88, i32 0, i32 3
  %50 = ptrtoint ptr %buf2.i91 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %buf.i87, ptr %buf2.i91, align 4
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %call.i92 = call i32 @i2c_transfer(ptr noundef %52, ptr noundef nonnull %msg.i88, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i92)
  %cmp.not.i93 = icmp eq i32 %call.i92, 1
  br i1 %cmp.not.i93, label %s5h1432_writereg.exit86.s5h1432_writereg.exit96_crit_edge, label %do.end.i95

s5h1432_writereg.exit86.s5h1432_writereg.exit96_crit_edge: ; preds = %s5h1432_writereg.exit86
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_writereg.exit96

do.end.i95:                                       ; preds = %s5h1432_writereg.exit86
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 27, i32 noundef 157, i32 noundef %call.i92) #9
  br label %s5h1432_writereg.exit96

s5h1432_writereg.exit96:                          ; preds = %do.end.i95, %s5h1432_writereg.exit86.s5h1432_writereg.exit96_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i88) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i87) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i97) #6
  %53 = getelementptr inbounds [2 x i8], ptr %buf.i97, i32 0, i32 1
  %54 = ptrtoint ptr %buf.i97 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 28, ptr %buf.i97, align 1
  %55 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 48, ptr %53, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i98) #6
  %56 = getelementptr inbounds i8, ptr %msg.i98, i32 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 196607, ptr %56, align 4
  %58 = ptrtoint ptr %msg.i98 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 1, ptr %msg.i98, align 4
  %flags.i99 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i98, i32 0, i32 1
  %59 = ptrtoint ptr %flags.i99 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %flags.i99, align 2
  %buf2.i101 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i98, i32 0, i32 3
  %60 = ptrtoint ptr %buf2.i101 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %buf.i97, ptr %buf2.i101, align 4
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %call.i102 = call i32 @i2c_transfer(ptr noundef %62, ptr noundef nonnull %msg.i98, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i102)
  %cmp.not.i103 = icmp eq i32 %call.i102, 1
  br i1 %cmp.not.i103, label %s5h1432_writereg.exit96.s5h1432_writereg.exit106_crit_edge, label %do.end.i105

s5h1432_writereg.exit96.s5h1432_writereg.exit106_crit_edge: ; preds = %s5h1432_writereg.exit96
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_writereg.exit106

do.end.i105:                                      ; preds = %s5h1432_writereg.exit96
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 28, i32 noundef 48, i32 noundef %call.i102) #9
  br label %s5h1432_writereg.exit106

s5h1432_writereg.exit106:                         ; preds = %do.end.i105, %s5h1432_writereg.exit96.s5h1432_writereg.exit106_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i98) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i97) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i107) #6
  %63 = getelementptr inbounds [2 x i8], ptr %buf.i107, i32 0, i32 1
  %64 = ptrtoint ptr %buf.i107 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 29, ptr %buf.i107, align 1
  %65 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 32, ptr %63, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i108) #6
  %66 = getelementptr inbounds i8, ptr %msg.i108, i32 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 196607, ptr %66, align 4
  %68 = ptrtoint ptr %msg.i108 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 1, ptr %msg.i108, align 4
  %flags.i109 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i108, i32 0, i32 1
  %69 = ptrtoint ptr %flags.i109 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 0, ptr %flags.i109, align 2
  %buf2.i111 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i108, i32 0, i32 3
  %70 = ptrtoint ptr %buf2.i111 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %buf.i107, ptr %buf2.i111, align 4
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %call.i112 = call i32 @i2c_transfer(ptr noundef %72, ptr noundef nonnull %msg.i108, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i112)
  %cmp.not.i113 = icmp eq i32 %call.i112, 1
  br i1 %cmp.not.i113, label %s5h1432_writereg.exit106.s5h1432_writereg.exit116_crit_edge, label %do.end.i115

s5h1432_writereg.exit106.s5h1432_writereg.exit116_crit_edge: ; preds = %s5h1432_writereg.exit106
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_writereg.exit116

do.end.i115:                                      ; preds = %s5h1432_writereg.exit106
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 29, i32 noundef 32, i32 noundef %call.i112) #9
  br label %s5h1432_writereg.exit116

s5h1432_writereg.exit116:                         ; preds = %do.end.i115, %s5h1432_writereg.exit106.s5h1432_writereg.exit116_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i108) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i107) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i117) #6
  %73 = getelementptr inbounds [2 x i8], ptr %buf.i117, i32 0, i32 1
  %74 = ptrtoint ptr %buf.i117 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 30, ptr %buf.i117, align 1
  %75 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 27, ptr %73, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i118) #6
  %76 = getelementptr inbounds i8, ptr %msg.i118, i32 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 196607, ptr %76, align 4
  %78 = ptrtoint ptr %msg.i118 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 1, ptr %msg.i118, align 4
  %flags.i119 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i118, i32 0, i32 1
  %79 = ptrtoint ptr %flags.i119 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 0, ptr %flags.i119, align 2
  %buf2.i121 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i118, i32 0, i32 3
  %80 = ptrtoint ptr %buf2.i121 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %buf.i117, ptr %buf2.i121, align 4
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  %call.i122 = call i32 @i2c_transfer(ptr noundef %82, ptr noundef nonnull %msg.i118, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i122)
  %cmp.not.i123 = icmp eq i32 %call.i122, 1
  br i1 %cmp.not.i123, label %s5h1432_writereg.exit116.s5h1432_writereg.exit126_crit_edge, label %do.end.i125

s5h1432_writereg.exit116.s5h1432_writereg.exit126_crit_edge: ; preds = %s5h1432_writereg.exit116
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_writereg.exit126

do.end.i125:                                      ; preds = %s5h1432_writereg.exit116
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 30, i32 noundef 27, i32 noundef %call.i122) #9
  br label %s5h1432_writereg.exit126

s5h1432_writereg.exit126:                         ; preds = %do.end.i125, %s5h1432_writereg.exit116.s5h1432_writereg.exit126_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i118) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i117) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i127) #6
  %83 = getelementptr inbounds [2 x i8], ptr %buf.i127, i32 0, i32 1
  %84 = ptrtoint ptr %buf.i127 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 46, ptr %buf.i127, align 1
  %85 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 64, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i128) #6
  %86 = getelementptr inbounds i8, ptr %msg.i128, i32 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 196607, ptr %86, align 4
  %88 = ptrtoint ptr %msg.i128 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 1, ptr %msg.i128, align 4
  %flags.i129 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i128, i32 0, i32 1
  %89 = ptrtoint ptr %flags.i129 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 0, ptr %flags.i129, align 2
  %buf2.i131 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i128, i32 0, i32 3
  %90 = ptrtoint ptr %buf2.i131 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %buf.i127, ptr %buf2.i131, align 4
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %1, align 4
  %call.i132 = call i32 @i2c_transfer(ptr noundef %92, ptr noundef nonnull %msg.i128, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i132)
  %cmp.not.i133 = icmp eq i32 %call.i132, 1
  br i1 %cmp.not.i133, label %s5h1432_writereg.exit126.s5h1432_writereg.exit136_crit_edge, label %do.end.i135

s5h1432_writereg.exit126.s5h1432_writereg.exit136_crit_edge: ; preds = %s5h1432_writereg.exit126
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_writereg.exit136

do.end.i135:                                      ; preds = %s5h1432_writereg.exit126
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 46, i32 noundef 64, i32 noundef %call.i132) #9
  br label %s5h1432_writereg.exit136

s5h1432_writereg.exit136:                         ; preds = %do.end.i135, %s5h1432_writereg.exit126.s5h1432_writereg.exit136_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i128) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i127) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i137) #6
  %93 = getelementptr inbounds [2 x i8], ptr %buf.i137, i32 0, i32 1
  %94 = ptrtoint ptr %buf.i137 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 66, ptr %buf.i137, align 1
  %95 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -124, ptr %93, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i138) #6
  %96 = getelementptr inbounds i8, ptr %msg.i138, i32 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 196607, ptr %96, align 4
  %98 = ptrtoint ptr %msg.i138 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 1, ptr %msg.i138, align 4
  %flags.i139 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i138, i32 0, i32 1
  %99 = ptrtoint ptr %flags.i139 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 0, ptr %flags.i139, align 2
  %buf2.i141 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i138, i32 0, i32 3
  %100 = ptrtoint ptr %buf2.i141 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %buf.i137, ptr %buf2.i141, align 4
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %1, align 4
  %call.i142 = call i32 @i2c_transfer(ptr noundef %102, ptr noundef nonnull %msg.i138, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i142)
  %cmp.not.i143 = icmp eq i32 %call.i142, 1
  br i1 %cmp.not.i143, label %s5h1432_writereg.exit136.s5h1432_writereg.exit146_crit_edge, label %do.end.i145

s5h1432_writereg.exit136.s5h1432_writereg.exit146_crit_edge: ; preds = %s5h1432_writereg.exit136
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_writereg.exit146

do.end.i145:                                      ; preds = %s5h1432_writereg.exit136
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 66, i32 noundef 132, i32 noundef %call.i142) #9
  br label %s5h1432_writereg.exit146

s5h1432_writereg.exit146:                         ; preds = %do.end.i145, %s5h1432_writereg.exit136.s5h1432_writereg.exit146_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i138) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i137) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i147) #6
  %103 = getelementptr inbounds [2 x i8], ptr %buf.i147, i32 0, i32 1
  %104 = ptrtoint ptr %buf.i147 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 80, ptr %buf.i147, align 1
  %105 = ptrtoint ptr %103 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 90, ptr %103, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i148) #6
  %106 = getelementptr inbounds i8, ptr %msg.i148, i32 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 196607, ptr %106, align 4
  %108 = ptrtoint ptr %msg.i148 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 1, ptr %msg.i148, align 4
  %flags.i149 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i148, i32 0, i32 1
  %109 = ptrtoint ptr %flags.i149 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 0, ptr %flags.i149, align 2
  %buf2.i151 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i148, i32 0, i32 3
  %110 = ptrtoint ptr %buf2.i151 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %buf.i147, ptr %buf2.i151, align 4
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %1, align 4
  %call.i152 = call i32 @i2c_transfer(ptr noundef %112, ptr noundef nonnull %msg.i148, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i152)
  %cmp.not.i153 = icmp eq i32 %call.i152, 1
  br i1 %cmp.not.i153, label %s5h1432_writereg.exit146.s5h1432_writereg.exit156_crit_edge, label %do.end.i155

s5h1432_writereg.exit146.s5h1432_writereg.exit156_crit_edge: ; preds = %s5h1432_writereg.exit146
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_writereg.exit156

do.end.i155:                                      ; preds = %s5h1432_writereg.exit146
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 80, i32 noundef 90, i32 noundef %call.i152) #9
  br label %s5h1432_writereg.exit156

s5h1432_writereg.exit156:                         ; preds = %do.end.i155, %s5h1432_writereg.exit146.s5h1432_writereg.exit156_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i148) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i147) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i157) #6
  %113 = getelementptr inbounds [2 x i8], ptr %buf.i157, i32 0, i32 1
  %114 = ptrtoint ptr %buf.i157 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 90, ptr %buf.i157, align 1
  %115 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 -45, ptr %113, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i158) #6
  %116 = getelementptr inbounds i8, ptr %msg.i158, i32 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 196607, ptr %116, align 4
  %118 = ptrtoint ptr %msg.i158 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 1, ptr %msg.i158, align 4
  %flags.i159 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i158, i32 0, i32 1
  %119 = ptrtoint ptr %flags.i159 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 0, ptr %flags.i159, align 2
  %buf2.i161 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i158, i32 0, i32 3
  %120 = ptrtoint ptr %buf2.i161 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %buf.i157, ptr %buf2.i161, align 4
  %121 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %1, align 4
  %call.i162 = call i32 @i2c_transfer(ptr noundef %122, ptr noundef nonnull %msg.i158, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i162)
  %cmp.not.i163 = icmp eq i32 %call.i162, 1
  br i1 %cmp.not.i163, label %s5h1432_writereg.exit156.s5h1432_writereg.exit166_crit_edge, label %do.end.i165

s5h1432_writereg.exit156.s5h1432_writereg.exit166_crit_edge: ; preds = %s5h1432_writereg.exit156
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_writereg.exit166

do.end.i165:                                      ; preds = %s5h1432_writereg.exit156
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i164 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 90, i32 noundef 211, i32 noundef %call.i162) #9
  br label %s5h1432_writereg.exit166

s5h1432_writereg.exit166:                         ; preds = %do.end.i165, %s5h1432_writereg.exit156.s5h1432_writereg.exit166_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i158) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i157) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i167) #6
  %123 = getelementptr inbounds [2 x i8], ptr %buf.i167, i32 0, i32 1
  %124 = ptrtoint ptr %buf.i167 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 104, ptr %buf.i167, align 1
  %125 = ptrtoint ptr %123 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 80, ptr %123, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i168) #6
  %126 = getelementptr inbounds i8, ptr %msg.i168, i32 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 196607, ptr %126, align 4
  %128 = ptrtoint ptr %msg.i168 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 1, ptr %msg.i168, align 4
  %flags.i169 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i168, i32 0, i32 1
  %129 = ptrtoint ptr %flags.i169 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 0, ptr %flags.i169, align 2
  %buf2.i171 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i168, i32 0, i32 3
  %130 = ptrtoint ptr %buf2.i171 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %buf.i167, ptr %buf2.i171, align 4
  %131 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %1, align 4
  %call.i172 = call i32 @i2c_transfer(ptr noundef %132, ptr noundef nonnull %msg.i168, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i172)
  %cmp.not.i173 = icmp eq i32 %call.i172, 1
  br i1 %cmp.not.i173, label %s5h1432_writereg.exit166.s5h1432_writereg.exit176_crit_edge, label %do.end.i175

s5h1432_writereg.exit166.s5h1432_writereg.exit176_crit_edge: ; preds = %s5h1432_writereg.exit166
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_writereg.exit176

do.end.i175:                                      ; preds = %s5h1432_writereg.exit166
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i174 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 104, i32 noundef 80, i32 noundef %call.i172) #9
  br label %s5h1432_writereg.exit176

s5h1432_writereg.exit176:                         ; preds = %do.end.i175, %s5h1432_writereg.exit166.s5h1432_writereg.exit176_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i168) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i167) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i177) #6
  %133 = getelementptr inbounds [2 x i8], ptr %buf.i177, i32 0, i32 1
  %134 = ptrtoint ptr %buf.i177 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 -72, ptr %buf.i177, align 1
  %135 = ptrtoint ptr %133 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 60, ptr %133, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i178) #6
  %136 = getelementptr inbounds i8, ptr %msg.i178, i32 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 196607, ptr %136, align 4
  %138 = ptrtoint ptr %msg.i178 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 1, ptr %msg.i178, align 4
  %flags.i179 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i178, i32 0, i32 1
  %139 = ptrtoint ptr %flags.i179 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 0, ptr %flags.i179, align 2
  %buf2.i181 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i178, i32 0, i32 3
  %140 = ptrtoint ptr %buf2.i181 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %buf.i177, ptr %buf2.i181, align 4
  %141 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %1, align 4
  %call.i182 = call i32 @i2c_transfer(ptr noundef %142, ptr noundef nonnull %msg.i178, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i182)
  %cmp.not.i183 = icmp eq i32 %call.i182, 1
  br i1 %cmp.not.i183, label %s5h1432_writereg.exit176.s5h1432_writereg.exit186_crit_edge, label %do.end.i185

s5h1432_writereg.exit176.s5h1432_writereg.exit186_crit_edge: ; preds = %s5h1432_writereg.exit176
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_writereg.exit186

do.end.i185:                                      ; preds = %s5h1432_writereg.exit176
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 184, i32 noundef 60, i32 noundef %call.i182) #9
  br label %s5h1432_writereg.exit186

s5h1432_writereg.exit186:                         ; preds = %do.end.i185, %s5h1432_writereg.exit176.s5h1432_writereg.exit186_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i178) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i177) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i187) #6
  %143 = getelementptr inbounds [2 x i8], ptr %buf.i187, i32 0, i32 1
  %144 = ptrtoint ptr %buf.i187 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 -60, ptr %buf.i187, align 1
  %145 = ptrtoint ptr %143 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 16, ptr %143, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i188) #6
  %146 = getelementptr inbounds i8, ptr %msg.i188, i32 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 196607, ptr %146, align 4
  %148 = ptrtoint ptr %msg.i188 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 1, ptr %msg.i188, align 4
  %flags.i189 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i188, i32 0, i32 1
  %149 = ptrtoint ptr %flags.i189 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 0, ptr %flags.i189, align 2
  %buf2.i191 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i188, i32 0, i32 3
  %150 = ptrtoint ptr %buf2.i191 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %buf.i187, ptr %buf2.i191, align 4
  %151 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %1, align 4
  %call.i192 = call i32 @i2c_transfer(ptr noundef %152, ptr noundef nonnull %msg.i188, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i192)
  %cmp.not.i193 = icmp eq i32 %call.i192, 1
  br i1 %cmp.not.i193, label %s5h1432_writereg.exit186.s5h1432_writereg.exit196_crit_edge, label %do.end.i195

s5h1432_writereg.exit186.s5h1432_writereg.exit196_crit_edge: ; preds = %s5h1432_writereg.exit186
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_writereg.exit196

do.end.i195:                                      ; preds = %s5h1432_writereg.exit186
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i194 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 196, i32 noundef 16, i32 noundef %call.i192) #9
  br label %s5h1432_writereg.exit196

s5h1432_writereg.exit196:                         ; preds = %do.end.i195, %s5h1432_writereg.exit186.s5h1432_writereg.exit196_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i188) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i187) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i197) #6
  %153 = getelementptr inbounds [2 x i8], ptr %buf.i197, i32 0, i32 1
  %154 = ptrtoint ptr %buf.i197 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 -52, ptr %buf.i197, align 1
  %155 = ptrtoint ptr %153 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 -100, ptr %153, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i198) #6
  %156 = getelementptr inbounds i8, ptr %msg.i198, i32 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 196607, ptr %156, align 4
  %158 = ptrtoint ptr %msg.i198 to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 1, ptr %msg.i198, align 4
  %flags.i199 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i198, i32 0, i32 1
  %159 = ptrtoint ptr %flags.i199 to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 0, ptr %flags.i199, align 2
  %buf2.i201 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i198, i32 0, i32 3
  %160 = ptrtoint ptr %buf2.i201 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %buf.i197, ptr %buf2.i201, align 4
  %161 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %1, align 4
  %call.i202 = call i32 @i2c_transfer(ptr noundef %162, ptr noundef nonnull %msg.i198, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i202)
  %cmp.not.i203 = icmp eq i32 %call.i202, 1
  br i1 %cmp.not.i203, label %s5h1432_writereg.exit196.s5h1432_writereg.exit206_crit_edge, label %do.end.i205

s5h1432_writereg.exit196.s5h1432_writereg.exit206_crit_edge: ; preds = %s5h1432_writereg.exit196
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_writereg.exit206

do.end.i205:                                      ; preds = %s5h1432_writereg.exit196
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i204 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 204, i32 noundef 156, i32 noundef %call.i202) #9
  br label %s5h1432_writereg.exit206

s5h1432_writereg.exit206:                         ; preds = %do.end.i205, %s5h1432_writereg.exit196.s5h1432_writereg.exit206_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i198) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i197) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i207) #6
  %163 = getelementptr inbounds [2 x i8], ptr %buf.i207, i32 0, i32 1
  %164 = ptrtoint ptr %buf.i207 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 -38, ptr %buf.i207, align 1
  %165 = ptrtoint ptr %163 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 0, ptr %163, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i208) #6
  %166 = getelementptr inbounds i8, ptr %msg.i208, i32 4
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 196607, ptr %166, align 4
  %168 = ptrtoint ptr %msg.i208 to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 1, ptr %msg.i208, align 4
  %flags.i209 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i208, i32 0, i32 1
  %169 = ptrtoint ptr %flags.i209 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 0, ptr %flags.i209, align 2
  %buf2.i211 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i208, i32 0, i32 3
  %170 = ptrtoint ptr %buf2.i211 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %buf.i207, ptr %buf2.i211, align 4
  %171 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %1, align 4
  %call.i212 = call i32 @i2c_transfer(ptr noundef %172, ptr noundef nonnull %msg.i208, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i212)
  %cmp.not.i213 = icmp eq i32 %call.i212, 1
  br i1 %cmp.not.i213, label %s5h1432_writereg.exit206.s5h1432_writereg.exit216_crit_edge, label %do.end.i215

s5h1432_writereg.exit206.s5h1432_writereg.exit216_crit_edge: ; preds = %s5h1432_writereg.exit206
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_writereg.exit216

do.end.i215:                                      ; preds = %s5h1432_writereg.exit206
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i214 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 218, i32 noundef 0, i32 noundef %call.i212) #9
  br label %s5h1432_writereg.exit216

s5h1432_writereg.exit216:                         ; preds = %do.end.i215, %s5h1432_writereg.exit206.s5h1432_writereg.exit216_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i208) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i207) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i217) #6
  %173 = getelementptr inbounds [2 x i8], ptr %buf.i217, i32 0, i32 1
  %174 = ptrtoint ptr %buf.i217 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 -31, ptr %buf.i217, align 1
  %175 = ptrtoint ptr %173 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 -108, ptr %173, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i218) #6
  %176 = getelementptr inbounds i8, ptr %msg.i218, i32 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 196607, ptr %176, align 4
  %178 = ptrtoint ptr %msg.i218 to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 1, ptr %msg.i218, align 4
  %flags.i219 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i218, i32 0, i32 1
  %179 = ptrtoint ptr %flags.i219 to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 0, ptr %flags.i219, align 2
  %buf2.i221 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i218, i32 0, i32 3
  %180 = ptrtoint ptr %buf2.i221 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %buf.i217, ptr %buf2.i221, align 4
  %181 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %1, align 4
  %call.i222 = call i32 @i2c_transfer(ptr noundef %182, ptr noundef nonnull %msg.i218, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i222)
  %cmp.not.i223 = icmp eq i32 %call.i222, 1
  br i1 %cmp.not.i223, label %s5h1432_writereg.exit216.s5h1432_writereg.exit226_crit_edge, label %do.end.i225

s5h1432_writereg.exit216.s5h1432_writereg.exit226_crit_edge: ; preds = %s5h1432_writereg.exit216
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_writereg.exit226

do.end.i225:                                      ; preds = %s5h1432_writereg.exit216
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i224 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 225, i32 noundef 148, i32 noundef %call.i222) #9
  br label %s5h1432_writereg.exit226

s5h1432_writereg.exit226:                         ; preds = %do.end.i225, %s5h1432_writereg.exit216.s5h1432_writereg.exit226_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i218) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i217) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i227) #6
  %183 = getelementptr inbounds [2 x i8], ptr %buf.i227, i32 0, i32 1
  %184 = ptrtoint ptr %buf.i227 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 -7, ptr %buf.i227, align 1
  %185 = ptrtoint ptr %183 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 0, ptr %183, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i228) #6
  %186 = getelementptr inbounds i8, ptr %msg.i228, i32 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 196607, ptr %186, align 4
  %188 = ptrtoint ptr %msg.i228 to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 1, ptr %msg.i228, align 4
  %flags.i229 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i228, i32 0, i32 1
  %189 = ptrtoint ptr %flags.i229 to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 0, ptr %flags.i229, align 2
  %buf2.i231 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i228, i32 0, i32 3
  %190 = ptrtoint ptr %buf2.i231 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %buf.i227, ptr %buf2.i231, align 4
  %191 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %1, align 4
  %call.i232 = call i32 @i2c_transfer(ptr noundef %192, ptr noundef nonnull %msg.i228, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i232)
  %cmp.not.i233 = icmp eq i32 %call.i232, 1
  br i1 %cmp.not.i233, label %s5h1432_writereg.exit226.s5h1432_writereg.exit236_crit_edge, label %do.end.i235

s5h1432_writereg.exit226.s5h1432_writereg.exit236_crit_edge: ; preds = %s5h1432_writereg.exit226
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_writereg.exit236

do.end.i235:                                      ; preds = %s5h1432_writereg.exit226
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i234 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 249, i32 noundef 0, i32 noundef %call.i232) #9
  br label %s5h1432_writereg.exit236

s5h1432_writereg.exit236:                         ; preds = %do.end.i235, %s5h1432_writereg.exit226.s5h1432_writereg.exit236_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i228) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i227) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i237) #6
  %193 = getelementptr inbounds [2 x i8], ptr %buf.i237, i32 0, i32 1
  %194 = ptrtoint ptr %buf.i237 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 -28, ptr %buf.i237, align 1
  %195 = ptrtoint ptr %193 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 102, ptr %193, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i238) #6
  %196 = getelementptr inbounds i8, ptr %msg.i238, i32 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 196607, ptr %196, align 4
  %198 = ptrtoint ptr %msg.i238 to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 1, ptr %msg.i238, align 4
  %flags.i239 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i238, i32 0, i32 1
  %199 = ptrtoint ptr %flags.i239 to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 0, ptr %flags.i239, align 2
  %buf2.i241 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i238, i32 0, i32 3
  %200 = ptrtoint ptr %buf2.i241 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %buf.i237, ptr %buf2.i241, align 4
  %201 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %1, align 4
  %call.i242 = call i32 @i2c_transfer(ptr noundef %202, ptr noundef nonnull %msg.i238, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i242)
  %cmp.not.i243 = icmp eq i32 %call.i242, 1
  br i1 %cmp.not.i243, label %s5h1432_writereg.exit236.s5h1432_writereg.exit246_crit_edge, label %do.end.i245

s5h1432_writereg.exit236.s5h1432_writereg.exit246_crit_edge: ; preds = %s5h1432_writereg.exit236
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_writereg.exit246

do.end.i245:                                      ; preds = %s5h1432_writereg.exit236
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i244 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 228, i32 noundef 102, i32 noundef %call.i242) #9
  br label %s5h1432_writereg.exit246

s5h1432_writereg.exit246:                         ; preds = %do.end.i245, %s5h1432_writereg.exit236.s5h1432_writereg.exit246_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i238) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i237) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i247) #6
  %203 = getelementptr inbounds [2 x i8], ptr %buf.i247, i32 0, i32 1
  %204 = ptrtoint ptr %buf.i247 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 -27, ptr %buf.i247, align 1
  %205 = ptrtoint ptr %203 to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 102, ptr %203, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i248) #6
  %206 = getelementptr inbounds i8, ptr %msg.i248, i32 4
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 196607, ptr %206, align 4
  %208 = ptrtoint ptr %msg.i248 to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 1, ptr %msg.i248, align 4
  %flags.i249 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i248, i32 0, i32 1
  %209 = ptrtoint ptr %flags.i249 to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 0, ptr %flags.i249, align 2
  %buf2.i251 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i248, i32 0, i32 3
  %210 = ptrtoint ptr %buf2.i251 to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %buf.i247, ptr %buf2.i251, align 4
  %211 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %1, align 4
  %call.i252 = call i32 @i2c_transfer(ptr noundef %212, ptr noundef nonnull %msg.i248, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i252)
  %cmp.not.i253 = icmp eq i32 %call.i252, 1
  br i1 %cmp.not.i253, label %s5h1432_writereg.exit246.s5h1432_writereg.exit256_crit_edge, label %do.end.i255

s5h1432_writereg.exit246.s5h1432_writereg.exit256_crit_edge: ; preds = %s5h1432_writereg.exit246
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_writereg.exit256

do.end.i255:                                      ; preds = %s5h1432_writereg.exit246
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i254 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 229, i32 noundef 102, i32 noundef %call.i252) #9
  br label %s5h1432_writereg.exit256

s5h1432_writereg.exit256:                         ; preds = %do.end.i255, %s5h1432_writereg.exit246.s5h1432_writereg.exit256_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i248) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i247) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i257) #6
  %213 = getelementptr inbounds [2 x i8], ptr %buf.i257, i32 0, i32 1
  %214 = ptrtoint ptr %buf.i257 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 -25, ptr %buf.i257, align 1
  %215 = ptrtoint ptr %213 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 -18, ptr %213, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i258) #6
  %216 = getelementptr inbounds i8, ptr %msg.i258, i32 4
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 196607, ptr %216, align 4
  %218 = ptrtoint ptr %msg.i258 to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 1, ptr %msg.i258, align 4
  %flags.i259 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i258, i32 0, i32 1
  %219 = ptrtoint ptr %flags.i259 to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 0, ptr %flags.i259, align 2
  %buf2.i261 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i258, i32 0, i32 3
  %220 = ptrtoint ptr %buf2.i261 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %buf.i257, ptr %buf2.i261, align 4
  %221 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %1, align 4
  %call.i262 = call i32 @i2c_transfer(ptr noundef %222, ptr noundef nonnull %msg.i258, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i262)
  %cmp.not.i263 = icmp eq i32 %call.i262, 1
  br i1 %cmp.not.i263, label %s5h1432_writereg.exit256.s5h1432_writereg.exit266_crit_edge, label %do.end.i265

s5h1432_writereg.exit256.s5h1432_writereg.exit266_crit_edge: ; preds = %s5h1432_writereg.exit256
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_writereg.exit266

do.end.i265:                                      ; preds = %s5h1432_writereg.exit256
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i264 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 231, i32 noundef 238, i32 noundef %call.i262) #9
  br label %s5h1432_writereg.exit266

s5h1432_writereg.exit266:                         ; preds = %do.end.i265, %s5h1432_writereg.exit256.s5h1432_writereg.exit266_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i258) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i257) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i267) #6
  %223 = getelementptr inbounds [2 x i8], ptr %buf.i267, i32 0, i32 1
  %224 = ptrtoint ptr %buf.i267 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 30, ptr %buf.i267, align 1
  %225 = ptrtoint ptr %223 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 49, ptr %223, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i268) #6
  %226 = getelementptr inbounds i8, ptr %msg.i268, i32 4
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 196607, ptr %226, align 4
  %228 = ptrtoint ptr %msg.i268 to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 1, ptr %msg.i268, align 4
  %flags.i269 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i268, i32 0, i32 1
  %229 = ptrtoint ptr %flags.i269 to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 0, ptr %flags.i269, align 2
  %buf2.i271 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i268, i32 0, i32 3
  %230 = ptrtoint ptr %buf2.i271 to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %buf.i267, ptr %buf2.i271, align 4
  %231 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %1, align 4
  %call.i272 = call i32 @i2c_transfer(ptr noundef %232, ptr noundef nonnull %msg.i268, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i272)
  %cmp.not.i273 = icmp eq i32 %call.i272, 1
  br i1 %cmp.not.i273, label %s5h1432_writereg.exit266.s5h1432_writereg.exit276_crit_edge, label %do.end.i275

s5h1432_writereg.exit266.s5h1432_writereg.exit276_crit_edge: ; preds = %s5h1432_writereg.exit266
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_writereg.exit276

do.end.i275:                                      ; preds = %s5h1432_writereg.exit266
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i274 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 30, i32 noundef 49, i32 noundef %call.i272) #9
  br label %s5h1432_writereg.exit276

s5h1432_writereg.exit276:                         ; preds = %do.end.i275, %s5h1432_writereg.exit266.s5h1432_writereg.exit276_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i268) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i267) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %233 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 66, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %234 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i277) #6
  %235 = getelementptr inbounds i8, ptr %msg.i277, i32 4
  %236 = call ptr @memset(ptr %235, i32 255, i32 16)
  %237 = ptrtoint ptr %msg.i277 to i32
  call void @__asan_store2_noabort(i32 %237)
  store i16 1, ptr %msg.i277, align 4
  %flags.i278 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i277, i32 0, i32 1
  %238 = ptrtoint ptr %flags.i278 to i32
  call void @__asan_store2_noabort(i32 %238)
  store i16 0, ptr %flags.i278, align 2
  %239 = ptrtoint ptr %235 to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 1, ptr %235, align 4
  %buf.i280 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i277, i32 0, i32 3
  %240 = ptrtoint ptr %buf.i280 to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %b0.i, ptr %buf.i280, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i277, i32 1
  %241 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 1, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i277, i32 1, i32 1
  %242 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %242)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i277, i32 1, i32 2
  %243 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %243)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i277, i32 1, i32 3
  %244 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %b1.i, ptr %buf7.i, align 4
  %245 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %1, align 4
  %call.i281 = call i32 @i2c_transfer(ptr noundef %246, ptr noundef nonnull %msg.i277, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i281)
  %cmp.not.i282 = icmp eq i32 %call.i281, 2
  br i1 %cmp.not.i282, label %s5h1432_writereg.exit276.s5h1432_readreg.exit_crit_edge, label %do.end.i283

s5h1432_writereg.exit276.s5h1432_readreg.exit_crit_edge: ; preds = %s5h1432_writereg.exit276
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_readreg.exit

do.end.i283:                                      ; preds = %s5h1432_writereg.exit276
  call void @__sanitizer_cov_trace_pc() #8
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i281) #9
  br label %s5h1432_readreg.exit

s5h1432_readreg.exit:                             ; preds = %do.end.i283, %s5h1432_writereg.exit276.s5h1432_readreg.exit_crit_edge
  %247 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i277) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %249 = or i8 %248, -128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i284) #6
  %250 = getelementptr inbounds [2 x i8], ptr %buf.i284, i32 0, i32 1
  %251 = ptrtoint ptr %buf.i284 to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 66, ptr %buf.i284, align 1
  %252 = ptrtoint ptr %250 to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %249, ptr %250, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i285) #6
  %253 = getelementptr inbounds i8, ptr %msg.i285, i32 4
  %254 = ptrtoint ptr %253 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 196607, ptr %253, align 4
  %255 = ptrtoint ptr %msg.i285 to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 1, ptr %msg.i285, align 4
  %flags.i286 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i285, i32 0, i32 1
  %256 = ptrtoint ptr %flags.i286 to i32
  call void @__asan_store2_noabort(i32 %256)
  store i16 0, ptr %flags.i286, align 2
  %buf2.i288 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i285, i32 0, i32 3
  %257 = ptrtoint ptr %buf2.i288 to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %buf.i284, ptr %buf2.i288, align 4
  %258 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %1, align 4
  %call.i289 = call i32 @i2c_transfer(ptr noundef %259, ptr noundef nonnull %msg.i285, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i289)
  %cmp.not.i290 = icmp eq i32 %call.i289, 1
  br i1 %cmp.not.i290, label %s5h1432_readreg.exit.s5h1432_writereg.exit293_crit_edge, label %do.end.i292

s5h1432_readreg.exit.s5h1432_writereg.exit293_crit_edge: ; preds = %s5h1432_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_writereg.exit293

do.end.i292:                                      ; preds = %s5h1432_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i = zext i8 %249 to i32
  %call7.i291 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 66, i32 noundef %conv6.i, i32 noundef %call.i289) #9
  br label %s5h1432_writereg.exit293

s5h1432_writereg.exit293:                         ; preds = %do.end.i292, %s5h1432_readreg.exit.s5h1432_writereg.exit293_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i285) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i284) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i294) #6
  %260 = getelementptr inbounds [2 x i8], ptr %buf.i294, i32 0, i32 1
  %261 = ptrtoint ptr %buf.i294 to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 9, ptr %buf.i294, align 1
  %262 = ptrtoint ptr %260 to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 26, ptr %260, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i295) #6
  %263 = getelementptr inbounds i8, ptr %msg.i295, i32 4
  %264 = ptrtoint ptr %263 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 196607, ptr %263, align 4
  %265 = ptrtoint ptr %msg.i295 to i32
  call void @__asan_store2_noabort(i32 %265)
  store i16 1, ptr %msg.i295, align 4
  %flags.i296 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i295, i32 0, i32 1
  %266 = ptrtoint ptr %flags.i296 to i32
  call void @__asan_store2_noabort(i32 %266)
  store i16 0, ptr %flags.i296, align 2
  %buf2.i298 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i295, i32 0, i32 3
  %267 = ptrtoint ptr %buf2.i298 to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr %buf.i294, ptr %buf2.i298, align 4
  %268 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %1, align 4
  %call.i299 = call i32 @i2c_transfer(ptr noundef %269, ptr noundef nonnull %msg.i295, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i299)
  %cmp.not.i300 = icmp eq i32 %call.i299, 1
  br i1 %cmp.not.i300, label %s5h1432_writereg.exit293.s5h1432_writereg.exit303_crit_edge, label %do.end.i302

s5h1432_writereg.exit293.s5h1432_writereg.exit303_crit_edge: ; preds = %s5h1432_writereg.exit293
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_writereg.exit303

do.end.i302:                                      ; preds = %s5h1432_writereg.exit293
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i301 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 9, i32 noundef 26, i32 noundef %call.i299) #9
  br label %s5h1432_writereg.exit303

s5h1432_writereg.exit303:                         ; preds = %do.end.i302, %s5h1432_writereg.exit293.s5h1432_writereg.exit303_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i295) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i294) #6
  call void @msleep(i32 noundef 30) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i304) #6
  %270 = getelementptr inbounds [2 x i8], ptr %buf.i304, i32 0, i32 1
  %271 = ptrtoint ptr %buf.i304 to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 9, ptr %buf.i304, align 1
  %272 = ptrtoint ptr %270 to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 27, ptr %270, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i305) #6
  %273 = getelementptr inbounds i8, ptr %msg.i305, i32 4
  %274 = ptrtoint ptr %273 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 196607, ptr %273, align 4
  %275 = ptrtoint ptr %msg.i305 to i32
  call void @__asan_store2_noabort(i32 %275)
  store i16 1, ptr %msg.i305, align 4
  %flags.i306 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i305, i32 0, i32 1
  %276 = ptrtoint ptr %flags.i306 to i32
  call void @__asan_store2_noabort(i32 %276)
  store i16 0, ptr %flags.i306, align 2
  %buf2.i308 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i305, i32 0, i32 3
  %277 = ptrtoint ptr %buf2.i308 to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr %buf.i304, ptr %buf2.i308, align 4
  %278 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %1, align 4
  %call.i309 = call i32 @i2c_transfer(ptr noundef %279, ptr noundef nonnull %msg.i305, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i309)
  %cmp.not.i310 = icmp eq i32 %call.i309, 1
  br i1 %cmp.not.i310, label %s5h1432_writereg.exit303.s5h1432_writereg.exit313_crit_edge, label %do.end.i312

s5h1432_writereg.exit303.s5h1432_writereg.exit313_crit_edge: ; preds = %s5h1432_writereg.exit303
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_writereg.exit313

do.end.i312:                                      ; preds = %s5h1432_writereg.exit303
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i311 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 9, i32 noundef 27, i32 noundef %call.i309) #9
  br label %s5h1432_writereg.exit313

s5h1432_writereg.exit313:                         ; preds = %do.end.i312, %s5h1432_writereg.exit303.s5h1432_writereg.exit313_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i305) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i304) #6
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s5h1432_sleep(ptr nocapture noundef readnone %fe) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5h1432_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i65 = alloca [2 x i8], align 1
  %msg.i66 = alloca %struct.i2c_msg, align 4
  %buf.i55 = alloca [2 x i8], align 1
  %msg.i56 = alloca %struct.i2c_msg, align 4
  %buf.i45 = alloca [2 x i8], align 1
  %msg.i46 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dtv_property_cache, align 4
  %current_frequency = getelementptr inbounds %struct.s5h1432_state, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %current_frequency to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_frequency, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %entry
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %6 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_params, align 4
  %call = tail call i32 %7(ptr noundef %fe) #6
  tail call void @msleep(i32 noundef 300) #6
  tail call fastcc void @s5h1432_set_channel_bandwidth(ptr noundef %fe, i32 noundef 8)
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %8 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bandwidth_hz, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.else.cleanup_crit_edge [
    i32 6000000, label %if.else.sw.epilog_crit_edge
    i32 7000000, label %sw.bb3
    i32 8000000, label %sw.bb5
  ]

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb3:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb3, %if.else.sw.epilog_crit_edge
  %dvb_bandwidth.0 = phi i32 [ 8, %sw.bb5 ], [ 7, %sw.bb3 ], [ 6, %if.else.sw.epilog_crit_edge ]
  tail call fastcc void @s5h1432_set_IF(ptr noundef %fe)
  tail call void @msleep(i32 noundef 30) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %11 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 9, ptr %buf.i, align 1
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 26, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %14 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 196607, ptr %14, align 4
  %16 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %flags.i, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %18 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %buf.i, ptr %buf2.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %sw.epilog.s5h1432_writereg.exit_crit_edge, label %do.end.i

sw.epilog.s5h1432_writereg.exit_crit_edge:        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_writereg.exit

do.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 9, i32 noundef 26, i32 noundef %call.i) #9
  br label %s5h1432_writereg.exit

s5h1432_writereg.exit:                            ; preds = %do.end.i, %sw.epilog.s5h1432_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @msleep(i32 noundef 30) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i45) #6
  %21 = getelementptr inbounds [2 x i8], ptr %buf.i45, i32 0, i32 1
  %22 = ptrtoint ptr %buf.i45 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 9, ptr %buf.i45, align 1
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 27, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i46) #6
  %24 = getelementptr inbounds i8, ptr %msg.i46, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 196607, ptr %24, align 4
  %26 = ptrtoint ptr %msg.i46 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %msg.i46, align 4
  %flags.i47 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i46, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i47 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i47, align 2
  %buf2.i49 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i46, i32 0, i32 3
  %28 = ptrtoint ptr %buf2.i49 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %buf.i45, ptr %buf2.i49, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %call.i50 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %msg.i46, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i50)
  %cmp.not.i51 = icmp eq i32 %call.i50, 1
  br i1 %cmp.not.i51, label %s5h1432_writereg.exit.s5h1432_writereg.exit54_crit_edge, label %do.end.i53

s5h1432_writereg.exit.s5h1432_writereg.exit54_crit_edge: ; preds = %s5h1432_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_writereg.exit54

do.end.i53:                                       ; preds = %s5h1432_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 9, i32 noundef 27, i32 noundef %call.i50) #9
  br label %s5h1432_writereg.exit54

s5h1432_writereg.exit54:                          ; preds = %do.end.i53, %s5h1432_writereg.exit.s5h1432_writereg.exit54_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i46) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i45) #6
  call fastcc void @s5h1432_set_channel_bandwidth(ptr noundef %fe, i32 noundef %dvb_bandwidth.0)
  %31 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bandwidth_hz, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %32, label %s5h1432_writereg.exit54.cleanup_crit_edge [
    i32 6000000, label %s5h1432_writereg.exit54.sw.epilog18_crit_edge
    i32 7000000, label %s5h1432_writereg.exit54.sw.epilog18_crit_edge75
    i32 8000000, label %s5h1432_writereg.exit54.sw.epilog18_crit_edge76
  ]

s5h1432_writereg.exit54.sw.epilog18_crit_edge76:  ; preds = %s5h1432_writereg.exit54
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog18

s5h1432_writereg.exit54.sw.epilog18_crit_edge75:  ; preds = %s5h1432_writereg.exit54
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog18

s5h1432_writereg.exit54.sw.epilog18_crit_edge:    ; preds = %s5h1432_writereg.exit54
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog18

s5h1432_writereg.exit54.cleanup_crit_edge:        ; preds = %s5h1432_writereg.exit54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog18:                                      ; preds = %s5h1432_writereg.exit54.sw.epilog18_crit_edge, %s5h1432_writereg.exit54.sw.epilog18_crit_edge75, %s5h1432_writereg.exit54.sw.epilog18_crit_edge76
  call fastcc void @s5h1432_set_IF(ptr noundef %fe)
  call void @msleep(i32 noundef 30) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i55) #6
  %34 = getelementptr inbounds [2 x i8], ptr %buf.i55, i32 0, i32 1
  %35 = ptrtoint ptr %buf.i55 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 9, ptr %buf.i55, align 1
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 26, ptr %34, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i56) #6
  %37 = getelementptr inbounds i8, ptr %msg.i56, i32 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 196607, ptr %37, align 4
  %39 = ptrtoint ptr %msg.i56 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %msg.i56, align 4
  %flags.i57 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i56, i32 0, i32 1
  %40 = ptrtoint ptr %flags.i57 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %flags.i57, align 2
  %buf2.i59 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i56, i32 0, i32 3
  %41 = ptrtoint ptr %buf2.i59 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %buf.i55, ptr %buf2.i59, align 4
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %call.i60 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %msg.i56, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i60)
  %cmp.not.i61 = icmp eq i32 %call.i60, 1
  br i1 %cmp.not.i61, label %sw.epilog18.s5h1432_writereg.exit64_crit_edge, label %do.end.i63

sw.epilog18.s5h1432_writereg.exit64_crit_edge:    ; preds = %sw.epilog18
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_writereg.exit64

do.end.i63:                                       ; preds = %sw.epilog18
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 9, i32 noundef 26, i32 noundef %call.i60) #9
  br label %s5h1432_writereg.exit64

s5h1432_writereg.exit64:                          ; preds = %do.end.i63, %sw.epilog18.s5h1432_writereg.exit64_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i56) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i55) #6
  call void @msleep(i32 noundef 30) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i65) #6
  %44 = getelementptr inbounds [2 x i8], ptr %buf.i65, i32 0, i32 1
  %45 = ptrtoint ptr %buf.i65 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 9, ptr %buf.i65, align 1
  %46 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 27, ptr %44, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i66) #6
  %47 = getelementptr inbounds i8, ptr %msg.i66, i32 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 196607, ptr %47, align 4
  %49 = ptrtoint ptr %msg.i66 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %msg.i66, align 4
  %flags.i67 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i66, i32 0, i32 1
  %50 = ptrtoint ptr %flags.i67 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %flags.i67, align 2
  %buf2.i69 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i66, i32 0, i32 3
  %51 = ptrtoint ptr %buf2.i69 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %buf.i65, ptr %buf2.i69, align 4
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %call.i70 = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %msg.i66, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i70)
  %cmp.not.i71 = icmp eq i32 %call.i70, 1
  br i1 %cmp.not.i71, label %s5h1432_writereg.exit64.s5h1432_writereg.exit74_crit_edge, label %do.end.i73

s5h1432_writereg.exit64.s5h1432_writereg.exit74_crit_edge: ; preds = %s5h1432_writereg.exit64
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_writereg.exit74

do.end.i73:                                       ; preds = %s5h1432_writereg.exit64
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 9, i32 noundef 27, i32 noundef %call.i70) #9
  br label %s5h1432_writereg.exit74

s5h1432_writereg.exit74:                          ; preds = %do.end.i73, %s5h1432_writereg.exit64.s5h1432_writereg.exit74_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i66) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i65) #6
  br label %if.end

if.end:                                           ; preds = %s5h1432_writereg.exit74, %entry.if.end_crit_edge
  %54 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dtv_property_cache, align 4
  %56 = ptrtoint ptr %current_frequency to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %current_frequency, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %s5h1432_writereg.exit54.cleanup_crit_edge, %if.else.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s5h1432_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef readnone %tune) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s5h1432_read_status(ptr nocapture noundef readnone %fe, ptr nocapture noundef readnone %status) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s5h1432_read_ber(ptr nocapture noundef readnone %fe, ptr nocapture noundef readnone %ber) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s5h1432_read_signal_strength(ptr nocapture noundef readnone %fe, ptr nocapture noundef readnone %signal_strength) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s5h1432_read_snr(ptr nocapture noundef readnone %fe, ptr nocapture noundef readnone %snr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s5h1432_read_ucblocks(ptr nocapture noundef readnone %fe, ptr nocapture noundef readnone %ucblocks) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5h1432_set_channel_bandwidth(ptr nocapture noundef readonly %fe, i32 noundef %bandwidth) unnamed_addr #0 align 64 {
entry:
  %buf.i1 = alloca [2 x i8], align 1
  %msg.i2 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %2 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 46, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %6 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags.i, align 2
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %10 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %11 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %12 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %13 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b1.i, ptr %buf7.i, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.s5h1432_readreg.exit_crit_edge, label %do.end.i

entry.s5h1432_readreg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_readreg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i) #9
  br label %s5h1432_readreg.exit

s5h1432_readreg.exit:                             ; preds = %do.end.i, %entry.s5h1432_readreg.exit_crit_edge
  %16 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %18 = and i8 %17, -13
  %19 = zext i32 %bandwidth to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %bandwidth, label %s5h1432_readreg.exit.cleanup_crit_edge [
    i32 6, label %sw.bb
    i32 7, label %sw.bb4
    i32 8, label %s5h1432_readreg.exit.sw.epilog_crit_edge
  ]

s5h1432_readreg.exit.sw.epilog_crit_edge:         ; preds = %s5h1432_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

s5h1432_readreg.exit.cleanup_crit_edge:           ; preds = %s5h1432_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %s5h1432_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %20 = or i8 %18, 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %s5h1432_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %21 = or i8 %18, 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb, %s5h1432_readreg.exit.sw.epilog_crit_edge
  %reg.0 = phi i8 [ %21, %sw.bb4 ], [ %20, %sw.bb ], [ %18, %s5h1432_readreg.exit.sw.epilog_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1) #6
  %22 = getelementptr inbounds [2 x i8], ptr %buf.i1, i32 0, i32 1
  %23 = ptrtoint ptr %buf.i1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 46, ptr %buf.i1, align 1
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %reg.0, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2) #6
  %25 = getelementptr inbounds i8, ptr %msg.i2, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 196607, ptr %25, align 4
  %27 = ptrtoint ptr %msg.i2 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %msg.i2, align 4
  %flags.i3 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2, i32 0, i32 1
  %28 = ptrtoint ptr %flags.i3 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %flags.i3, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2, i32 0, i32 3
  %29 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %buf.i1, ptr %buf2.i, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call.i5 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %msg.i2, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i5)
  %cmp.not.i6 = icmp eq i32 %call.i5, 1
  br i1 %cmp.not.i6, label %sw.epilog.s5h1432_writereg.exit_crit_edge, label %do.end.i7

sw.epilog.s5h1432_writereg.exit_crit_edge:        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_writereg.exit

do.end.i7:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i = zext i8 %reg.0 to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 46, i32 noundef %conv6.i, i32 noundef %call.i5) #9
  br label %s5h1432_writereg.exit

s5h1432_writereg.exit:                            ; preds = %do.end.i7, %sw.epilog.s5h1432_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1) #6
  br label %cleanup

cleanup:                                          ; preds = %s5h1432_writereg.exit, %s5h1432_readreg.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5h1432_set_IF(ptr nocapture noundef readonly %fe) unnamed_addr #0 align 64 {
entry:
  %buf.i11 = alloca [2 x i8], align 1
  %msg.i12 = alloca %struct.i2c_msg, align 4
  %buf.i1 = alloca [2 x i8], align 1
  %msg.i2 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -28, ptr %buf.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -86, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196607, ptr %5, align 4
  %7 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags.i, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %9 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buf.i, ptr %buf2.i, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %11, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %entry.s5h1432_writereg.exit_crit_edge, label %do.end.i

entry.s5h1432_writereg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_writereg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 228, i32 noundef 170, i32 noundef %call.i) #9
  br label %s5h1432_writereg.exit

s5h1432_writereg.exit:                            ; preds = %do.end.i, %entry.s5h1432_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1) #6
  %12 = getelementptr inbounds [2 x i8], ptr %buf.i1, i32 0, i32 1
  %13 = ptrtoint ptr %buf.i1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -27, ptr %buf.i1, align 1
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -86, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2) #6
  %15 = getelementptr inbounds i8, ptr %msg.i2, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 196607, ptr %15, align 4
  %17 = ptrtoint ptr %msg.i2 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %msg.i2, align 4
  %flags.i3 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2, i32 0, i32 1
  %18 = ptrtoint ptr %flags.i3 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %flags.i3, align 2
  %buf2.i5 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2, i32 0, i32 3
  %19 = ptrtoint ptr %buf2.i5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %buf.i1, ptr %buf2.i5, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i6 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i2, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i6)
  %cmp.not.i7 = icmp eq i32 %call.i6, 1
  br i1 %cmp.not.i7, label %s5h1432_writereg.exit.s5h1432_writereg.exit10_crit_edge, label %do.end.i9

s5h1432_writereg.exit.s5h1432_writereg.exit10_crit_edge: ; preds = %s5h1432_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_writereg.exit10

do.end.i9:                                        ; preds = %s5h1432_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 229, i32 noundef 170, i32 noundef %call.i6) #9
  br label %s5h1432_writereg.exit10

s5h1432_writereg.exit10:                          ; preds = %do.end.i9, %s5h1432_writereg.exit.s5h1432_writereg.exit10_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i11) #6
  %22 = getelementptr inbounds [2 x i8], ptr %buf.i11, i32 0, i32 1
  %23 = ptrtoint ptr %buf.i11 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -25, ptr %buf.i11, align 1
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -22, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i12) #6
  %25 = getelementptr inbounds i8, ptr %msg.i12, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 196607, ptr %25, align 4
  %27 = ptrtoint ptr %msg.i12 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %msg.i12, align 4
  %flags.i13 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i12, i32 0, i32 1
  %28 = ptrtoint ptr %flags.i13 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %flags.i13, align 2
  %buf2.i15 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i12, i32 0, i32 3
  %29 = ptrtoint ptr %buf2.i15 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %buf.i11, ptr %buf2.i15, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call.i16 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %msg.i12, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i16)
  %cmp.not.i17 = icmp eq i32 %call.i16, 1
  br i1 %cmp.not.i17, label %s5h1432_writereg.exit10.s5h1432_writereg.exit20_crit_edge, label %do.end.i19

s5h1432_writereg.exit10.s5h1432_writereg.exit20_crit_edge: ; preds = %s5h1432_writereg.exit10
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5h1432_writereg.exit20

do.end.i19:                                       ; preds = %s5h1432_writereg.exit10
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 231, i32 noundef 234, i32 noundef %call.i16) #9
  br label %s5h1432_writereg.exit20

s5h1432_writereg.exit20:                          ; preds = %do.end.i19, %s5h1432_writereg.exit10.s5h1432_writereg.exit20_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i12) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i11) #6
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !13, !15, !17, !19, !20, !22, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/s5h1432.c", i32 338, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @s5h1432_attach._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @s5h1432_attach._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_s5h1432_attach, !7, !"__ksymtab_s5h1432_attach", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/s5h1432.c", i32 358, i32 1}
!8 = !{ptr @__param_debug, !9, !"__param_debug", i1 false, i1 false}
!9 = !{!"../drivers/media/dvb-frontends/s5h1432.c", i32 385, i32 1}
!10 = !{ptr @__UNIQUE_ID_debugtype290, !9, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_debug291, !12, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/s5h1432.c", i32 386, i32 1}
!13 = !{ptr @__UNIQUE_ID_description292, !14, !"__UNIQUE_ID_description292", i1 false, i1 false}
!14 = !{!"../drivers/media/dvb-frontends/s5h1432.c", i32 388, i32 1}
!15 = !{ptr @__UNIQUE_ID_author293, !16, !"__UNIQUE_ID_author293", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/s5h1432.c", i32 389, i32 1}
!17 = !{ptr @__UNIQUE_ID_file294, !18, !"__UNIQUE_ID_file294", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-frontends/s5h1432.c", i32 390, i32 1}
!19 = !{ptr @__UNIQUE_ID_license295, !18, !"__UNIQUE_ID_license295", i1 false, i1 false}
!20 = !{ptr @debug, !21, !"debug", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/s5h1432.c", i32 35, i32 12}
!22 = !{ptr @s5h1432_ops, !23, !"s5h1432_ops", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/s5h1432.c", i32 360, i32 38}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/s5h1432.c", i32 241, i32 2}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @s5h1432_init._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @s5h1432_init._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/dvb-frontends/s5h1432.c", i32 53, i32 3}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @s5h1432_writereg._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @s5h1432_writereg._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/dvb-frontends/s5h1432.c", i32 73, i32 3}
!36 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @s5h1432_readreg._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @s5h1432_readreg._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/dvb-frontends/s5h1432.c", i32 150, i32 4}
!41 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @s5h1432_set_IF._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @s5h1432_set_IF._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @__param_str_debug, !9, !"__param_str_debug", i1 false, i1 false}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
