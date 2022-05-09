; ModuleID = '/llk/IR_all_yes/drivers/media/usb/ttusb-dec/ttusbdecfe.c_pt.bc'
source_filename = "../drivers/media/usb/ttusb-dec/ttusbdecfe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ttusbdecfe_dvbt_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_ttusbdecfe_dvbt_attach\09\09\09\09"
module asm "\09.long\09__crc_ttusbdecfe_dvbt_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttusbdecfe_dvbt_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22ttusbdecfe_dvbt_attach\22\09\09\09\09\09"
module asm "__kstrtabns_ttusbdecfe_dvbt_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ttusbdecfe_dvbs_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_ttusbdecfe_dvbs_attach\09\09\09\09"
module asm "\09.long\09__crc_ttusbdecfe_dvbs_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttusbdecfe_dvbs_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22ttusbdecfe_dvbs_attach\22\09\09\09\09\09"
module asm "__kstrtabns_ttusbdecfe_dvbs_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ttusbdecfe_state = type { ptr, %struct.dvb_frontend, i8, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }

@ttusbdecfe_dvbt_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"TechnoTrend/Hauppauge DEC2000-t Frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 51000000, i32 858000000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 1780398 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @ttusbdecfe_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ttusbdecfe_dvbt_set_frontend, ptr @ttusbdecfe_dvbt_get_tune_settings, ptr null, ptr @ttusbdecfe_dvbt_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@ttusbdecfe_dvbs_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"TechnoTrend/Hauppauge DEC3000-s Frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 125000, i32 0, i32 1000000, i32 45000000, i32 0, i32 1710 }, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr null, ptr @ttusbdecfe_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ttusbdecfe_dvbs_set_frontend, ptr null, ptr null, ptr @ttusbdecfe_dvbs_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ttusbdecfe_dvbs_diseqc_send_master_cmd, ptr null, ptr null, ptr @ttusbdecfe_dvbs_set_tone, ptr @ttusbdecfe_dvbs_set_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_description290 = internal constant [60 x i8] c"ttusbdecfe.description=TTUSB DEC DVB-T/S Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [47 x i8] c"ttusbdecfe.author=Alex Woods/Andrew de Quincey\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [55 x i8] c"ttusbdecfe.file=drivers/media/usb/ttusb-dec/ttusbdecfe\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [23 x i8] c"ttusbdecfe.license=GPL\00", section ".modinfo", align 1
@__kstrtab_ttusbdecfe_dvbt_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttusbdecfe_dvbt_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_ttusbdecfe_dvbt_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttusbdecfe_dvbt_attach to i32), ptr @__kstrtab_ttusbdecfe_dvbt_attach, ptr @__kstrtabns_ttusbdecfe_dvbt_attach }, section "___ksymtab+ttusbdecfe_dvbt_attach", align 4
@__kstrtab_ttusbdecfe_dvbs_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttusbdecfe_dvbs_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_ttusbdecfe_dvbs_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttusbdecfe_dvbs_attach to i32), ptr @__kstrtab_ttusbdecfe_dvbs_attach, ptr @__kstrtabns_ttusbdecfe_dvbs_attach }, section "___ksymtab+ttusbdecfe_dvbs_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__const.ttusbdecfe_dvbt_set_frontend.b = private unnamed_addr constant [20 x i8] c"\00\00\00\03\00\00\00\00\00\00\00\01\00\00\00\FF\00\00\00\FF", align 1
@ttusbdecfe_dvbt_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: unexpected reply\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ttusbdecfe_dvbt_read_status\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/usb/ttusb-dec/ttusbdecfe.c\00", [55 x i8] zeroinitializer }, align 32
@ttusbdecfe_dvbt_read_status._entry_ptr = internal global ptr @ttusbdecfe_dvbt_read_status._entry, section ".printk_index", align 4
@ttusbdecfe_dvbt_read_status._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: returned unknown value: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ttusbdecfe_dvbt_read_status._entry_ptr.5 = internal global ptr @ttusbdecfe_dvbt_read_status._entry.3, section ".printk_index", align 4
@__const.ttusbdecfe_dvbs_diseqc_send_master_cmd.b = private unnamed_addr constant <{ i8, i8, [8 x i8] }> <{ i8 0, i8 -1, [8 x i8] zeroinitializer }>, align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.7 = private unnamed_addr constant [20 x i8] c"ttusbdecfe_dvbt_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 236, i32 38 }
@___asan_gen_.10 = private unnamed_addr constant [20 x i8] c"ttusbdecfe_dvbs_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 259, i32 38 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 52, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [44 x i8] c"../drivers/media/usb/ttusb-dec/ttusbdecfe.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 68, i32 4 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__ksymtab_ttusbdecfe_dvbs_attach, ptr @__ksymtab_ttusbdecfe_dvbt_attach, ptr @ttusbdecfe_dvbt_read_status._entry, ptr @ttusbdecfe_dvbt_read_status._entry.3, ptr @ttusbdecfe_dvbt_read_status._entry_ptr, ptr @ttusbdecfe_dvbt_read_status._entry_ptr.5, ptr @ttusbdecfe_dvbt_ops, ptr @ttusbdecfe_dvbs_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusbdecfe_dvbt_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusbdecfe_dvbs_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusbdecfe_dvbt_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusbdecfe_dvbt_read_status._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ttusbdecfe_dvbt_attach(ptr noundef %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 1048) #10
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %config, ptr %call7.i, align 8
  %frontend = getelementptr inbounds %struct.ttusbdecfe_state, ptr %call7.i, i32 0, i32 1
  %ops = getelementptr inbounds %struct.ttusbdecfe_state, ptr %call7.i, i32 0, i32 1, i32 1
  %2 = call ptr @memcpy(ptr %ops, ptr @ttusbdecfe_dvbt_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.ttusbdecfe_state, ptr %call7.i, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i, ptr %demodulator_priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %frontend, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ttusbdecfe_dvbs_attach(ptr noundef %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 1048) #10
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %config, ptr %call7.i, align 8
  %voltage = getelementptr inbounds %struct.ttusbdecfe_state, ptr %call7.i, i32 0, i32 3
  %2 = ptrtoint ptr %voltage to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %voltage, align 1
  %hi_band = getelementptr inbounds %struct.ttusbdecfe_state, ptr %call7.i, i32 0, i32 2
  %3 = ptrtoint ptr %hi_band to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %hi_band, align 4
  %frontend = getelementptr inbounds %struct.ttusbdecfe_state, ptr %call7.i, i32 0, i32 1
  %ops = getelementptr inbounds %struct.ttusbdecfe_state, ptr %call7.i, i32 0, i32 1, i32 1
  %4 = call ptr @memcpy(ptr %ops, ptr @ttusbdecfe_dvbs_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.ttusbdecfe_state, ptr %call7.i, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i, ptr %demodulator_priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %frontend, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ttusbdecfe_release(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttusbdecfe_dvbt_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  %b = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %b) #7
  %2 = call ptr @memcpy(ptr %b, ptr @__const.ttusbdecfe_dvbt_set_frontend.b, i32 20)
  %3 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dtv_property_cache, align 4
  %div = udiv i32 %4, 1000
  %arrayidx = getelementptr inbounds [20 x i8], ptr %b, i32 0, i32 4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %div, ptr %arrayidx, align 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call = call i32 %9(ptr noundef %fe, i8 noundef zeroext 113, i32 noundef 20, ptr noundef nonnull %b, ptr noundef null, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %b) #7
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ttusbdecfe_dvbt_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %fesettings) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fesettings to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1500, ptr %fesettings, align 4
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %fesettings, i32 0, i32 1
  %1 = ptrtoint ptr %step_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %step_size, align 4
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %fesettings, i32 0, i32 2
  %2 = ptrtoint ptr %max_drift to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %max_drift, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttusbdecfe_dvbt_read_status(ptr noundef %fe, ptr nocapture noundef writeonly %status) #0 align 64 {
entry:
  %b = alloca [8 x i8], align 8
  %result = alloca [4 x i8], align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b) #7
  %2 = ptrtoint ptr %b to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %b, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result) #7
  %3 = getelementptr inbounds [4 x i8], ptr %result, i32 0, i32 3
  %4 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %result, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #7
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %len, align 4, !annotation !34
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %status, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call = call i32 %10(ptr noundef %fe, i8 noundef zeroext 115, i32 noundef 8, ptr noundef nonnull %b, ptr noundef nonnull %len, ptr noundef nonnull %result) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp.not = icmp eq i32 %12, 4
  br i1 %cmp.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %3, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i8 %14, label %do.end9 [
    i8 1, label %if.end4.cleanup_crit_edge
    i8 2, label %if.end4.cleanup_crit_edge22
    i8 3, label %sw.bb5
    i8 4, label %sw.bb6
  ]

if.end4.cleanup_crit_edge22:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb5:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 31, ptr %status, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 32, ptr %status, align 4
  br label %cleanup

do.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %14 to i32
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %conv) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %sw.bb6, %sw.bb5, %if.end4.cleanup_crit_edge, %if.end4.cleanup_crit_edge22, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end9 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge22 ], [ 0, %sw.bb6 ], [ 0, %sw.bb5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttusbdecfe_dvbs_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  %b = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %b) #7
  %2 = call ptr @memset(ptr %b, i32 0, i32 40)
  %3 = getelementptr inbounds [12 x i8], ptr %b, i32 0, i32 3
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %3, align 1
  %5 = getelementptr inbounds [12 x i8], ptr %b, i32 0, i32 11
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %5, align 1
  %7 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dtv_property_cache, align 4
  %hi_band = getelementptr inbounds %struct.ttusbdecfe_state, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %hi_band to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %hi_band, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  %cond = select i1 %tobool.not, i32 9750000, i32 10600000
  %add = add i32 %cond, %8
  %arrayidx = getelementptr inbounds [40 x i8], ptr %b, i32 0, i32 4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %add, ptr %arrayidx, align 1
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %12 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %symbol_rate, align 4
  %arrayidx1 = getelementptr inbounds [40 x i8], ptr %b, i32 0, i32 12
  %14 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %arrayidx1, align 1
  %arrayidx6 = getelementptr inbounds [40 x i8], ptr %b, i32 0, i32 24
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %cond, ptr %arrayidx6, align 1
  %voltage = getelementptr inbounds %struct.ttusbdecfe_state, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %voltage to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %voltage, align 1
  %conv7 = zext i8 %17 to i32
  %arrayidx8 = getelementptr inbounds [40 x i8], ptr %b, i32 0, i32 28
  %18 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %conv7, ptr %arrayidx8, align 1
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %call = call i32 %22(ptr noundef %fe, i8 noundef zeroext 113, i32 noundef 40, ptr noundef nonnull %b, ptr noundef null, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %b) #7
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ttusbdecfe_dvbs_read_status(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %status) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 31, ptr %status, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttusbdecfe_dvbs_diseqc_send_master_cmd(ptr noundef %fe, ptr nocapture noundef readonly %cmd) #0 align 64 {
entry:
  %b = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %b) #7
  %2 = call ptr @memcpy(ptr %b, ptr @__const.ttusbdecfe_dvbs_diseqc_send_master_cmd.b, i32 10)
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %msg_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %4)
  %cmp = icmp ugt i8 %4, 6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %4 to i32
  %arrayidx = getelementptr inbounds [10 x i8], ptr %b, i32 0, i32 4
  %5 = call ptr @memcpy(ptr %arrayidx, ptr %cmd, i32 %conv)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %sub6 = add nuw nsw i32 %conv, 4
  %call = call i32 %9(ptr noundef %fe, i8 noundef zeroext 114, i32 noundef %sub6, ptr noundef nonnull %b, ptr noundef null, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %b) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ttusbdecfe_dvbs_set_tone(ptr nocapture noundef readonly %fe, i32 noundef %tone) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tone)
  %cmp = icmp eq i32 %tone, 0
  %conv1 = zext i1 %cmp to i8
  %hi_band = getelementptr inbounds %struct.ttusbdecfe_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hi_band to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv1, ptr %hi_band, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ttusbdecfe_dvbs_set_voltage(ptr nocapture noundef readonly %fe, i32 noundef %voltage) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = zext i32 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %voltage, label %entry.cleanup_crit_edge [
    i32 0, label %entry.cleanup.sink.split_crit_edge
    i32 1, label %sw.bb2
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb2, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i8 [ 18, %sw.bb2 ], [ 13, %entry.cleanup.sink.split_crit_edge ]
  %voltage1 = getelementptr inbounds %struct.ttusbdecfe_state, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %voltage1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %.sink, ptr %voltage1, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !21, !22, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__UNIQUE_ID_description290, !1, !"__UNIQUE_ID_description290", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/ttusb-dec/ttusbdecfe.c", i32 284, i32 1}
!2 = !{ptr @__UNIQUE_ID_author291, !3, !"__UNIQUE_ID_author291", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/ttusb-dec/ttusbdecfe.c", i32 285, i32 1}
!4 = !{ptr @__UNIQUE_ID_file292, !5, !"__UNIQUE_ID_file292", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/ttusb-dec/ttusbdecfe.c", i32 286, i32 1}
!6 = !{ptr @__UNIQUE_ID_license293, !5, !"__UNIQUE_ID_license293", i1 false, i1 false}
!7 = !{ptr @__ksymtab_ttusbdecfe_dvbt_attach, !8, !"__ksymtab_ttusbdecfe_dvbt_attach", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/ttusb-dec/ttusbdecfe.c", i32 288, i32 1}
!9 = !{ptr @__ksymtab_ttusbdecfe_dvbs_attach, !10, !"__ksymtab_ttusbdecfe_dvbs_attach", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/ttusb-dec/ttusbdecfe.c", i32 289, i32 1}
!11 = !{ptr @ttusbdecfe_dvbt_ops, !12, !"ttusbdecfe_dvbt_ops", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/ttusb-dec/ttusbdecfe.c", i32 236, i32 38}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/ttusb-dec/ttusbdecfe.c", i32 52, i32 3}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ttusbdecfe_dvbt_read_status._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @ttusbdecfe_dvbt_read_status._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/ttusb-dec/ttusbdecfe.c", i32 68, i32 4}
!21 = !{ptr @ttusbdecfe_dvbt_read_status._entry.3, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @ttusbdecfe_dvbt_read_status._entry_ptr.5, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @ttusbdecfe_dvbs_ops, !24, !"ttusbdecfe_dvbs_ops", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/ttusb-dec/ttusbdecfe.c", i32 259, i32 38}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"auto-init"}
