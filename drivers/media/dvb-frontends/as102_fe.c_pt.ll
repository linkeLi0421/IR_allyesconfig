; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/as102_fe.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/as102_fe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+as102_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_as102_attach\09\09\09\09"
module asm "\09.long\09__crc_as102_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_as102_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22as102_attach\22\09\09\09\09\09"
module asm "__kstrtabns_as102_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.as102_state = type { %struct.dvb_frontend, %struct.as10x_demod_stats, ptr, ptr, i8, i16, i32 }
%struct.as10x_demod_stats = type <{ i32, i32, i32, i16, i8 }>
%struct.as10x_tune_args = type { i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.as10x_tps = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i16 }>
%struct.as102_fe_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.as10x_tune_status = type <{ i8, i16, i16, i16 }>

@as102_fe_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Abilis AS102 DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 174000000, i32 862000000, i32 166667, i32 0, i32 0, i32 0, i32 0, i32 -1071960401 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @as102_fe_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @as102_fe_set_frontend, ptr @as102_fe_get_tune_settings, ptr @as102_fe_get_frontend, ptr @as102_fe_read_status, ptr @as102_fe_read_ber, ptr @as102_fe_read_signal_strength, ptr @as102_fe_read_snr, ptr @as102_fe_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @as102_fe_ts_bus_ctrl, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__kstrtab_as102_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_as102_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_as102_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @as102_attach to i32), ptr @__kstrtab_as102_attach, ptr @__kstrtabns_as102_attach }, section "___ksymtab_gpl+as102_attach", align 4
@__UNIQUE_ID_description293 = internal constant [30 x i8] c"as102_fe.description=as102-fe\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [51 x i8] c"as102_fe.file=drivers/media/dvb-frontends/as102_fe\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [21 x i8] c"as102_fe.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [63 x i8] c"as102_fe.author=Pierrick Hascoet <pierrick.hascoet@abilis.com>\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@as102_fe_set_frontend.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"as102_fe\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"as102_fe_set_frontend\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/dvb-frontends/as102_fe.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"as102: tuner parameters: freq: %d  bw: 0x%02x  gi: 0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@as102_fe_set_frontend.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"as102: \09hierarchy: 0x%02x  selected: %s  code_rate_%s: 0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HP\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"LP\00", [29 x i8] zeroinitializer }, align 32
@as102_fe_read_status.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"as102_fe_read_status\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"as102: tuner status: 0x%02x, strength %d, per: %d, ber: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@switch.table.as102_fe_set_frontend = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\01\02\03\FF", [27 x i8] zeroinitializer }, align 32
@switch.table.as102_fe_set_frontend.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\00\01\02\FF\03\FF\04", [25 x i8] zeroinitializer }, align 32
@switch.table.as102_fe_set_frontend.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\00\01\02\FF\03\FF\04", [25 x i8] zeroinitializer }, align 32
@switch.table.as102_fe_set_frontend.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\00\01\02\FF\03\FF\04", [25 x i8] zeroinitializer }, align 32
@switch.table.as102_fe_get_frontend = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 3], [20 x i8] zeroinitializer }, align 32
@switch.table.as102_fe_get_frontend.12 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7], [44 x i8] zeroinitializer }, align 32
@switch.table.as102_fe_get_frontend.13 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7], [44 x i8] zeroinitializer }, align 32
@switch.table.as102_fe_read_status = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 3, i32 15, i32 31], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.14 = private unnamed_addr constant [13 x i8] c"as102_fe_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 410, i32 38 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 143, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 168, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [42 x i8] c"../drivers/media/dvb-frontends/as102_fe.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 331, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [35 x i8] c"switch.table.as102_fe_set_frontend\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [37 x i8] c"switch.table.as102_fe_set_frontend.9\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [38 x i8] c"switch.table.as102_fe_set_frontend.10\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [38 x i8] c"switch.table.as102_fe_set_frontend.11\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [35 x i8] c"switch.table.as102_fe_get_frontend\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [38 x i8] c"switch.table.as102_fe_get_frontend.12\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [38 x i8] c"switch.table.as102_fe_get_frontend.13\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [34 x i8] c"switch.table.as102_fe_read_status\00", align 1
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_as102_attach, ptr @as102_fe_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @switch.table.as102_fe_set_frontend, ptr @switch.table.as102_fe_set_frontend.9, ptr @switch.table.as102_fe_set_frontend.10, ptr @switch.table.as102_fe_set_frontend.11, ptr @switch.table.as102_fe_get_frontend, ptr @switch.table.as102_fe_get_frontend.12, ptr @switch.table.as102_fe_get_frontend.13, ptr @switch.table.as102_fe_read_status], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as102_fe_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.as102_fe_set_frontend to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.as102_fe_set_frontend.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.as102_fe_set_frontend.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.as102_fe_set_frontend.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.as102_fe_get_frontend to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.as102_fe_get_frontend.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.as102_fe_get_frontend.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.as102_fe_read_status to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @as102_attach(ptr noundef %name, ptr noundef %ops, ptr noundef %priv, i8 noundef zeroext %elna_cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1072) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  %ops1 = getelementptr inbounds %struct.as102_state, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %ops1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ops, ptr %ops1, align 8
  %priv2 = getelementptr inbounds %struct.as102_state, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %priv2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %priv, ptr %priv2, align 4
  %elna_cfg3 = getelementptr inbounds %struct.as102_state, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %elna_cfg3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %elna_cfg, ptr %elna_cfg3, align 8
  %ops4 = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %ops4, ptr @as102_fe_ops, i32 544)
  %call7 = tail call i32 @strscpy(ptr noundef %ops4, ptr noundef %name, i32 noundef 128) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @as102_fe_release(ptr nocapture noundef readonly %fe) #0 align 64 {
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
define internal i32 @as102_fe_set_frontend(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %tune_args = alloca %struct.as10x_tune_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tune_args) #6
  %2 = getelementptr inbounds i8, ptr %tune_args, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 0, ptr %2, align 4
  %4 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dtv_property_cache, align 4
  %div = udiv i32 %5, 1000
  %6 = ptrtoint ptr %tune_args to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div, ptr %tune_args, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %7 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bandwidth_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000000, i32 %8)
  %switch.selectcmp149 = icmp eq i32 %8, 7000000
  %switch.select150 = select i1 %switch.selectcmp149, i8 2, i8 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %8)
  %switch.selectcmp151 = icmp eq i32 %8, 6000000
  %switch.select152 = select i1 %switch.selectcmp151, i8 1, i8 %switch.select150
  %bandwidth5 = getelementptr inbounds %struct.as10x_tune_args, ptr %tune_args, i32 0, i32 1
  %9 = ptrtoint ptr %bandwidth5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %switch.select152, ptr %bandwidth5, align 4
  %guard_interval = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 8
  %10 = ptrtoint ptr %guard_interval to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %guard_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %12 = icmp ult i32 %11, 4
  %switch.idx.cast = trunc i32 %11 to i8
  %.sink143 = select i1 %12, i8 %switch.idx.cast, i8 -1
  %guard_interval16 = getelementptr inbounds %struct.as10x_tune_args, ptr %tune_args, i32 0, i32 7
  %13 = ptrtoint ptr %guard_interval16 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.sink143, ptr %guard_interval16, align 2
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %modulation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %16 = icmp ult i32 %15, 4
  %switch.shiftamt = shl i32 %15, 3
  %switch.downshift = lshr i32 50266368, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %.sink144 = select i1 %16, i8 %switch.masked, i8 -1
  %modulation25 = getelementptr inbounds %struct.as10x_tune_args, ptr %tune_args, i32 0, i32 3
  %17 = ptrtoint ptr %modulation25 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.sink144, ptr %modulation25, align 2
  %transmission_mode = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 6
  %18 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %transmission_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %switch.selectcmp = icmp eq i32 %19, 1
  %switch.select = select i1 %switch.selectcmp, i8 1, i8 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %switch.selectcmp147 = icmp eq i32 %19, 0
  %switch.select148 = select i1 %switch.selectcmp147, i8 0, i8 %switch.select
  %transmission_mode32 = getelementptr inbounds %struct.as10x_tune_args, ptr %tune_args, i32 0, i32 8
  %20 = ptrtoint ptr %transmission_mode32 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %switch.select148, ptr %transmission_mode32, align 1
  %hierarchy = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 9
  %21 = ptrtoint ptr %hierarchy to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hierarchy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %22)
  %23 = icmp ult i32 %22, 5
  br i1 %23, label %switch.lookup153, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

switch.lookup153:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.as102_fe_set_frontend, i32 0, i32 %22
  %24 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %24)
  %switch.load = load i8, ptr %switch.gep, align 1
  %hierarchy35 = getelementptr inbounds %struct.as10x_tune_args, ptr %tune_args, i32 0, i32 4
  %25 = ptrtoint ptr %hierarchy35 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %switch.load, ptr %hierarchy35, align 1
  br label %do.body

do.body:                                          ; preds = %switch.lookup153, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as102_fe_set_frontend.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as102_fe_set_frontend, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !35

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dtv_property_cache, align 4
  %bandwidth48 = getelementptr inbounds %struct.as10x_tune_args, ptr %tune_args, i32 0, i32 1
  %28 = ptrtoint ptr %bandwidth48 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bandwidth48, align 4
  %conv = zext i8 %29 to i32
  %guard_interval49 = getelementptr inbounds %struct.as10x_tune_args, ptr %tune_args, i32 0, i32 7
  %30 = ptrtoint ptr %guard_interval49 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %guard_interval49, align 2
  %conv50 = zext i8 %31 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @as102_fe_set_frontend.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.3, i32 noundef %27, i32 noundef %conv, i32 noundef %conv50) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %hierarchy51 = getelementptr inbounds %struct.as10x_tune_args, ptr %tune_args, i32 0, i32 4
  %32 = ptrtoint ptr %hierarchy51 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %hierarchy51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp.not = icmp eq i8 %33, 0
  br i1 %cmp.not, label %do.end.if.else_crit_edge, label %land.lhs.true

do.end.if.else_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %do.end
  %code_rate_LP = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 12
  %34 = ptrtoint ptr %code_rate_LP to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %code_rate_LP, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp54 = icmp eq i32 %35, 0
  br i1 %cmp54, label %if.then62, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %code_rate_HP = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 11
  %36 = ptrtoint ptr %code_rate_HP to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %code_rate_HP, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp56 = icmp eq i32 %37, 0
  br i1 %cmp56, label %lor.lhs.false.if.end65_crit_edge, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

lor.lhs.false.if.end65_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then62:                                        ; preds = %land.lhs.true
  %hier_select = getelementptr inbounds %struct.as10x_tune_args, ptr %tune_args, i32 0, i32 2
  %38 = ptrtoint ptr %hier_select to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 2, ptr %hier_select, align 1
  %code_rate_HP63 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 11
  %39 = ptrtoint ptr %code_rate_HP63 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %code_rate_HP63, align 4
  %switch.tableidx = add i32 %40, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %41 = icmp ult i32 %switch.tableidx, 7
  br i1 %41, label %switch.lookup154, label %if.then62.as102_fe_get_code_rate.exit_crit_edge

if.then62.as102_fe_get_code_rate.exit_crit_edge:  ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  br label %as102_fe_get_code_rate.exit

switch.lookup154:                                 ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep155 = getelementptr inbounds [7 x i8], ptr @switch.table.as102_fe_set_frontend.9, i32 0, i32 %switch.tableidx
  %42 = ptrtoint ptr %switch.gep155 to i32
  call void @__asan_load1_noabort(i32 %42)
  %switch.load156 = load i8, ptr %switch.gep155, align 1
  br label %as102_fe_get_code_rate.exit

as102_fe_get_code_rate.exit:                      ; preds = %switch.lookup154, %if.then62.as102_fe_get_code_rate.exit_crit_edge
  %c.0.i = phi i8 [ %switch.load156, %switch.lookup154 ], [ -1, %if.then62.as102_fe_get_code_rate.exit_crit_edge ]
  %code_rate = getelementptr inbounds %struct.as10x_tune_args, ptr %tune_args, i32 0, i32 6
  %43 = ptrtoint ptr %code_rate to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %c.0.i, ptr %code_rate, align 1
  br label %if.end65

if.end65:                                         ; preds = %as102_fe_get_code_rate.exit, %lor.lhs.false.if.end65_crit_edge
  %code_rate_HP66 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 11
  %44 = ptrtoint ptr %code_rate_HP66 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %code_rate_HP66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp67 = icmp eq i32 %45, 0
  br i1 %cmp67, label %if.then69, label %if.end65.do.body75_crit_edge

if.end65.do.body75_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body75

if.then69:                                        ; preds = %if.end65
  %hier_select70 = getelementptr inbounds %struct.as10x_tune_args, ptr %tune_args, i32 0, i32 2
  %46 = ptrtoint ptr %hier_select70 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %hier_select70, align 1
  %switch.tableidx158 = add i32 %35, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx158)
  %47 = icmp ult i32 %switch.tableidx158, 7
  br i1 %47, label %switch.lookup157, label %if.then69.as102_fe_get_code_rate.exit133_crit_edge

if.then69.as102_fe_get_code_rate.exit133_crit_edge: ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  br label %as102_fe_get_code_rate.exit133

switch.lookup157:                                 ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep159 = getelementptr inbounds [7 x i8], ptr @switch.table.as102_fe_set_frontend.10, i32 0, i32 %switch.tableidx158
  %48 = ptrtoint ptr %switch.gep159 to i32
  call void @__asan_load1_noabort(i32 %48)
  %switch.load160 = load i8, ptr %switch.gep159, align 1
  br label %as102_fe_get_code_rate.exit133

as102_fe_get_code_rate.exit133:                   ; preds = %switch.lookup157, %if.then69.as102_fe_get_code_rate.exit133_crit_edge
  %c.0.i132 = phi i8 [ %switch.load160, %switch.lookup157 ], [ -1, %if.then69.as102_fe_get_code_rate.exit133_crit_edge ]
  %code_rate73 = getelementptr inbounds %struct.as10x_tune_args, ptr %tune_args, i32 0, i32 6
  %49 = ptrtoint ptr %code_rate73 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %c.0.i132, ptr %code_rate73, align 1
  br label %do.body75

do.body75:                                        ; preds = %as102_fe_get_code_rate.exit133, %if.end65.do.body75_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as102_fe_set_frontend.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as102_fe_set_frontend, %if.then87)) #6
          to label %if.end107 [label %if.then87], !srcloc !35

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %hierarchy51 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %hierarchy51, align 1
  %conv89 = zext i8 %51 to i32
  %hier_select90 = getelementptr inbounds %struct.as10x_tune_args, ptr %tune_args, i32 0, i32 2
  %52 = ptrtoint ptr %hier_select90 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %hier_select90, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %53)
  %cmp92 = icmp eq i8 %53, 2
  %cond = select i1 %cmp92, ptr @.str.5, ptr @.str.6
  %code_rate99 = getelementptr inbounds %struct.as10x_tune_args, ptr %tune_args, i32 0, i32 6
  %54 = ptrtoint ptr %code_rate99 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %code_rate99, align 1
  %conv100 = zext i8 %55 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @as102_fe_set_frontend.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.4, i32 noundef %conv89, ptr noundef nonnull %cond, ptr noundef nonnull %cond, i32 noundef %conv100) #6
  br label %if.end107

if.else:                                          ; preds = %lor.lhs.false.if.else_crit_edge, %do.end.if.else_crit_edge
  %code_rate_HP104 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 11
  %56 = ptrtoint ptr %code_rate_HP104 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %code_rate_HP104, align 4
  %switch.tableidx162 = add i32 %57, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx162)
  %58 = icmp ult i32 %switch.tableidx162, 7
  br i1 %58, label %switch.lookup161, label %if.else.as102_fe_get_code_rate.exit140_crit_edge

if.else.as102_fe_get_code_rate.exit140_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %as102_fe_get_code_rate.exit140

switch.lookup161:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep163 = getelementptr inbounds [7 x i8], ptr @switch.table.as102_fe_set_frontend.11, i32 0, i32 %switch.tableidx162
  %59 = ptrtoint ptr %switch.gep163 to i32
  call void @__asan_load1_noabort(i32 %59)
  %switch.load164 = load i8, ptr %switch.gep163, align 1
  br label %as102_fe_get_code_rate.exit140

as102_fe_get_code_rate.exit140:                   ; preds = %switch.lookup161, %if.else.as102_fe_get_code_rate.exit140_crit_edge
  %c.0.i139 = phi i8 [ %switch.load164, %switch.lookup161 ], [ -1, %if.else.as102_fe_get_code_rate.exit140_crit_edge ]
  %code_rate106 = getelementptr inbounds %struct.as10x_tune_args, ptr %tune_args, i32 0, i32 6
  %60 = ptrtoint ptr %code_rate106 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %c.0.i139, ptr %code_rate106, align 1
  br label %if.end107

if.end107:                                        ; preds = %as102_fe_get_code_rate.exit140, %if.then87, %do.body75
  %ops = getelementptr inbounds %struct.as102_state, ptr %1, i32 0, i32 2
  %61 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %priv = getelementptr inbounds %struct.as102_state, ptr %1, i32 0, i32 3
  %65 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %priv, align 4
  %call108 = call i32 %64(ptr noundef %66, ptr noundef nonnull %tune_args) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tune_args) #6
  ret i32 %call108
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @as102_fe_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %settings) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %settings to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1000, ptr %settings, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as102_fe_get_frontend(ptr nocapture noundef readonly %fe, ptr noundef writeonly %c) #0 align 64 {
entry:
  %tps = alloca %struct.as10x_tps, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %tps) #6
  %2 = call ptr @memset(ptr %tps, i32 0, i32 11)
  %ops = getelementptr inbounds %struct.as102_state, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %get_tps = getelementptr inbounds %struct.as102_fe_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %get_tps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_tps, align 4
  %priv = getelementptr inbounds %struct.as102_state, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %call = call i32 %6(ptr noundef %8, ptr noundef nonnull %tps) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %tps to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tps, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %11 = icmp ult i8 %10, 3
  br i1 %11, label %switch.lookup, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = sext i8 %10 to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.as102_fe_get_frontend, i32 0, i32 %12
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load i32, ptr %switch.gep, align 4
  %modulation5 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 1
  %14 = ptrtoint ptr %modulation5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %switch.load, ptr %modulation5, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end.sw.epilog_crit_edge
  %hierarchy = getelementptr inbounds %struct.as10x_tps, ptr %tps, i32 0, i32 1
  %15 = ptrtoint ptr %hierarchy to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %hierarchy, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %16)
  %17 = icmp ult i8 %16, 4
  br i1 %17, label %switch.lookup87, label %sw.epilog.sw.epilog15_crit_edge

sw.epilog.sw.epilog15_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog15

switch.lookup87:                                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %switch.idx.cast = zext i8 %16 to i32
  %hierarchy14 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 9
  %18 = ptrtoint ptr %hierarchy14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %switch.idx.cast, ptr %hierarchy14, align 4
  br label %sw.epilog15

sw.epilog15:                                      ; preds = %switch.lookup87, %sw.epilog.sw.epilog15_crit_edge
  %code_rate_HP = getelementptr inbounds %struct.as10x_tps, ptr %tps, i32 0, i32 3
  %19 = ptrtoint ptr %code_rate_HP to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %code_rate_HP, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %20)
  %21 = icmp ult i8 %20, 5
  br i1 %21, label %switch.lookup88, label %sw.epilog15.sw.epilog27_crit_edge

sw.epilog15.sw.epilog27_crit_edge:                ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog27

switch.lookup88:                                  ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #8
  %22 = sext i8 %20 to i32
  %switch.gep89 = getelementptr inbounds [5 x i32], ptr @switch.table.as102_fe_get_frontend.12, i32 0, i32 %22
  %23 = ptrtoint ptr %switch.gep89 to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load90 = load i32, ptr %switch.gep89, align 4
  %code_rate_HP26 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 11
  %24 = ptrtoint ptr %code_rate_HP26 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %switch.load90, ptr %code_rate_HP26, align 4
  br label %sw.epilog27

sw.epilog27:                                      ; preds = %switch.lookup88, %sw.epilog15.sw.epilog27_crit_edge
  %code_rate_LP = getelementptr inbounds %struct.as10x_tps, ptr %tps, i32 0, i32 4
  %25 = ptrtoint ptr %code_rate_LP to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %code_rate_LP, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %26)
  %27 = icmp ult i8 %26, 5
  br i1 %27, label %switch.lookup91, label %sw.epilog27.sw.epilog39_crit_edge

sw.epilog27.sw.epilog39_crit_edge:                ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog39

switch.lookup91:                                  ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #8
  %28 = sext i8 %26 to i32
  %switch.gep92 = getelementptr inbounds [5 x i32], ptr @switch.table.as102_fe_get_frontend.13, i32 0, i32 %28
  %29 = ptrtoint ptr %switch.gep92 to i32
  call void @__asan_load4_noabort(i32 %29)
  %switch.load93 = load i32, ptr %switch.gep92, align 4
  %code_rate_LP38 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 12
  %30 = ptrtoint ptr %code_rate_LP38 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %switch.load93, ptr %code_rate_LP38, align 4
  br label %sw.epilog39

sw.epilog39:                                      ; preds = %switch.lookup91, %sw.epilog27.sw.epilog39_crit_edge
  %guard_interval = getelementptr inbounds %struct.as10x_tps, ptr %tps, i32 0, i32 5
  %31 = ptrtoint ptr %guard_interval to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %guard_interval, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %32)
  %33 = icmp ult i8 %32, 4
  br i1 %33, label %switch.lookup94, label %sw.epilog39.sw.epilog49_crit_edge

sw.epilog39.sw.epilog49_crit_edge:                ; preds = %sw.epilog39
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog49

switch.lookup94:                                  ; preds = %sw.epilog39
  call void @__sanitizer_cov_trace_pc() #8
  %switch.idx.cast95 = zext i8 %32 to i32
  %guard_interval48 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 8
  %34 = ptrtoint ptr %guard_interval48 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %switch.idx.cast95, ptr %guard_interval48, align 4
  br label %sw.epilog49

sw.epilog49:                                      ; preds = %switch.lookup94, %sw.epilog39.sw.epilog49_crit_edge
  %transmission_mode = getelementptr inbounds %struct.as10x_tps, ptr %tps, i32 0, i32 6
  %35 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %transmission_mode, align 1
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i8 %36, label %sw.epilog49.cleanup_crit_edge [
    i8 0, label %sw.epilog49.cleanup.sink.split_crit_edge
    i8 1, label %sw.bb53
  ]

sw.epilog49.cleanup.sink.split_crit_edge:         ; preds = %sw.epilog49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.epilog49.cleanup_crit_edge:                    ; preds = %sw.epilog49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb53:                                          ; preds = %sw.epilog49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb53, %sw.epilog49.cleanup.sink.split_crit_edge
  %.sink86 = phi i32 [ 1, %sw.bb53 ], [ 0, %sw.epilog49.cleanup.sink.split_crit_edge ]
  %transmission_mode52 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 6
  %38 = ptrtoint ptr %transmission_mode52 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.sink86, ptr %transmission_mode52, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.epilog49.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %sw.epilog49.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %tps) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as102_fe_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %tstate = alloca %struct.as10x_tune_status, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %tstate) #6
  %2 = call ptr @memset(ptr %tstate, i32 0, i32 7)
  %ops = getelementptr inbounds %struct.as102_state, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %get_status = getelementptr inbounds %struct.as102_fe_ops, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %get_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_status, align 4
  %priv = getelementptr inbounds %struct.as102_state, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %call = call i32 %6(ptr noundef %8, ptr noundef nonnull %tstate) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %signal_strength = getelementptr inbounds %struct.as10x_tune_status, ptr %tstate, i32 0, i32 1
  %9 = ptrtoint ptr %signal_strength to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %signal_strength, align 1
  %signal_strength1 = getelementptr inbounds %struct.as102_state, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %signal_strength1 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %signal_strength1, align 2
  %BER = getelementptr inbounds %struct.as10x_tune_status, ptr %tstate, i32 0, i32 3
  %12 = ptrtoint ptr %BER to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %BER, align 1
  %conv = zext i16 %13 to i32
  %ber = getelementptr inbounds %struct.as102_state, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %ber, align 4
  %15 = ptrtoint ptr %tstate to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tstate, align 1
  %switch.tableidx = add i8 %16, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %17 = icmp ult i8 %switch.tableidx, 3
  br i1 %17, label %switch.lookup, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.as102_fe_read_status, i32 0, i32 %18
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %do.body

do.body:                                          ; preds = %switch.lookup, %if.end.do.body_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end.do.body_crit_edge ]
  %20 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %status, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as102_fe_read_status.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as102_fe_read_status, %if.then8)) #6
          to label %do.end [label %if.then8], !srcloc !35

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %tstate to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tstate, align 1
  %conv10 = zext i8 %22 to i32
  %23 = ptrtoint ptr %signal_strength to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %signal_strength, align 1
  %conv12 = sext i16 %24 to i32
  %PER = getelementptr inbounds %struct.as10x_tune_status, ptr %tstate, i32 0, i32 2
  %25 = ptrtoint ptr %PER to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %PER, align 1
  %conv13 = zext i16 %26 to i32
  %27 = ptrtoint ptr %BER to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %BER, align 1
  %conv15 = zext i16 %28 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @as102_fe_read_status.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.8, i32 noundef %conv10, i32 noundef %conv12, i32 noundef %conv13, i32 noundef %conv15) #6
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %29 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %status, align 4
  %and = and i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %demod_stats = getelementptr inbounds %struct.as102_state, ptr %1, i32 0, i32 1
  br label %cleanup.sink.split

if.end19:                                         ; preds = %do.end
  %31 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops, align 4
  %get_stats = getelementptr inbounds %struct.as102_fe_ops, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %get_stats to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %get_stats, align 4
  %35 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv, align 4
  %demod_stats22 = getelementptr inbounds %struct.as102_state, ptr %1, i32 0, i32 1
  %call23 = call i32 %34(ptr noundef %36, ptr noundef %demod_stats22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end19.cleanup.sink.split_crit_edge, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19.cleanup.sink.split_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end19.cleanup.sink.split_crit_edge, %if.then18
  %demod_stats22.sink = phi ptr [ %demod_stats, %if.then18 ], [ %demod_stats22, %if.end19.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.then18 ], [ %call23, %if.end19.cleanup.sink.split_crit_edge ]
  %37 = call ptr @memset(ptr %demod_stats22.sink, i32 0, i32 15)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call23, %if.end19.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %tstate) #6
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @as102_fe_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %ber1 = getelementptr inbounds %struct.as102_state, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ber1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ber1, align 4
  %4 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %ber, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @as102_fe_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %signal_strength = getelementptr inbounds %struct.as102_state, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %signal_strength to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %signal_strength, align 2
  %add = mul i16 %3, -800
  %mul1 = add i16 %add, 16464
  %4 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %mul1, ptr %strength, align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @as102_fe_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %mer = getelementptr inbounds %struct.as102_state, ptr %1, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %mer to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mer, align 4
  %4 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @as102_fe_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %has_started = getelementptr inbounds %struct.as102_state, ptr %1, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %has_started to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_started, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bad_frame_count = getelementptr inbounds %struct.as102_state, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %bad_frame_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bad_frame_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %storemerge = phi i32 [ %5, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %6 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %storemerge, ptr %ucblocks, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as102_fe_ts_bus_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %acquire) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %ops = getelementptr inbounds %struct.as102_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %stream_ctrl = getelementptr inbounds %struct.as102_fe_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %stream_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stream_ctrl, align 4
  %priv = getelementptr inbounds %struct.as102_state, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  %elna_cfg = getelementptr inbounds %struct.as102_state, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %elna_cfg to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %elna_cfg, align 4
  %conv = zext i8 %9 to i32
  %call = tail call i32 %5(ptr noundef %7, i32 noundef %acquire, i32 noundef %conv) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

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
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__ksymtab_as102_attach, !1, !"__ksymtab_as102_attach", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/as102_fe.c", i32 467, i32 1}
!2 = !{ptr @__UNIQUE_ID_description293, !3, !"__UNIQUE_ID_description293", i1 false, i1 false}
!3 = !{!"../drivers/media/dvb-frontends/as102_fe.c", i32 469, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/dvb-frontends/as102_fe.c", i32 470, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author296, !8, !"__UNIQUE_ID_author296", i1 false, i1 false}
!8 = !{!"../drivers/media/dvb-frontends/as102_fe.c", i32 471, i32 1}
!9 = !{ptr @as102_fe_ops, !10, !"as102_fe_ops", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/as102_fe.c", i32 410, i32 38}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/as102_fe.c", i32 143, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @as102_fe_set_frontend.__UNIQUE_ID_ddebug290, !12, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-frontends/as102_fe.c", i32 168, i32 3}
!19 = !{ptr @as102_fe_set_frontend.__UNIQUE_ID_ddebug291, !18, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!20 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/as102_fe.c", i32 331, i32 2}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @as102_fe_read_status.__UNIQUE_ID_ddebug292, !23, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 2148272456, i64 2148272461, i64 2148272474, i64 2148272518, i64 2148272552, i64 2148272573}
