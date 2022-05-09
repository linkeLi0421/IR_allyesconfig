; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/tda10023.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/tda10023.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+tda10023_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_tda10023_attach\09\09\09\09"
module asm "\09.long\09__crc_tda10023_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tda10023_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tda10023_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tda10023_attach:\09\09\09\09\09"
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
%struct.qam_params = type { i8, i8, i8, i8, i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.tda10023_state = type { ptr, ptr, %struct.dvb_frontend, i8, i8, i32, i8, i8, i8, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.tda10023_config = type { i8, i8, i32, i8, i8, i8, i8, i16 }

@tda10023_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Philips TDA10023 DVB-C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 47000000, i32 862000000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 65024 }, [8 x i8] c"\01\12\00\00\00\00\00\00", ptr null, ptr @tda10023_release, ptr null, ptr @tda10023_init, ptr @tda10023_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tda10023_set_parameters, ptr null, ptr @tda10023_get_frontend, ptr @tda10023_read_status, ptr @tda10023_read_ber, ptr @tda10023_read_signal_strength, ptr @tda10023_read_snr, ptr @tda10023_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tda10023_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_description290 = internal constant [63 x i8] c"tda10023.description=Philips TDA10023 DVB-C demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [42 x i8] c"tda10023.author=Georg Acher, Hartmut Birr\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [51 x i8] c"tda10023.file=drivers/media/dvb-frontends/tda10023\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [21 x i8] c"tda10023.license=GPL\00", section ".modinfo", align 1
@__kstrtab_tda10023_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tda10023_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tda10023_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tda10023_attach to i32), ptr @__kstrtab_tda10023_attach, ptr @__kstrtabns_tda10023_attach }, section "___ksymtab+tda10023_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tda10023_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\013DVB: TDA10023(%d): %s, writereg error (reg == 0x%02x, val == 0x%02x, ret == %i)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tda10023_writereg\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/dvb-frontends/tda10023.c\00", [57 x i8] zeroinitializer }, align 32
@tda10023_writereg._entry_ptr = internal global ptr @tda10023_writereg._entry, section ".printk_index", align 4
@tda10023_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013DVB: TDA10023(%d): %s: readreg error (reg == 0x%02x, ret == %i)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tda10023_readreg\00", [47 x i8] zeroinitializer }, align 32
@tda10023_readreg._entry_ptr = internal global ptr @tda10023_readreg._entry, section ".printk_index", align 4
@tda10023_set_parameters.qam_params = internal constant { [6 x %struct.qam_params], [60 x i8] } { [6 x %struct.qam_params] [%struct.qam_params { i8 20, i8 120, i8 -116, i8 -106, i8 120, i8 76 }, %struct.qam_params { i8 0, i8 -121, i8 -94, i8 -111, i8 -116, i8 87 }, %struct.qam_params { i8 4, i8 100, i8 116, i8 -106, i8 -116, i8 87 }, %struct.qam_params { i8 8, i8 70, i8 67, i8 106, i8 106, i8 68 }, %struct.qam_params { i8 12, i8 54, i8 52, i8 126, i8 120, i8 76 }, %struct.qam_params { i8 16, i8 38, i8 35, i8 108, i8 92, i8 60 }], [60 x i8] zeroinitializer }, align 32
@tda10023_get_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.5, ptr @.str.2, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tda10023_get_frontend\00", [42 x i8] zeroinitializer }, align 32
@tda10023_get_frontend._entry_ptr = internal global ptr @tda10023_get_frontend._entry, section ".printk_index", align 4
@lock_tuner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tda10023: lock tuner fails\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lock_tuner\00", [21 x i8] zeroinitializer }, align 32
@lock_tuner._entry_ptr = internal global ptr @lock_tuner._entry, section ".printk_index", align 4
@unlock_tuner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tda10023: unlock tuner fails\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unlock_tuner\00", [19 x i8] zeroinitializer }, align 32
@unlock_tuner._entry_ptr = internal global ptr @unlock_tuner._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 18]
@___asan_gen_.12 = private unnamed_addr constant [13 x i8] c"tda10023_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 562, i32 38 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 78, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 63, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [11 x i8] c"qam_params\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 298, i32 33 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 459, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 124, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [42 x i8] c"../drivers/media/dvb-frontends/tda10023.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 138, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__ksymtab_tda10023_attach, ptr @lock_tuner._entry, ptr @lock_tuner._entry_ptr, ptr @tda10023_get_frontend._entry, ptr @tda10023_get_frontend._entry_ptr, ptr @tda10023_readreg._entry, ptr @tda10023_readreg._entry_ptr, ptr @tda10023_writereg._entry, ptr @tda10023_writereg._entry_ptr, ptr @unlock_tuner._entry, ptr @unlock_tuner._entry_ptr, ptr @tda10023_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @tda10023_set_parameters.qam_params, ptr @.str.5, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10023_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10023_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10023_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10023_set_parameters.qam_params to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10023_get_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_tuner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unlock_tuner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tda10023_attach(ptr noundef %config, ptr noundef %i2c, i8 noundef zeroext %pwm) #0 align 64 {
entry:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i84 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1064) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end:                                           ; preds = %entry
  %config1 = getelementptr inbounds %struct.tda10023_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %config, ptr %config1, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %call7.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %3 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %buf.i, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 51, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 196607, ptr %6, align 4
  %8 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %config, align 4
  %conv.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf.i, ptr %buf1.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end.tda10023_writereg.exit_crit_edge, label %if.then.i

if.end.tda10023_writereg.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10023_writereg.exit

if.then.i:                                        ; preds = %if.end
  %dvb.i = getelementptr inbounds %struct.tda10023_state, ptr %call7.i.i, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dvb.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then.i.cond.end.i_crit_edge, label %cond.true.i

if.then.i.cond.end.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %16, %cond.true.i ], [ -1, %if.then.i.cond.end.i_crit_edge ]
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %cond.i, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 51, i32 noundef %call.i) #10
  br label %tda10023_writereg.exit

tda10023_writereg.exit:                           ; preds = %cond.end.i, %if.end.tda10023_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %17 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 26, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %18 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i84) #6
  %19 = getelementptr inbounds i8, ptr %msg.i84, i32 4
  %20 = call ptr @memset(ptr %19, i32 255, i32 16)
  %21 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %config1, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 4
  %conv.i86 = zext i8 %24 to i16
  %25 = ptrtoint ptr %msg.i84 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i86, ptr %msg.i84, align 4
  %flags.i87 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84, i32 0, i32 1
  %26 = ptrtoint ptr %flags.i87 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %flags.i87, align 2
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %19, align 4
  %buf.i89 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84, i32 0, i32 3
  %28 = ptrtoint ptr %buf.i89 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %b0.i, ptr %buf.i89, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84, i32 1
  %29 = load i8, ptr %22, align 4
  %conv5.i = zext i8 %29 to i16
  %30 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84, i32 1, i32 1
  %31 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84, i32 1, i32 2
  %32 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84, i32 1, i32 3
  %33 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %b1.i, ptr %buf8.i, align 4
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call7.i.i, align 8
  %call.i90 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i84, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i90)
  %cmp.not.i91 = icmp eq i32 %call.i90, 2
  br i1 %cmp.not.i91, label %tda10023_writereg.exit.tda10023_readreg.exit_crit_edge, label %if.then.i94

tda10023_writereg.exit.tda10023_readreg.exit_crit_edge: ; preds = %tda10023_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10023_readreg.exit

if.then.i94:                                      ; preds = %tda10023_writereg.exit
  %dvb.i92 = getelementptr inbounds %struct.tda10023_state, ptr %call7.i.i, i32 0, i32 2, i32 2
  %36 = ptrtoint ptr %dvb.i92 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dvb.i92, align 4
  %tobool.not.i93 = icmp eq ptr %37, null
  br i1 %tobool.not.i93, label %if.then.i94.cond.end.i97_crit_edge, label %cond.true.i95

if.then.i94.cond.end.i97_crit_edge:               ; preds = %if.then.i94
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i97

cond.true.i95:                                    ; preds = %if.then.i94
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  br label %cond.end.i97

cond.end.i97:                                     ; preds = %cond.true.i95, %if.then.i94.cond.end.i97_crit_edge
  %cond.i96 = phi i32 [ %39, %cond.true.i95 ], [ -1, %if.then.i94.cond.end.i97_crit_edge ]
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %cond.i96, ptr noundef nonnull @.str.4, i32 noundef 26, i32 noundef %call.i90) #10
  br label %tda10023_readreg.exit

tda10023_readreg.exit:                            ; preds = %cond.end.i97, %tda10023_writereg.exit.tda10023_readreg.exit_crit_edge
  %40 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i84) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %42 = and i8 %41, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %42)
  %cmp5.not = icmp eq i8 %42, 112
  br i1 %cmp5.not, label %if.end8, label %tda10023_readreg.exit.error_crit_edge

tda10023_readreg.exit.error_crit_edge:            ; preds = %tda10023_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end8:                                          ; preds = %tda10023_readreg.exit
  %frontend = getelementptr inbounds %struct.tda10023_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.tda10023_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %43 = call ptr @memcpy(ptr %ops, ptr @tda10023_ops, i32 544)
  %pwm9 = getelementptr inbounds %struct.tda10023_state, ptr %call7.i.i, i32 0, i32 3
  %44 = ptrtoint ptr %pwm9 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %pwm, ptr %pwm9, align 8
  %reg0 = getelementptr inbounds %struct.tda10023_state, ptr %call7.i.i, i32 0, i32 4
  %45 = ptrtoint ptr %reg0 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 35, ptr %reg0, align 1
  %46 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %config1, align 4
  %xtal = getelementptr inbounds %struct.tda10023_config, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %xtal to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %xtal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not = icmp eq i32 %49, 0
  %xtal21 = getelementptr inbounds %struct.tda10023_state, ptr %call7.i.i, i32 0, i32 5
  br i1 %tobool.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %xtal21 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %xtal21, align 4
  %pll_m = getelementptr inbounds %struct.tda10023_config, ptr %47, i32 0, i32 3
  %51 = ptrtoint ptr %pll_m to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %pll_m, align 4
  %pll_m16 = getelementptr inbounds %struct.tda10023_state, ptr %call7.i.i, i32 0, i32 6
  %53 = ptrtoint ptr %pll_m16 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %pll_m16, align 8
  %pll_p = getelementptr inbounds %struct.tda10023_config, ptr %47, i32 0, i32 4
  %54 = ptrtoint ptr %pll_p to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %pll_p, align 1
  %pll_p18 = getelementptr inbounds %struct.tda10023_state, ptr %call7.i.i, i32 0, i32 7
  %56 = ptrtoint ptr %pll_p18 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %pll_p18, align 1
  %pll_n = getelementptr inbounds %struct.tda10023_config, ptr %47, i32 0, i32 5
  %57 = ptrtoint ptr %pll_n to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %pll_n, align 2
  br label %if.end25

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %xtal21 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 28920000, ptr %xtal21, align 4
  %pll_m22 = getelementptr inbounds %struct.tda10023_state, ptr %call7.i.i, i32 0, i32 6
  %60 = ptrtoint ptr %pll_m22 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 8, ptr %pll_m22, align 8
  %pll_p23 = getelementptr inbounds %struct.tda10023_state, ptr %call7.i.i, i32 0, i32 7
  %61 = ptrtoint ptr %pll_p23 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 4, ptr %pll_p23, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then11
  %.sink = phi i8 [ 1, %if.else ], [ %58, %if.then11 ]
  %62 = getelementptr inbounds %struct.tda10023_state, ptr %call7.i.i, i32 0, i32 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %.sink, ptr %62, align 2
  %xtal26 = getelementptr inbounds %struct.tda10023_state, ptr %call7.i.i, i32 0, i32 5
  %64 = ptrtoint ptr %xtal26 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %xtal26, align 4
  %pll_m27 = getelementptr inbounds %struct.tda10023_state, ptr %call7.i.i, i32 0, i32 6
  %66 = ptrtoint ptr %pll_m27 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %pll_m27, align 8
  %conv28 = zext i8 %67 to i32
  %mul = mul i32 %65, %conv28
  %conv30 = zext i8 %.sink to i32
  %pll_p31 = getelementptr inbounds %struct.tda10023_state, ptr %call7.i.i, i32 0, i32 7
  %68 = ptrtoint ptr %pll_p31 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %pll_p31, align 1
  %conv32 = zext i8 %69 to i32
  %mul33 = mul nuw nsw i32 %conv32, %conv30
  %div = udiv i32 %mul, %mul33
  %sysclk = getelementptr inbounds %struct.tda10023_state, ptr %call7.i.i, i32 0, i32 9
  %70 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %div, ptr %sysclk, align 4
  %div3681 = lshr i32 %div, 7
  %symbol_rate_min = getelementptr inbounds %struct.tda10023_state, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 0, i32 5
  %71 = ptrtoint ptr %symbol_rate_min to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %div3681, ptr %symbol_rate_min, align 4
  %div4183 = lshr i32 %div, 3
  %symbol_rate_max = getelementptr inbounds %struct.tda10023_state, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 0, i32 6
  %72 = ptrtoint ptr %symbol_rate_max to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %div4183, ptr %symbol_rate_max, align 8
  %demodulator_priv = getelementptr inbounds %struct.tda10023_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %73 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  br label %cleanup

error:                                            ; preds = %tda10023_readreg.exit.error_crit_edge, %entry.error_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end25
  %retval.0 = phi ptr [ null, %error ], [ %frontend, %if.end25 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda10023_release(ptr nocapture noundef readonly %fe) #0 align 64 {
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
define internal i32 @tda10023_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %tda10023_inittab = alloca [126 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 126, ptr nonnull %tda10023_inittab) #6
  %2 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 89
  %3 = call ptr @memset(ptr %2, i32 255, i32 37)
  %4 = ptrtoint ptr %tda10023_inittab to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 42, ptr %tda10023_inittab, align 1
  %arrayinit.element = getelementptr inbounds i8, ptr %tda10023_inittab, i32 1
  %5 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %arrayinit.element, align 1
  %arrayinit.element1 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 2
  %6 = ptrtoint ptr %arrayinit.element1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %arrayinit.element1, align 1
  %arrayinit.element2 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 3
  %7 = ptrtoint ptr %arrayinit.element2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %arrayinit.element2, align 1
  %arrayinit.element3 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 4
  %8 = ptrtoint ptr %arrayinit.element3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 100, ptr %arrayinit.element3, align 1
  %arrayinit.element4 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 5
  %9 = ptrtoint ptr %arrayinit.element4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayinit.element4, align 1
  %arrayinit.element5 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 6
  %10 = ptrtoint ptr %arrayinit.element5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 42, ptr %arrayinit.element5, align 1
  %arrayinit.element6 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 7
  %11 = ptrtoint ptr %arrayinit.element6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %arrayinit.element6, align 1
  %arrayinit.element7 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 8
  %12 = ptrtoint ptr %arrayinit.element7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 3, ptr %arrayinit.element7, align 1
  %arrayinit.element8 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 9
  %13 = ptrtoint ptr %arrayinit.element8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %arrayinit.element8, align 1
  %arrayinit.element9 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 10
  %14 = ptrtoint ptr %arrayinit.element9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 100, ptr %arrayinit.element9, align 1
  %arrayinit.element10 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 11
  %15 = ptrtoint ptr %arrayinit.element10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayinit.element10, align 1
  %arrayinit.element11 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 12
  %16 = ptrtoint ptr %arrayinit.element11 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 40, ptr %arrayinit.element11, align 1
  %arrayinit.element12 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 13
  %17 = ptrtoint ptr %arrayinit.element12 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %arrayinit.element12, align 1
  %arrayinit.element13 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 14
  %pll_m = getelementptr inbounds %struct.tda10023_state, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %pll_m to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pll_m, align 4
  %sub = add i8 %19, -1
  %20 = ptrtoint ptr %arrayinit.element13 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %sub, ptr %arrayinit.element13, align 1
  %arrayinit.element15 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 15
  %21 = ptrtoint ptr %arrayinit.element15 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 41, ptr %arrayinit.element15, align 1
  %arrayinit.element16 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 16
  %22 = ptrtoint ptr %arrayinit.element16 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %arrayinit.element16, align 1
  %arrayinit.element17 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 17
  %pll_p = getelementptr inbounds %struct.tda10023_state, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %pll_p to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pll_p, align 1
  %sub19 = shl i8 %24, 6
  %shl = add i8 %sub19, -64
  %pll_n = getelementptr inbounds %struct.tda10023_state, ptr %1, i32 0, i32 8
  %25 = ptrtoint ptr %pll_n to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %pll_n, align 2
  %sub21 = add i8 %26, -1
  %or = or i8 %shl, %sub21
  %27 = ptrtoint ptr %arrayinit.element17 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %or, ptr %arrayinit.element17, align 1
  %arrayinit.element23 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 18
  %28 = ptrtoint ptr %arrayinit.element23 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayinit.element23, align 1
  %arrayinit.element24 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 19
  %29 = ptrtoint ptr %arrayinit.element24 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %arrayinit.element24, align 1
  %arrayinit.element25 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 20
  %30 = ptrtoint ptr %arrayinit.element25 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 35, ptr %arrayinit.element25, align 1
  %arrayinit.element26 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 21
  %31 = ptrtoint ptr %arrayinit.element26 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 42, ptr %arrayinit.element26, align 1
  %arrayinit.element27 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 22
  %32 = ptrtoint ptr %arrayinit.element27 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %arrayinit.element27, align 1
  %arrayinit.element28 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 23
  %33 = ptrtoint ptr %arrayinit.element28 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 8, ptr %arrayinit.element28, align 1
  %arrayinit.element29 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 24
  %34 = ptrtoint ptr %arrayinit.element29 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %arrayinit.element29, align 1
  %arrayinit.element30 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 25
  %35 = ptrtoint ptr %arrayinit.element30 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 100, ptr %arrayinit.element30, align 1
  %arrayinit.element31 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 26
  %36 = ptrtoint ptr %arrayinit.element31 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %arrayinit.element31, align 1
  %arrayinit.element32 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 27
  %37 = ptrtoint ptr %arrayinit.element32 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 31, ptr %arrayinit.element32, align 1
  %arrayinit.element33 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 28
  %38 = ptrtoint ptr %arrayinit.element33 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -1, ptr %arrayinit.element33, align 1
  %arrayinit.element34 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 29
  %39 = ptrtoint ptr %arrayinit.element34 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayinit.element34, align 1
  %arrayinit.element35 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 30
  %40 = ptrtoint ptr %arrayinit.element35 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %arrayinit.element35, align 1
  %arrayinit.element36 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 31
  %41 = ptrtoint ptr %arrayinit.element36 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 100, ptr %arrayinit.element36, align 1
  %arrayinit.element37 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 32
  %42 = ptrtoint ptr %arrayinit.element37 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %arrayinit.element37, align 1
  %arrayinit.element38 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 33
  %43 = ptrtoint ptr %arrayinit.element38 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -26, ptr %arrayinit.element38, align 1
  %arrayinit.element39 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 34
  %44 = ptrtoint ptr %arrayinit.element39 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 12, ptr %arrayinit.element39, align 1
  %arrayinit.element40 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 35
  %45 = ptrtoint ptr %arrayinit.element40 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 4, ptr %arrayinit.element40, align 1
  %arrayinit.element41 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 36
  %46 = ptrtoint ptr %arrayinit.element41 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 16, ptr %arrayinit.element41, align 1
  %arrayinit.element42 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 37
  %47 = ptrtoint ptr %arrayinit.element42 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -64, ptr %arrayinit.element42, align 1
  %arrayinit.element43 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 38
  %48 = ptrtoint ptr %arrayinit.element43 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -128, ptr %arrayinit.element43, align 1
  %arrayinit.element44 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 39
  %49 = ptrtoint ptr %arrayinit.element44 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 14, ptr %arrayinit.element44, align 1
  %arrayinit.element45 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 40
  %50 = ptrtoint ptr %arrayinit.element45 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -1, ptr %arrayinit.element45, align 1
  %arrayinit.element46 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 41
  %51 = ptrtoint ptr %arrayinit.element46 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -126, ptr %arrayinit.element46, align 1
  %arrayinit.element47 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 42
  %52 = ptrtoint ptr %arrayinit.element47 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 3, ptr %arrayinit.element47, align 1
  %arrayinit.element48 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 43
  %53 = ptrtoint ptr %arrayinit.element48 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 8, ptr %arrayinit.element48, align 1
  %arrayinit.element49 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 44
  %54 = ptrtoint ptr %arrayinit.element49 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 8, ptr %arrayinit.element49, align 1
  %arrayinit.element50 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 45
  %55 = ptrtoint ptr %arrayinit.element50 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 46, ptr %arrayinit.element50, align 1
  %arrayinit.element51 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 46
  %56 = ptrtoint ptr %arrayinit.element51 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -65, ptr %arrayinit.element51, align 1
  %arrayinit.element52 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 47
  %57 = ptrtoint ptr %arrayinit.element52 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 48, ptr %arrayinit.element52, align 1
  %arrayinit.element53 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 48
  %58 = ptrtoint ptr %arrayinit.element53 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %arrayinit.element53, align 1
  %arrayinit.element54 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 49
  %59 = ptrtoint ptr %arrayinit.element54 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 -1, ptr %arrayinit.element54, align 1
  %arrayinit.element55 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 50
  %60 = ptrtoint ptr %arrayinit.element55 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 48, ptr %arrayinit.element55, align 1
  %arrayinit.element56 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 51
  %61 = ptrtoint ptr %arrayinit.element56 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 30, ptr %arrayinit.element56, align 1
  %arrayinit.element57 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 52
  %62 = ptrtoint ptr %arrayinit.element57 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -124, ptr %arrayinit.element57, align 1
  %arrayinit.element58 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 53
  %63 = ptrtoint ptr %arrayinit.element58 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -124, ptr %arrayinit.element58, align 1
  %arrayinit.element59 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 54
  %64 = ptrtoint ptr %arrayinit.element59 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 27, ptr %arrayinit.element59, align 1
  %arrayinit.element60 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 55
  %65 = ptrtoint ptr %arrayinit.element60 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 -1, ptr %arrayinit.element60, align 1
  %arrayinit.element61 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 56
  %66 = ptrtoint ptr %arrayinit.element61 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 -56, ptr %arrayinit.element61, align 1
  %arrayinit.element62 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 57
  %67 = ptrtoint ptr %arrayinit.element62 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 59, ptr %arrayinit.element62, align 1
  %arrayinit.element63 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 58
  %68 = ptrtoint ptr %arrayinit.element63 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -1, ptr %arrayinit.element63, align 1
  %arrayinit.element64 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 59
  %69 = ptrtoint ptr %arrayinit.element64 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -1, ptr %arrayinit.element64, align 1
  %arrayinit.element65 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 60
  %70 = ptrtoint ptr %arrayinit.element65 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 60, ptr %arrayinit.element65, align 1
  %arrayinit.element66 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 61
  %71 = ptrtoint ptr %arrayinit.element66 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -1, ptr %arrayinit.element66, align 1
  %arrayinit.element67 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 62
  %72 = ptrtoint ptr %arrayinit.element67 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %arrayinit.element67, align 1
  %arrayinit.element68 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 63
  %73 = ptrtoint ptr %arrayinit.element68 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 52, ptr %arrayinit.element68, align 1
  %arrayinit.element69 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 64
  %74 = ptrtoint ptr %arrayinit.element69 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -1, ptr %arrayinit.element69, align 1
  %arrayinit.element70 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 65
  %75 = ptrtoint ptr %arrayinit.element70 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %arrayinit.element70, align 1
  %arrayinit.element71 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 66
  %76 = ptrtoint ptr %arrayinit.element71 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 53, ptr %arrayinit.element71, align 1
  %arrayinit.element72 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 67
  %77 = ptrtoint ptr %arrayinit.element72 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 -1, ptr %arrayinit.element72, align 1
  %arrayinit.element73 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 68
  %78 = ptrtoint ptr %arrayinit.element73 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -1, ptr %arrayinit.element73, align 1
  %arrayinit.element74 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 69
  %79 = ptrtoint ptr %arrayinit.element74 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 54, ptr %arrayinit.element74, align 1
  %arrayinit.element75 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 70
  %80 = ptrtoint ptr %arrayinit.element75 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -1, ptr %arrayinit.element75, align 1
  %arrayinit.element76 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 71
  %81 = ptrtoint ptr %arrayinit.element76 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %arrayinit.element76, align 1
  %arrayinit.element77 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 72
  %82 = ptrtoint ptr %arrayinit.element77 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 6, ptr %arrayinit.element77, align 1
  %arrayinit.element78 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 73
  %83 = ptrtoint ptr %arrayinit.element78 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 -1, ptr %arrayinit.element78, align 1
  %arrayinit.element79 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 74
  %84 = ptrtoint ptr %arrayinit.element79 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 127, ptr %arrayinit.element79, align 1
  %arrayinit.element80 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 75
  %85 = ptrtoint ptr %arrayinit.element80 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 28, ptr %arrayinit.element80, align 1
  %arrayinit.element81 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 76
  %86 = ptrtoint ptr %arrayinit.element81 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 48, ptr %arrayinit.element81, align 1
  %arrayinit.element82 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 77
  %87 = ptrtoint ptr %arrayinit.element82 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 48, ptr %arrayinit.element82, align 1
  %arrayinit.element83 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 78
  %88 = ptrtoint ptr %arrayinit.element83 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 55, ptr %arrayinit.element83, align 1
  %arrayinit.element84 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 79
  %89 = ptrtoint ptr %arrayinit.element84 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -1, ptr %arrayinit.element84, align 1
  %arrayinit.element85 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 80
  %90 = ptrtoint ptr %arrayinit.element85 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 -10, ptr %arrayinit.element85, align 1
  %arrayinit.element86 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 81
  %91 = ptrtoint ptr %arrayinit.element86 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 56, ptr %arrayinit.element86, align 1
  %arrayinit.element87 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 82
  %92 = ptrtoint ptr %arrayinit.element87 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -1, ptr %arrayinit.element87, align 1
  %arrayinit.element88 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 83
  %93 = ptrtoint ptr %arrayinit.element88 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 -1, ptr %arrayinit.element88, align 1
  %arrayinit.element89 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 84
  %94 = ptrtoint ptr %arrayinit.element89 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 2, ptr %arrayinit.element89, align 1
  %arrayinit.element90 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 85
  %95 = ptrtoint ptr %arrayinit.element90 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -1, ptr %arrayinit.element90, align 1
  %arrayinit.element91 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 86
  %96 = ptrtoint ptr %arrayinit.element91 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 -109, ptr %arrayinit.element91, align 1
  %arrayinit.element92 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 87
  %97 = ptrtoint ptr %arrayinit.element92 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 45, ptr %arrayinit.element92, align 1
  %arrayinit.element93 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 88
  %98 = ptrtoint ptr %arrayinit.element93 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 -1, ptr %arrayinit.element93, align 1
  %arrayinit.element94 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 89
  %99 = ptrtoint ptr %arrayinit.element94 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 -10, ptr %arrayinit.element94, align 1
  %arrayinit.element95 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 90
  %100 = ptrtoint ptr %arrayinit.element95 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 4, ptr %arrayinit.element95, align 1
  %arrayinit.element96 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 91
  %101 = ptrtoint ptr %arrayinit.element96 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 16, ptr %arrayinit.element96, align 1
  %arrayinit.element97 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 92
  %102 = ptrtoint ptr %arrayinit.element97 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %arrayinit.element97, align 1
  %arrayinit.element98 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 93
  %103 = ptrtoint ptr %arrayinit.element98 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 18, ptr %arrayinit.element98, align 1
  %arrayinit.element99 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 94
  %104 = ptrtoint ptr %arrayinit.element99 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 -1, ptr %arrayinit.element99, align 1
  %arrayinit.element100 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 95
  %105 = ptrtoint ptr %arrayinit.element100 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 -95, ptr %arrayinit.element100, align 1
  %arrayinit.element101 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 96
  %106 = ptrtoint ptr %arrayinit.element101 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 43, ptr %arrayinit.element101, align 1
  %arrayinit.element102 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 97
  %107 = ptrtoint ptr %arrayinit.element102 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 1, ptr %arrayinit.element102, align 1
  %arrayinit.element103 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 98
  %108 = ptrtoint ptr %arrayinit.element103 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 -95, ptr %arrayinit.element103, align 1
  %arrayinit.element104 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 99
  %109 = ptrtoint ptr %arrayinit.element104 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 32, ptr %arrayinit.element104, align 1
  %arrayinit.element105 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 100
  %110 = ptrtoint ptr %arrayinit.element105 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 -1, ptr %arrayinit.element105, align 1
  %arrayinit.element106 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 101
  %111 = ptrtoint ptr %arrayinit.element106 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 4, ptr %arrayinit.element106, align 1
  %arrayinit.element107 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 102
  %112 = ptrtoint ptr %arrayinit.element107 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 44, ptr %arrayinit.element107, align 1
  %arrayinit.element108 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 103
  %113 = ptrtoint ptr %arrayinit.element108 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 -1, ptr %arrayinit.element108, align 1
  %arrayinit.element109 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 104
  %114 = ptrtoint ptr %arrayinit.element109 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 13, ptr %arrayinit.element109, align 1
  %arrayinit.element110 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 105
  %115 = ptrtoint ptr %arrayinit.element110 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 -60, ptr %arrayinit.element110, align 1
  %arrayinit.element111 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 106
  %116 = ptrtoint ptr %arrayinit.element111 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 -1, ptr %arrayinit.element111, align 1
  %arrayinit.element112 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 107
  %117 = ptrtoint ptr %arrayinit.element112 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %arrayinit.element112, align 1
  %arrayinit.element113 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 108
  %118 = ptrtoint ptr %arrayinit.element113 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 -61, ptr %arrayinit.element113, align 1
  %arrayinit.element114 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 109
  %119 = ptrtoint ptr %arrayinit.element114 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 48, ptr %arrayinit.element114, align 1
  %arrayinit.element115 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 110
  %120 = ptrtoint ptr %arrayinit.element115 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %arrayinit.element115, align 1
  %arrayinit.element116 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 111
  %121 = ptrtoint ptr %arrayinit.element116 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 -75, ptr %arrayinit.element116, align 1
  %arrayinit.element117 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 112
  %122 = ptrtoint ptr %arrayinit.element117 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 -1, ptr %arrayinit.element117, align 1
  %arrayinit.element118 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 113
  %123 = ptrtoint ptr %arrayinit.element118 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 25, ptr %arrayinit.element118, align 1
  %arrayinit.element119 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 114
  %124 = ptrtoint ptr %arrayinit.element119 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %arrayinit.element119, align 1
  %arrayinit.element120 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 115
  %125 = ptrtoint ptr %arrayinit.element120 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 3, ptr %arrayinit.element120, align 1
  %arrayinit.element121 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 116
  %126 = ptrtoint ptr %arrayinit.element121 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 1, ptr %arrayinit.element121, align 1
  %arrayinit.element122 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 117
  %127 = ptrtoint ptr %arrayinit.element122 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %arrayinit.element122, align 1
  %arrayinit.element123 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 118
  %128 = ptrtoint ptr %arrayinit.element123 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 3, ptr %arrayinit.element123, align 1
  %arrayinit.element124 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 119
  %129 = ptrtoint ptr %arrayinit.element124 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 3, ptr %arrayinit.element124, align 1
  %arrayinit.element125 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 120
  %130 = ptrtoint ptr %arrayinit.element125 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 -1, ptr %arrayinit.element125, align 1
  %arrayinit.element126 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 121
  %131 = ptrtoint ptr %arrayinit.element126 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 100, ptr %arrayinit.element126, align 1
  %arrayinit.element127 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 122
  %132 = ptrtoint ptr %arrayinit.element127 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 0, ptr %arrayinit.element127, align 1
  %arrayinit.element128 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 123
  %133 = ptrtoint ptr %arrayinit.element128 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 -1, ptr %arrayinit.element128, align 1
  %arrayinit.element129 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 124
  %134 = ptrtoint ptr %arrayinit.element129 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 -1, ptr %arrayinit.element129, align 1
  %arrayinit.element130 = getelementptr inbounds i8, ptr %tda10023_inittab, i32 125
  %135 = ptrtoint ptr %arrayinit.element130 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 -1, ptr %arrayinit.element130, align 1
  %config = getelementptr inbounds %struct.tda10023_state, ptr %1, i32 0, i32 1
  %136 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %config, align 4
  %deltaf = getelementptr inbounds %struct.tda10023_config, ptr %137, i32 0, i32 7
  %138 = ptrtoint ptr %deltaf to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %deltaf, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %139)
  %tobool.not = icmp eq i16 %139, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv134 = trunc i16 %139 to i8
  %140 = ptrtoint ptr %arrayinit.element85 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv134, ptr %arrayinit.element85, align 1
  %141 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %config, align 4
  %deltaf136 = getelementptr inbounds %struct.tda10023_config, ptr %142, i32 0, i32 7
  %143 = ptrtoint ptr %deltaf136 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %deltaf136, align 4
  %145 = lshr i16 %144, 8
  %conv138 = trunc i16 %145 to i8
  %146 = ptrtoint ptr %arrayinit.element88 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %conv138, ptr %arrayinit.element88, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %147 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %config, align 4
  %output_mode = getelementptr inbounds %struct.tda10023_config, ptr %148, i32 0, i32 6
  %149 = ptrtoint ptr %output_mode to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %output_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool141.not = icmp eq i8 %150, 0
  br i1 %tobool141.not, label %if.end.while.cond.i.preheader_crit_edge, label %if.then142

if.end.while.cond.i.preheader_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.preheader

if.then142:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %151 = ptrtoint ptr %arrayinit.element100 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %150, ptr %arrayinit.element100, align 1
  br label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %if.then142, %if.end.while.cond.i.preheader_crit_edge
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %while.cond.i.preheader
  %tab.addr.0.i = phi ptr [ %tda10023_inittab, %while.cond.i.preheader ], [ %incdec.ptr2.i, %while.cond.i.backedge ]
  %incdec.ptr.i = getelementptr i8, ptr %tab.addr.0.i, i32 1
  %152 = ptrtoint ptr %tab.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %tab.addr.0.i, align 1
  %154 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %incdec.ptr.i, align 1
  %incdec.ptr2.i = getelementptr i8, ptr %tab.addr.0.i, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %153)
  %cmp.i = icmp eq i8 %153, -1
  br i1 %cmp.i, label %if.then.i, label %if.else9.i

if.then.i:                                        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %155)
  %cmp5.i = icmp eq i8 %155, -1
  br i1 %cmp5.i, label %tda10023_writetab.exit, label %if.else.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i = zext i8 %155 to i32
  tail call void @msleep(i32 noundef %conv4.i) #6
  br label %while.cond.i.backedge

if.else9.i:                                       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr1.i = getelementptr i8, ptr %tab.addr.0.i, i32 2
  %156 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %incdec.ptr1.i, align 1
  tail call fastcc void @tda10023_writebit(ptr noundef %1, i8 noundef zeroext %153, i8 noundef zeroext %155, i8 noundef zeroext %157) #6
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %if.else9.i, %if.else.i
  br label %while.cond.i

tda10023_writetab.exit:                           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 126, ptr nonnull %tda10023_inittab) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10023_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i3 = alloca [2 x i8], align 1
  %msg.i4 = alloca %struct.i2c_msg, align 4
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
  store i8 27, ptr %buf.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196607, ptr %5, align 4
  %config.i = getelementptr inbounds %struct.tda10023_state, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 4
  %conv.i = zext i8 %10 to i16
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf.i, ptr %buf1.i, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %entry.tda10023_writereg.exit_crit_edge, label %if.then.i

entry.tda10023_writereg.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10023_writereg.exit

if.then.i:                                        ; preds = %entry
  %dvb.i = getelementptr inbounds %struct.tda10023_state, ptr %1, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dvb.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.then.i.cond.end.i_crit_edge, label %cond.true.i

if.then.i.cond.end.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %19, %cond.true.i ], [ -1, %if.then.i.cond.end.i_crit_edge ]
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %cond.i, ptr noundef nonnull @.str.1, i32 noundef 27, i32 noundef 2, i32 noundef %call.i) #10
  br label %tda10023_writereg.exit

tda10023_writereg.exit:                           ; preds = %cond.end.i, %entry.tda10023_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i3) #6
  %20 = getelementptr inbounds [2 x i8], ptr %buf.i3, i32 0, i32 1
  %21 = ptrtoint ptr %buf.i3 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %buf.i3, align 1
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -128, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4) #6
  %23 = getelementptr inbounds i8, ptr %msg.i4, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 196607, ptr %23, align 4
  %25 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %config.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 4
  %conv.i6 = zext i8 %28 to i16
  %29 = ptrtoint ptr %msg.i4 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i6, ptr %msg.i4, align 4
  %flags.i7 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4, i32 0, i32 1
  %30 = ptrtoint ptr %flags.i7 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %flags.i7, align 2
  %buf1.i9 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4, i32 0, i32 3
  %31 = ptrtoint ptr %buf1.i9 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %buf.i3, ptr %buf1.i9, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %call.i10 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %msg.i4, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i10)
  %cmp.not.i11 = icmp eq i32 %call.i10, 1
  br i1 %cmp.not.i11, label %tda10023_writereg.exit.tda10023_writereg.exit20_crit_edge, label %if.then.i14

tda10023_writereg.exit.tda10023_writereg.exit20_crit_edge: ; preds = %tda10023_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10023_writereg.exit20

if.then.i14:                                      ; preds = %tda10023_writereg.exit
  %dvb.i12 = getelementptr inbounds %struct.tda10023_state, ptr %1, i32 0, i32 2, i32 2
  %34 = ptrtoint ptr %dvb.i12 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dvb.i12, align 4
  %tobool.not.i13 = icmp eq ptr %35, null
  br i1 %tobool.not.i13, label %if.then.i14.cond.end.i18_crit_edge, label %cond.true.i15

if.then.i14.cond.end.i18_crit_edge:               ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i18

cond.true.i15:                                    ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  br label %cond.end.i18

cond.end.i18:                                     ; preds = %cond.true.i15, %if.then.i14.cond.end.i18_crit_edge
  %cond.i16 = phi i32 [ %37, %cond.true.i15 ], [ -1, %if.then.i14.cond.end.i18_crit_edge ]
  %call8.i17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %cond.i16, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 128, i32 noundef %call.i10) #10
  br label %tda10023_writereg.exit20

tda10023_writereg.exit20:                         ; preds = %cond.end.i18, %tda10023_writereg.exit.tda10023_writereg.exit20_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10023_set_parameters(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i2.i = alloca [2 x i8], align 1
  %msg.i3.i = alloca %struct.i2c_msg, align 4
  %buf.i.i141 = alloca [2 x i8], align 1
  %msg.i.i142 = alloca %struct.i2c_msg, align 4
  %buf.i122 = alloca [2 x i8], align 1
  %msg.i123 = alloca %struct.i2c_msg, align 4
  %buf.i103 = alloca [2 x i8], align 1
  %msg.i104 = alloca %struct.i2c_msg, align 4
  %buf.i84 = alloca [2 x i8], align 1
  %msg.i85 = alloca %struct.i2c_msg, align 4
  %buf.i65 = alloca [2 x i8], align 1
  %msg.i66 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf.i62.i = alloca [2 x i8], align 1
  %msg.i63.i = alloca %struct.i2c_msg, align 4
  %buf.i43.i = alloca [2 x i8], align 1
  %msg.i44.i = alloca %struct.i2c_msg, align 4
  %buf.i24.i = alloca [2 x i8], align 1
  %msg.i25.i = alloca %struct.i2c_msg, align 4
  %buf.i5.i = alloca [2 x i8], align 1
  %msg.i6.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %0 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delivery_system, align 4
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %modulation, align 4
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %4 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %demodulator_priv, align 4
  %6 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 18, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %is_annex_c.0.off0 = phi i8 [ 3, %sw.bb1 ], [ 2, %entry.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %switch = icmp ult i32 %3, 6
  br i1 %switch, label %sw.epilog4, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog4:                                       ; preds = %sw.epilog
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %7 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_params, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %sw.epilog4.if.end14_crit_edge, label %if.then

sw.epilog4.if.end14_crit_edge:                    ; preds = %sw.epilog4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then:                                          ; preds = %sw.epilog4
  %call = tail call i32 %8(ptr noundef %fe) #6
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %9 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool9.not = icmp eq ptr %10, null
  br i1 %tobool9.not, label %if.then.if.end14_crit_edge, label %if.then10

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 %10(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.then.if.end14_crit_edge, %sw.epilog4.if.end14_crit_edge
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %11 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %symbol_rate, align 4
  %sysclk.i = getelementptr inbounds %struct.tda10023_state, ptr %5, i32 0, i32 9
  %13 = ptrtoint ptr %sysclk.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sysclk.i, align 4
  %mul.i = mul i32 %14, 10
  %div.i = udiv i32 %mul.i, 984
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %12)
  %cmp.i = icmp ugt i32 %div.i, %12
  br i1 %cmp.i, label %if.end14.if.end29.i_crit_edge, label %if.else.i

if.end14.if.end29.i_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

if.else.i:                                        ; preds = %if.end14
  %div1.i = udiv i32 %mul.i, 640
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i, i32 %12)
  %cmp2.i = icmp ugt i32 %div1.i, %12
  br i1 %cmp2.i, label %if.else.i.if.end29.i_crit_edge, label %if.else4.i

if.else.i.if.end29.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

if.else4.i:                                       ; preds = %if.else.i
  %div5.i = udiv i32 %mul.i, 492
  call void @__sanitizer_cov_trace_cmp4(i32 %div5.i, i32 %12)
  %cmp6.i = icmp ugt i32 %div5.i, %12
  br i1 %cmp6.i, label %if.else4.i.if.end29.i_crit_edge, label %if.else8.i

if.else4.i.if.end29.i_crit_edge:                  ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

if.else8.i:                                       ; preds = %if.else4.i
  %div9.i = udiv i32 %mul.i, 320
  call void @__sanitizer_cov_trace_cmp4(i32 %div9.i, i32 %12)
  %cmp10.i = icmp ugt i32 %div9.i, %12
  br i1 %cmp10.i, label %if.else8.i.if.end29.i_crit_edge, label %if.else12.i

if.else8.i.if.end29.i_crit_edge:                  ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

if.else12.i:                                      ; preds = %if.else8.i
  %div13.i = udiv i32 %mul.i, 246
  call void @__sanitizer_cov_trace_cmp4(i32 %div13.i, i32 %12)
  %cmp14.i = icmp ugt i32 %div13.i, %12
  br i1 %cmp14.i, label %if.else12.i.if.end29.i_crit_edge, label %if.else16.i

if.else12.i.if.end29.i_crit_edge:                 ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

if.else16.i:                                      ; preds = %if.else12.i
  %div17.i = udiv i32 %mul.i, 160
  call void @__sanitizer_cov_trace_cmp4(i32 %div17.i, i32 %12)
  %cmp18.i = icmp ugt i32 %div17.i, %12
  br i1 %cmp18.i, label %if.else16.i.if.end29.i_crit_edge, label %if.else20.i

if.else16.i.if.end29.i_crit_edge:                 ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

if.else20.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #8
  %div21.i = udiv i32 %mul.i, 123
  call void @__sanitizer_cov_trace_cmp4(i32 %div21.i, i32 %12)
  %cmp22.i = icmp ugt i32 %div21.i, %12
  %spec.select.i = select i1 %cmp22.i, i8 -128, i8 0
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else20.i, %if.else16.i.if.end29.i_crit_edge, %if.else12.i.if.end29.i_crit_edge, %if.else8.i.if.end29.i_crit_edge, %if.else4.i.if.end29.i_crit_edge, %if.else.i.if.end29.i_crit_edge, %if.end14.if.end29.i_crit_edge
  %SFIL.0.i = phi i8 [ -128, %if.end14.if.end29.i_crit_edge ], [ 0, %if.else.i.if.end29.i_crit_edge ], [ -128, %if.else4.i.if.end29.i_crit_edge ], [ 0, %if.else8.i.if.end29.i_crit_edge ], [ -128, %if.else12.i.if.end29.i_crit_edge ], [ 0, %if.else16.i.if.end29.i_crit_edge ], [ %spec.select.i, %if.else20.i ]
  %NDEC.0.i = phi i32 [ 3, %if.end14.if.end29.i_crit_edge ], [ 3, %if.else.i.if.end29.i_crit_edge ], [ 2, %if.else4.i.if.end29.i_crit_edge ], [ 2, %if.else8.i.if.end29.i_crit_edge ], [ 1, %if.else12.i.if.end29.i_crit_edge ], [ 1, %if.else16.i.if.end29.i_crit_edge ], [ 0, %if.else20.i ]
  %add39.i = or i32 %NDEC.0.i, 24
  %shl.i = shl nuw i32 1, %add39.i
  %15 = zext i32 %shl.i to i64
  %conv41.i = zext i32 %12 to i64
  %mul42.i = mul nuw nsw i64 %15, %conv41.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul42.i)
  %cmp218.i = icmp ult i64 %mul42.i, 4294967296
  br i1 %cmp218.i, label %if.then222.i, label %if.else228.i, !prof !51

if.then222.i:                                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv223.i = trunc i64 %mul42.i to i32
  %div226.i = udiv i32 %conv223.i, %14
  %conv227.i = zext i32 %div226.i to i64
  %extract.t103.i = trunc i32 %div226.i to i8
  %extract176 = lshr i64 %conv227.i, 8
  %extract.t177 = trunc i64 %extract176 to i8
  %extract180 = lshr i64 %conv227.i, 16
  %extract.t181 = trunc i64 %extract180 to i8
  br label %if.end232.i

if.else228.i:                                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %14, i64 %mul42.i) #11, !srcloc !52
  %asmresult1.i.i = extractvalue { i64, i64 } %16, 1
  %extract.t104.i = trunc i64 %asmresult1.i.i to i8
  %extract174 = lshr i64 %asmresult1.i.i, 8
  %extract.t175 = trunc i64 %extract174 to i8
  %extract178 = lshr i64 %asmresult1.i.i, 16
  %extract.t179 = trunc i64 %extract178 to i8
  br label %if.end232.i

if.end232.i:                                      ; preds = %if.else228.i, %if.then222.i
  %asmresult1.i.i.sink173.off8 = phi i8 [ %extract.t175, %if.else228.i ], [ %extract.t177, %if.then222.i ]
  %asmresult1.i.i.sink173.off16 = phi i8 [ %extract.t179, %if.else228.i ], [ %extract.t181, %if.then222.i ]
  %BDRX.0.off0.i = phi i8 [ %extract.t104.i, %if.else228.i ], [ %extract.t103.i, %if.then222.i ]
  %mul31.i = shl i32 %14, 4
  %shr.i = ashr i32 %mul31.i, %NDEC.0.i
  %div321.i = lshr i32 %12, 1
  %add.i = add i32 %shr.i, %div321.i
  %div33.i = udiv i32 %add.i, %12
  %17 = tail call i32 @llvm.smin.i32(i32 %div33.i, i32 255) #6
  %NDEC.0.tr.i = trunc i32 %NDEC.0.i to i8
  %conv237.i = shl nuw i8 %NDEC.0.tr.i, 6
  tail call fastcc void @tda10023_writebit(ptr noundef %5, i8 noundef zeroext 3, i8 noundef zeroext -64, i8 noundef zeroext %conv237.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #6
  %18 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 10, ptr %buf.i.i, align 1
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %BDRX.0.off0.i, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %21 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 196607, ptr %21, align 4
  %config.i.i = getelementptr inbounds %struct.tda10023_state, ptr %5, i32 0, i32 1
  %23 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %config.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 4
  %conv.i.i = zext i8 %26 to i16
  %27 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %flags.i.i, align 2
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %5, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i4.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i4.i, label %if.end232.i.tda10023_writereg.exit.i_crit_edge, label %if.then.i.i

if.end232.i.tda10023_writereg.exit.i_crit_edge:   ; preds = %if.end232.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10023_writereg.exit.i

if.then.i.i:                                      ; preds = %if.end232.i
  %dvb.i.i = getelementptr inbounds %struct.tda10023_state, ptr %5, i32 0, i32 2, i32 2
  %32 = ptrtoint ptr %dvb.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dvb.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i, label %if.then.i.i.cond.end.i.i_crit_edge, label %cond.true.i.i

if.then.i.i.cond.end.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.then.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %35, %cond.true.i.i ], [ -1, %if.then.i.i.cond.end.i.i_crit_edge ]
  %conv7.i.i = zext i8 %BDRX.0.off0.i to i32
  %call8.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %cond.i.i, ptr noundef nonnull @.str.1, i32 noundef 10, i32 noundef %conv7.i.i, i32 noundef %call.i.i) #10
  br label %tda10023_writereg.exit.i

tda10023_writereg.exit.i:                         ; preds = %cond.end.i.i, %if.end232.i.tda10023_writereg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i5.i) #6
  %36 = getelementptr inbounds [2 x i8], ptr %buf.i5.i, i32 0, i32 1
  %37 = ptrtoint ptr %buf.i5.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 11, ptr %buf.i5.i, align 1
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %asmresult1.i.i.sink173.off8, ptr %36, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i6.i) #6
  %39 = getelementptr inbounds i8, ptr %msg.i6.i, i32 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 196607, ptr %39, align 4
  %41 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %config.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 4
  %conv.i8.i = zext i8 %44 to i16
  %45 = ptrtoint ptr %msg.i6.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i8.i, ptr %msg.i6.i, align 4
  %flags.i9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i6.i, i32 0, i32 1
  %46 = ptrtoint ptr %flags.i9.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %flags.i9.i, align 2
  %buf1.i11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i6.i, i32 0, i32 3
  %47 = ptrtoint ptr %buf1.i11.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %buf.i5.i, ptr %buf1.i11.i, align 4
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %5, align 4
  %call.i12.i = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %msg.i6.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i12.i)
  %cmp.not.i13.i = icmp eq i32 %call.i12.i, 1
  br i1 %cmp.not.i13.i, label %tda10023_writereg.exit.i.tda10023_writereg.exit23.i_crit_edge, label %if.then.i16.i

tda10023_writereg.exit.i.tda10023_writereg.exit23.i_crit_edge: ; preds = %tda10023_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10023_writereg.exit23.i

if.then.i16.i:                                    ; preds = %tda10023_writereg.exit.i
  %dvb.i14.i = getelementptr inbounds %struct.tda10023_state, ptr %5, i32 0, i32 2, i32 2
  %50 = ptrtoint ptr %dvb.i14.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dvb.i14.i, align 4
  %tobool.not.i15.i = icmp eq ptr %51, null
  br i1 %tobool.not.i15.i, label %if.then.i16.i.cond.end.i21.i_crit_edge, label %cond.true.i17.i

if.then.i16.i.cond.end.i21.i_crit_edge:           ; preds = %if.then.i16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i21.i

cond.true.i17.i:                                  ; preds = %if.then.i16.i
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  br label %cond.end.i21.i

cond.end.i21.i:                                   ; preds = %cond.true.i17.i, %if.then.i16.i.cond.end.i21.i_crit_edge
  %cond.i18.i = phi i32 [ %53, %cond.true.i17.i ], [ -1, %if.then.i16.i.cond.end.i21.i_crit_edge ]
  %conv7.i19.i = zext i8 %asmresult1.i.i.sink173.off8 to i32
  %call8.i20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %cond.i18.i, ptr noundef nonnull @.str.1, i32 noundef 11, i32 noundef %conv7.i19.i, i32 noundef %call.i12.i) #10
  br label %tda10023_writereg.exit23.i

tda10023_writereg.exit23.i:                       ; preds = %cond.end.i21.i, %tda10023_writereg.exit.i.tda10023_writereg.exit23.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i6.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i5.i) #6
  %conv248.i = and i8 %asmresult1.i.i.sink173.off16, 31
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i24.i) #6
  %54 = getelementptr inbounds [2 x i8], ptr %buf.i24.i, i32 0, i32 1
  %55 = ptrtoint ptr %buf.i24.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 12, ptr %buf.i24.i, align 1
  %56 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv248.i, ptr %54, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i25.i) #6
  %57 = getelementptr inbounds i8, ptr %msg.i25.i, i32 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 196607, ptr %57, align 4
  %59 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %config.i.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %60, align 4
  %conv.i27.i = zext i8 %62 to i16
  %63 = ptrtoint ptr %msg.i25.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv.i27.i, ptr %msg.i25.i, align 4
  %flags.i28.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i25.i, i32 0, i32 1
  %64 = ptrtoint ptr %flags.i28.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %flags.i28.i, align 2
  %buf1.i30.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i25.i, i32 0, i32 3
  %65 = ptrtoint ptr %buf1.i30.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %buf.i24.i, ptr %buf1.i30.i, align 4
  %66 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %5, align 4
  %call.i31.i = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %msg.i25.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i31.i)
  %cmp.not.i32.i = icmp eq i32 %call.i31.i, 1
  br i1 %cmp.not.i32.i, label %tda10023_writereg.exit23.i.tda10023_writereg.exit42.i_crit_edge, label %if.then.i35.i

tda10023_writereg.exit23.i.tda10023_writereg.exit42.i_crit_edge: ; preds = %tda10023_writereg.exit23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10023_writereg.exit42.i

if.then.i35.i:                                    ; preds = %tda10023_writereg.exit23.i
  %dvb.i33.i = getelementptr inbounds %struct.tda10023_state, ptr %5, i32 0, i32 2, i32 2
  %68 = ptrtoint ptr %dvb.i33.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dvb.i33.i, align 4
  %tobool.not.i34.i = icmp eq ptr %69, null
  br i1 %tobool.not.i34.i, label %if.then.i35.i.cond.end.i40.i_crit_edge, label %cond.true.i36.i

if.then.i35.i.cond.end.i40.i_crit_edge:           ; preds = %if.then.i35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i40.i

cond.true.i36.i:                                  ; preds = %if.then.i35.i
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 4
  br label %cond.end.i40.i

cond.end.i40.i:                                   ; preds = %cond.true.i36.i, %if.then.i35.i.cond.end.i40.i_crit_edge
  %cond.i37.i = phi i32 [ %71, %cond.true.i36.i ], [ -1, %if.then.i35.i.cond.end.i40.i_crit_edge ]
  %conv7.i38.i = zext i8 %conv248.i to i32
  %call8.i39.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %cond.i37.i, ptr noundef nonnull @.str.1, i32 noundef 12, i32 noundef %conv7.i38.i, i32 noundef %call.i31.i) #10
  br label %tda10023_writereg.exit42.i

tda10023_writereg.exit42.i:                       ; preds = %cond.end.i40.i, %tda10023_writereg.exit23.i.tda10023_writereg.exit42.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i25.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i24.i) #6
  %conv250.i = trunc i32 %17 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i43.i) #6
  %72 = getelementptr inbounds [2 x i8], ptr %buf.i43.i, i32 0, i32 1
  %73 = ptrtoint ptr %buf.i43.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 13, ptr %buf.i43.i, align 1
  %74 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv250.i, ptr %72, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i44.i) #6
  %75 = getelementptr inbounds i8, ptr %msg.i44.i, i32 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 196607, ptr %75, align 4
  %77 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %config.i.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %78, align 4
  %conv.i46.i = zext i8 %80 to i16
  %81 = ptrtoint ptr %msg.i44.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv.i46.i, ptr %msg.i44.i, align 4
  %flags.i47.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i44.i, i32 0, i32 1
  %82 = ptrtoint ptr %flags.i47.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 0, ptr %flags.i47.i, align 2
  %buf1.i49.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i44.i, i32 0, i32 3
  %83 = ptrtoint ptr %buf1.i49.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %buf.i43.i, ptr %buf1.i49.i, align 4
  %84 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %5, align 4
  %call.i50.i = call i32 @i2c_transfer(ptr noundef %85, ptr noundef nonnull %msg.i44.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i50.i)
  %cmp.not.i51.i = icmp eq i32 %call.i50.i, 1
  br i1 %cmp.not.i51.i, label %tda10023_writereg.exit42.i.tda10023_writereg.exit61.i_crit_edge, label %if.then.i54.i

tda10023_writereg.exit42.i.tda10023_writereg.exit61.i_crit_edge: ; preds = %tda10023_writereg.exit42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10023_writereg.exit61.i

if.then.i54.i:                                    ; preds = %tda10023_writereg.exit42.i
  %dvb.i52.i = getelementptr inbounds %struct.tda10023_state, ptr %5, i32 0, i32 2, i32 2
  %86 = ptrtoint ptr %dvb.i52.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dvb.i52.i, align 4
  %tobool.not.i53.i = icmp eq ptr %87, null
  br i1 %tobool.not.i53.i, label %if.then.i54.i.cond.end.i59.i_crit_edge, label %cond.true.i55.i

if.then.i54.i.cond.end.i59.i_crit_edge:           ; preds = %if.then.i54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i59.i

cond.true.i55.i:                                  ; preds = %if.then.i54.i
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  br label %cond.end.i59.i

cond.end.i59.i:                                   ; preds = %cond.true.i55.i, %if.then.i54.i.cond.end.i59.i_crit_edge
  %cond.i56.i = phi i32 [ %89, %cond.true.i55.i ], [ -1, %if.then.i54.i.cond.end.i59.i_crit_edge ]
  %conv7.i57.i = and i32 %17, 255
  %call8.i58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %cond.i56.i, ptr noundef nonnull @.str.1, i32 noundef 13, i32 noundef %conv7.i57.i, i32 noundef %call.i50.i) #10
  br label %tda10023_writereg.exit61.i

tda10023_writereg.exit61.i:                       ; preds = %cond.end.i59.i, %tda10023_writereg.exit42.i.tda10023_writereg.exit61.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i44.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i43.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i62.i) #6
  %90 = getelementptr inbounds [2 x i8], ptr %buf.i62.i, i32 0, i32 1
  %91 = ptrtoint ptr %buf.i62.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 61, ptr %buf.i62.i, align 1
  %92 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %SFIL.0.i, ptr %90, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i63.i) #6
  %93 = getelementptr inbounds i8, ptr %msg.i63.i, i32 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 196607, ptr %93, align 4
  %95 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %config.i.i, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %96, align 4
  %conv.i65.i = zext i8 %98 to i16
  %99 = ptrtoint ptr %msg.i63.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv.i65.i, ptr %msg.i63.i, align 4
  %flags.i66.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63.i, i32 0, i32 1
  %100 = ptrtoint ptr %flags.i66.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 0, ptr %flags.i66.i, align 2
  %buf1.i68.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63.i, i32 0, i32 3
  %101 = ptrtoint ptr %buf1.i68.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %buf.i62.i, ptr %buf1.i68.i, align 4
  %102 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %5, align 4
  %call.i69.i = call i32 @i2c_transfer(ptr noundef %103, ptr noundef nonnull %msg.i63.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i69.i)
  %cmp.not.i70.i = icmp eq i32 %call.i69.i, 1
  br i1 %cmp.not.i70.i, label %tda10023_writereg.exit61.i.tda10023_set_symbolrate.exit_crit_edge, label %if.then.i73.i

tda10023_writereg.exit61.i.tda10023_set_symbolrate.exit_crit_edge: ; preds = %tda10023_writereg.exit61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10023_set_symbolrate.exit

if.then.i73.i:                                    ; preds = %tda10023_writereg.exit61.i
  %dvb.i71.i = getelementptr inbounds %struct.tda10023_state, ptr %5, i32 0, i32 2, i32 2
  %104 = ptrtoint ptr %dvb.i71.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dvb.i71.i, align 4
  %tobool.not.i72.i = icmp eq ptr %105, null
  br i1 %tobool.not.i72.i, label %if.then.i73.i.cond.end.i78.i_crit_edge, label %cond.true.i74.i

if.then.i73.i.cond.end.i78.i_crit_edge:           ; preds = %if.then.i73.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i78.i

cond.true.i74.i:                                  ; preds = %if.then.i73.i
  call void @__sanitizer_cov_trace_pc() #8
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %105, align 4
  br label %cond.end.i78.i

cond.end.i78.i:                                   ; preds = %cond.true.i74.i, %if.then.i73.i.cond.end.i78.i_crit_edge
  %cond.i75.i = phi i32 [ %107, %cond.true.i74.i ], [ -1, %if.then.i73.i.cond.end.i78.i_crit_edge ]
  %conv7.i76.i = zext i8 %SFIL.0.i to i32
  %call8.i77.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %cond.i75.i, ptr noundef nonnull @.str.1, i32 noundef 61, i32 noundef %conv7.i76.i, i32 noundef %call.i69.i) #10
  br label %tda10023_set_symbolrate.exit

tda10023_set_symbolrate.exit:                     ; preds = %cond.end.i78.i, %tda10023_writereg.exit61.i.tda10023_set_symbolrate.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i63.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i62.i) #6
  %arrayidx = getelementptr [6 x %struct.qam_params], ptr @tda10023_set_parameters.qam_params, i32 0, i32 %3
  %lockthr = getelementptr [6 x %struct.qam_params], ptr @tda10023_set_parameters.qam_params, i32 0, i32 %3, i32 1
  %108 = ptrtoint ptr %lockthr to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %lockthr, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %110 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %111 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 5, ptr %buf.i, align 1
  %112 = ptrtoint ptr %110 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %109, ptr %110, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %113 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 -1, ptr %113, align 4
  %115 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %config.i.i, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %116, align 4
  %conv.i = zext i8 %118 to i16
  %119 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %120 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 0, ptr %flags.i, align 2
  store i16 2, ptr %113, align 4
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %121 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %buf.i, ptr %buf1.i, align 4
  %122 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %5, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %123, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %tda10023_set_symbolrate.exit.tda10023_writereg.exit_crit_edge, label %if.then.i

tda10023_set_symbolrate.exit.tda10023_writereg.exit_crit_edge: ; preds = %tda10023_set_symbolrate.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10023_writereg.exit

if.then.i:                                        ; preds = %tda10023_set_symbolrate.exit
  %dvb.i = getelementptr inbounds %struct.tda10023_state, ptr %5, i32 0, i32 2, i32 2
  %124 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dvb.i, align 4
  %tobool.not.i63 = icmp eq ptr %125, null
  br i1 %tobool.not.i63, label %if.then.i.cond.end.i_crit_edge, label %cond.true.i64

if.then.i.cond.end.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i64:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %125, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i64, %if.then.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %127, %cond.true.i64 ], [ -1, %if.then.i.cond.end.i_crit_edge ]
  %conv7.i = zext i8 %109 to i32
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %cond.i, ptr noundef nonnull @.str.1, i32 noundef 5, i32 noundef %conv7.i, i32 noundef %call.i) #10
  br label %tda10023_writereg.exit

tda10023_writereg.exit:                           ; preds = %cond.end.i, %tda10023_set_symbolrate.exit.tda10023_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  %mseth = getelementptr [6 x %struct.qam_params], ptr @tda10023_set_parameters.qam_params, i32 0, i32 %3, i32 2
  %128 = ptrtoint ptr %mseth to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %mseth, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i65) #6
  %130 = getelementptr inbounds [2 x i8], ptr %buf.i65, i32 0, i32 1
  %131 = ptrtoint ptr %buf.i65 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 8, ptr %buf.i65, align 1
  %132 = ptrtoint ptr %130 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %129, ptr %130, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i66) #6
  %133 = getelementptr inbounds i8, ptr %msg.i66, i32 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 196607, ptr %133, align 4
  %135 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %config.i.i, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %136, align 4
  %conv.i68 = zext i8 %138 to i16
  %139 = ptrtoint ptr %msg.i66 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %conv.i68, ptr %msg.i66, align 4
  %flags.i69 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i66, i32 0, i32 1
  %140 = ptrtoint ptr %flags.i69 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 0, ptr %flags.i69, align 2
  %buf1.i71 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i66, i32 0, i32 3
  %141 = ptrtoint ptr %buf1.i71 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %buf.i65, ptr %buf1.i71, align 4
  %142 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %5, align 4
  %call.i72 = call i32 @i2c_transfer(ptr noundef %143, ptr noundef nonnull %msg.i66, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i72)
  %cmp.not.i73 = icmp eq i32 %call.i72, 1
  br i1 %cmp.not.i73, label %tda10023_writereg.exit.tda10023_writereg.exit83_crit_edge, label %if.then.i76

tda10023_writereg.exit.tda10023_writereg.exit83_crit_edge: ; preds = %tda10023_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10023_writereg.exit83

if.then.i76:                                      ; preds = %tda10023_writereg.exit
  %dvb.i74 = getelementptr inbounds %struct.tda10023_state, ptr %5, i32 0, i32 2, i32 2
  %144 = ptrtoint ptr %dvb.i74 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dvb.i74, align 4
  %tobool.not.i75 = icmp eq ptr %145, null
  br i1 %tobool.not.i75, label %if.then.i76.cond.end.i81_crit_edge, label %cond.true.i77

if.then.i76.cond.end.i81_crit_edge:               ; preds = %if.then.i76
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i81

cond.true.i77:                                    ; preds = %if.then.i76
  call void @__sanitizer_cov_trace_pc() #8
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %145, align 4
  br label %cond.end.i81

cond.end.i81:                                     ; preds = %cond.true.i77, %if.then.i76.cond.end.i81_crit_edge
  %cond.i78 = phi i32 [ %147, %cond.true.i77 ], [ -1, %if.then.i76.cond.end.i81_crit_edge ]
  %conv7.i79 = zext i8 %129 to i32
  %call8.i80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %cond.i78, ptr noundef nonnull @.str.1, i32 noundef 8, i32 noundef %conv7.i79, i32 noundef %call.i72) #10
  br label %tda10023_writereg.exit83

tda10023_writereg.exit83:                         ; preds = %cond.end.i81, %tda10023_writereg.exit.tda10023_writereg.exit83_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i66) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i65) #6
  %aref = getelementptr [6 x %struct.qam_params], ptr @tda10023_set_parameters.qam_params, i32 0, i32 %3, i32 3
  %148 = ptrtoint ptr %aref to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %aref, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i84) #6
  %150 = getelementptr inbounds [2 x i8], ptr %buf.i84, i32 0, i32 1
  %151 = ptrtoint ptr %buf.i84 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 9, ptr %buf.i84, align 1
  %152 = ptrtoint ptr %150 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %149, ptr %150, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i85) #6
  %153 = getelementptr inbounds i8, ptr %msg.i85, i32 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 196607, ptr %153, align 4
  %155 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %config.i.i, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %156, align 4
  %conv.i87 = zext i8 %158 to i16
  %159 = ptrtoint ptr %msg.i85 to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %conv.i87, ptr %msg.i85, align 4
  %flags.i88 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i85, i32 0, i32 1
  %160 = ptrtoint ptr %flags.i88 to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 0, ptr %flags.i88, align 2
  %buf1.i90 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i85, i32 0, i32 3
  %161 = ptrtoint ptr %buf1.i90 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %buf.i84, ptr %buf1.i90, align 4
  %162 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %5, align 4
  %call.i91 = call i32 @i2c_transfer(ptr noundef %163, ptr noundef nonnull %msg.i85, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i91)
  %cmp.not.i92 = icmp eq i32 %call.i91, 1
  br i1 %cmp.not.i92, label %tda10023_writereg.exit83.tda10023_writereg.exit102_crit_edge, label %if.then.i95

tda10023_writereg.exit83.tda10023_writereg.exit102_crit_edge: ; preds = %tda10023_writereg.exit83
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10023_writereg.exit102

if.then.i95:                                      ; preds = %tda10023_writereg.exit83
  %dvb.i93 = getelementptr inbounds %struct.tda10023_state, ptr %5, i32 0, i32 2, i32 2
  %164 = ptrtoint ptr %dvb.i93 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dvb.i93, align 4
  %tobool.not.i94 = icmp eq ptr %165, null
  br i1 %tobool.not.i94, label %if.then.i95.cond.end.i100_crit_edge, label %cond.true.i96

if.then.i95.cond.end.i100_crit_edge:              ; preds = %if.then.i95
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i100

cond.true.i96:                                    ; preds = %if.then.i95
  call void @__sanitizer_cov_trace_pc() #8
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %165, align 4
  br label %cond.end.i100

cond.end.i100:                                    ; preds = %cond.true.i96, %if.then.i95.cond.end.i100_crit_edge
  %cond.i97 = phi i32 [ %167, %cond.true.i96 ], [ -1, %if.then.i95.cond.end.i100_crit_edge ]
  %conv7.i98 = zext i8 %149 to i32
  %call8.i99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %cond.i97, ptr noundef nonnull @.str.1, i32 noundef 9, i32 noundef %conv7.i98, i32 noundef %call.i91) #10
  br label %tda10023_writereg.exit102

tda10023_writereg.exit102:                        ; preds = %cond.end.i100, %tda10023_writereg.exit83.tda10023_writereg.exit102_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i85) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i84) #6
  %agcrefnyq = getelementptr [6 x %struct.qam_params], ptr @tda10023_set_parameters.qam_params, i32 0, i32 %3, i32 4
  %168 = ptrtoint ptr %agcrefnyq to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %agcrefnyq, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i103) #6
  %170 = getelementptr inbounds [2 x i8], ptr %buf.i103, i32 0, i32 1
  %171 = ptrtoint ptr %buf.i103 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 -76, ptr %buf.i103, align 1
  %172 = ptrtoint ptr %170 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %169, ptr %170, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i104) #6
  %173 = getelementptr inbounds i8, ptr %msg.i104, i32 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 196607, ptr %173, align 4
  %175 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %config.i.i, align 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %176, align 4
  %conv.i106 = zext i8 %178 to i16
  %179 = ptrtoint ptr %msg.i104 to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %conv.i106, ptr %msg.i104, align 4
  %flags.i107 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104, i32 0, i32 1
  %180 = ptrtoint ptr %flags.i107 to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 0, ptr %flags.i107, align 2
  %buf1.i109 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104, i32 0, i32 3
  %181 = ptrtoint ptr %buf1.i109 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %buf.i103, ptr %buf1.i109, align 4
  %182 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %5, align 4
  %call.i110 = call i32 @i2c_transfer(ptr noundef %183, ptr noundef nonnull %msg.i104, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i110)
  %cmp.not.i111 = icmp eq i32 %call.i110, 1
  br i1 %cmp.not.i111, label %tda10023_writereg.exit102.tda10023_writereg.exit121_crit_edge, label %if.then.i114

tda10023_writereg.exit102.tda10023_writereg.exit121_crit_edge: ; preds = %tda10023_writereg.exit102
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10023_writereg.exit121

if.then.i114:                                     ; preds = %tda10023_writereg.exit102
  %dvb.i112 = getelementptr inbounds %struct.tda10023_state, ptr %5, i32 0, i32 2, i32 2
  %184 = ptrtoint ptr %dvb.i112 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dvb.i112, align 4
  %tobool.not.i113 = icmp eq ptr %185, null
  br i1 %tobool.not.i113, label %if.then.i114.cond.end.i119_crit_edge, label %cond.true.i115

if.then.i114.cond.end.i119_crit_edge:             ; preds = %if.then.i114
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i119

cond.true.i115:                                   ; preds = %if.then.i114
  call void @__sanitizer_cov_trace_pc() #8
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %185, align 4
  br label %cond.end.i119

cond.end.i119:                                    ; preds = %cond.true.i115, %if.then.i114.cond.end.i119_crit_edge
  %cond.i116 = phi i32 [ %187, %cond.true.i115 ], [ -1, %if.then.i114.cond.end.i119_crit_edge ]
  %conv7.i117 = zext i8 %169 to i32
  %call8.i118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %cond.i116, ptr noundef nonnull @.str.1, i32 noundef 180, i32 noundef %conv7.i117, i32 noundef %call.i110) #10
  br label %tda10023_writereg.exit121

tda10023_writereg.exit121:                        ; preds = %cond.end.i119, %tda10023_writereg.exit102.tda10023_writereg.exit121_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i104) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i103) #6
  %eragnyq_thd = getelementptr [6 x %struct.qam_params], ptr @tda10023_set_parameters.qam_params, i32 0, i32 %3, i32 5
  %188 = ptrtoint ptr %eragnyq_thd to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %eragnyq_thd, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i122) #6
  %190 = getelementptr inbounds [2 x i8], ptr %buf.i122, i32 0, i32 1
  %191 = ptrtoint ptr %buf.i122 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 -74, ptr %buf.i122, align 1
  %192 = ptrtoint ptr %190 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %189, ptr %190, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i123) #6
  %193 = getelementptr inbounds i8, ptr %msg.i123, i32 4
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 196607, ptr %193, align 4
  %195 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %config.i.i, align 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %196, align 4
  %conv.i125 = zext i8 %198 to i16
  %199 = ptrtoint ptr %msg.i123 to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 %conv.i125, ptr %msg.i123, align 4
  %flags.i126 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i123, i32 0, i32 1
  %200 = ptrtoint ptr %flags.i126 to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 0, ptr %flags.i126, align 2
  %buf1.i128 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i123, i32 0, i32 3
  %201 = ptrtoint ptr %buf1.i128 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %buf.i122, ptr %buf1.i128, align 4
  %202 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %5, align 4
  %call.i129 = call i32 @i2c_transfer(ptr noundef %203, ptr noundef nonnull %msg.i123, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i129)
  %cmp.not.i130 = icmp eq i32 %call.i129, 1
  br i1 %cmp.not.i130, label %tda10023_writereg.exit121.tda10023_writereg.exit140_crit_edge, label %if.then.i133

tda10023_writereg.exit121.tda10023_writereg.exit140_crit_edge: ; preds = %tda10023_writereg.exit121
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10023_writereg.exit140

if.then.i133:                                     ; preds = %tda10023_writereg.exit121
  %dvb.i131 = getelementptr inbounds %struct.tda10023_state, ptr %5, i32 0, i32 2, i32 2
  %204 = ptrtoint ptr %dvb.i131 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %dvb.i131, align 4
  %tobool.not.i132 = icmp eq ptr %205, null
  br i1 %tobool.not.i132, label %if.then.i133.cond.end.i138_crit_edge, label %cond.true.i134

if.then.i133.cond.end.i138_crit_edge:             ; preds = %if.then.i133
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i138

cond.true.i134:                                   ; preds = %if.then.i133
  call void @__sanitizer_cov_trace_pc() #8
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %205, align 4
  br label %cond.end.i138

cond.end.i138:                                    ; preds = %cond.true.i134, %if.then.i133.cond.end.i138_crit_edge
  %cond.i135 = phi i32 [ %207, %cond.true.i134 ], [ -1, %if.then.i133.cond.end.i138_crit_edge ]
  %conv7.i136 = zext i8 %189 to i32
  %call8.i137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %cond.i135, ptr noundef nonnull @.str.1, i32 noundef 182, i32 noundef %conv7.i136, i32 noundef %call.i129) #10
  br label %tda10023_writereg.exit140

tda10023_writereg.exit140:                        ; preds = %cond.end.i138, %tda10023_writereg.exit121.tda10023_writereg.exit140_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i123) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i122) #6
  call fastcc void @tda10023_writebit(ptr noundef %5, i8 noundef zeroext 4, i8 noundef zeroext 64, i8 noundef zeroext 64)
  call fastcc void @tda10023_writebit(ptr noundef %5, i8 noundef zeroext 61, i8 noundef zeroext -4, i8 noundef zeroext %is_annex_c.0.off0)
  %208 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx, align 1
  %reg01.i = getelementptr inbounds %struct.tda10023_state, ptr %5, i32 0, i32 4
  %210 = ptrtoint ptr %reg01.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %reg01.i, align 1
  %212 = and i8 %211, 99
  %or1.i = or i8 %212, %209
  %and5.i = and i8 %or1.i, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i141) #6
  %213 = getelementptr inbounds [2 x i8], ptr %buf.i.i141, i32 0, i32 1
  %214 = ptrtoint ptr %buf.i.i141 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 0, ptr %buf.i.i141, align 1
  %215 = ptrtoint ptr %213 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %and5.i, ptr %213, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i142) #6
  %216 = getelementptr inbounds i8, ptr %msg.i.i142, i32 4
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 196607, ptr %216, align 4
  %218 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %config.i.i, align 4
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %219, align 4
  %conv.i.i144 = zext i8 %221 to i16
  %222 = ptrtoint ptr %msg.i.i142 to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 %conv.i.i144, ptr %msg.i.i142, align 4
  %flags.i.i145 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i142, i32 0, i32 1
  %223 = ptrtoint ptr %flags.i.i145 to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 0, ptr %flags.i.i145, align 2
  %buf1.i.i146 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i142, i32 0, i32 3
  %224 = ptrtoint ptr %buf1.i.i146 to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %buf.i.i141, ptr %buf1.i.i146, align 4
  %225 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %5, align 4
  %call.i.i147 = call i32 @i2c_transfer(ptr noundef %226, ptr noundef nonnull %msg.i.i142, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i147)
  %cmp.not.i.i148 = icmp eq i32 %call.i.i147, 1
  br i1 %cmp.not.i.i148, label %tda10023_writereg.exit140.tda10023_writereg.exit.i157_crit_edge, label %if.then.i.i151

tda10023_writereg.exit140.tda10023_writereg.exit.i157_crit_edge: ; preds = %tda10023_writereg.exit140
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10023_writereg.exit.i157

if.then.i.i151:                                   ; preds = %tda10023_writereg.exit140
  %dvb.i.i149 = getelementptr inbounds %struct.tda10023_state, ptr %5, i32 0, i32 2, i32 2
  %227 = ptrtoint ptr %dvb.i.i149 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %dvb.i.i149, align 4
  %tobool.not.i.i150 = icmp eq ptr %228, null
  br i1 %tobool.not.i.i150, label %if.then.i.i151.cond.end.i.i156_crit_edge, label %cond.true.i.i152

if.then.i.i151.cond.end.i.i156_crit_edge:         ; preds = %if.then.i.i151
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i.i156

cond.true.i.i152:                                 ; preds = %if.then.i.i151
  call void @__sanitizer_cov_trace_pc() #8
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %228, align 4
  br label %cond.end.i.i156

cond.end.i.i156:                                  ; preds = %cond.true.i.i152, %if.then.i.i151.cond.end.i.i156_crit_edge
  %cond.i.i153 = phi i32 [ %230, %cond.true.i.i152 ], [ -1, %if.then.i.i151.cond.end.i.i156_crit_edge ]
  %conv7.i.i154 = zext i8 %and5.i to i32
  %call8.i.i155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %cond.i.i153, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %conv7.i.i154, i32 noundef %call.i.i147) #10
  br label %tda10023_writereg.exit.i157

tda10023_writereg.exit.i157:                      ; preds = %cond.end.i.i156, %tda10023_writereg.exit140.tda10023_writereg.exit.i157_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i142) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i141) #6
  %231 = or i8 %or1.i, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i2.i) #6
  %232 = getelementptr inbounds [2 x i8], ptr %buf.i2.i, i32 0, i32 1
  %233 = ptrtoint ptr %buf.i2.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 0, ptr %buf.i2.i, align 1
  %234 = ptrtoint ptr %232 to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %231, ptr %232, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i3.i) #6
  %235 = getelementptr inbounds i8, ptr %msg.i3.i, i32 4
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 196607, ptr %235, align 4
  %237 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %config.i.i, align 4
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %238, align 4
  %conv.i5.i = zext i8 %240 to i16
  %241 = ptrtoint ptr %msg.i3.i to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 %conv.i5.i, ptr %msg.i3.i, align 4
  %flags.i6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3.i, i32 0, i32 1
  %242 = ptrtoint ptr %flags.i6.i to i32
  call void @__asan_store2_noabort(i32 %242)
  store i16 0, ptr %flags.i6.i, align 2
  %buf1.i8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3.i, i32 0, i32 3
  %243 = ptrtoint ptr %buf1.i8.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %buf.i2.i, ptr %buf1.i8.i, align 4
  %244 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %5, align 4
  %call.i9.i = call i32 @i2c_transfer(ptr noundef %245, ptr noundef nonnull %msg.i3.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i9.i)
  %cmp.not.i10.i = icmp eq i32 %call.i9.i, 1
  br i1 %cmp.not.i10.i, label %tda10023_writereg.exit.i157.tda10023_setup_reg0.exit_crit_edge, label %if.then.i13.i

tda10023_writereg.exit.i157.tda10023_setup_reg0.exit_crit_edge: ; preds = %tda10023_writereg.exit.i157
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10023_setup_reg0.exit

if.then.i13.i:                                    ; preds = %tda10023_writereg.exit.i157
  %dvb.i11.i = getelementptr inbounds %struct.tda10023_state, ptr %5, i32 0, i32 2, i32 2
  %246 = ptrtoint ptr %dvb.i11.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %dvb.i11.i, align 4
  %tobool.not.i12.i = icmp eq ptr %247, null
  br i1 %tobool.not.i12.i, label %if.then.i13.i.cond.end.i18.i_crit_edge, label %cond.true.i14.i

if.then.i13.i.cond.end.i18.i_crit_edge:           ; preds = %if.then.i13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i18.i

cond.true.i14.i:                                  ; preds = %if.then.i13.i
  call void @__sanitizer_cov_trace_pc() #8
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %247, align 4
  br label %cond.end.i18.i

cond.end.i18.i:                                   ; preds = %cond.true.i14.i, %if.then.i13.i.cond.end.i18.i_crit_edge
  %cond.i15.i = phi i32 [ %249, %cond.true.i14.i ], [ -1, %if.then.i13.i.cond.end.i18.i_crit_edge ]
  %conv7.i16.i = zext i8 %231 to i32
  %call8.i17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %cond.i15.i, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %conv7.i16.i, i32 noundef %call.i9.i) #10
  br label %tda10023_setup_reg0.exit

tda10023_setup_reg0.exit:                         ; preds = %cond.end.i18.i, %tda10023_writereg.exit.i157.tda10023_setup_reg0.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i3.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i2.i) #6
  %250 = ptrtoint ptr %reg01.i to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 %or1.i, ptr %reg01.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %tda10023_setup_reg0.exit, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %tda10023_setup_reg0.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10023_get_frontend(ptr nocapture noundef readonly %fe, ptr nocapture noundef %p) #0 align 64 {
entry:
  %b0.i66 = alloca [1 x i8], align 1
  %b1.i67 = alloca [1 x i8], align 1
  %msg.i68 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i43 = alloca [1 x i8], align 1
  %b1.i44 = alloca [1 x i8], align 1
  %msg.i45 = alloca [2 x %struct.i2c_msg], align 4
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
  store i8 17, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.tda10023_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4
  %conv.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = load i8, ptr %7, align 4
  %conv5.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %17 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b1.i, ptr %buf8.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.tda10023_readreg.exit_crit_edge, label %if.then.i

entry.tda10023_readreg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10023_readreg.exit

if.then.i:                                        ; preds = %entry
  %dvb.i = getelementptr inbounds %struct.tda10023_state, ptr %1, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dvb.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.then.i.cond.end.i_crit_edge, label %cond.true.i

if.then.i.cond.end.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %24, %cond.true.i ], [ -1, %if.then.i.cond.end.i_crit_edge ]
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %cond.i, ptr noundef nonnull @.str.4, i32 noundef 17, i32 noundef %call.i) #10
  br label %tda10023_readreg.exit

tda10023_readreg.exit:                            ; preds = %cond.end.i, %entry.tda10023_readreg.exit_crit_edge
  %25 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i43) #6
  %27 = ptrtoint ptr %b0.i43 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 25, ptr %b0.i43, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i44) #6
  %28 = ptrtoint ptr %b1.i44 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %b1.i44, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i45) #6
  %29 = getelementptr inbounds i8, ptr %msg.i45, i32 4
  %30 = call ptr @memset(ptr %29, i32 255, i32 16)
  %31 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %config.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 4
  %conv.i47 = zext i8 %34 to i16
  %35 = ptrtoint ptr %msg.i45 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i47, ptr %msg.i45, align 4
  %flags.i48 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i48 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i48, align 2
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %29, align 4
  %buf.i50 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 0, i32 3
  %38 = ptrtoint ptr %buf.i50 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %b0.i43, ptr %buf.i50, align 4
  %arrayinit.element.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 1
  %39 = load i8, ptr %32, align 4
  %conv5.i52 = zext i8 %39 to i16
  %40 = ptrtoint ptr %arrayinit.element.i51 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv5.i52, ptr %arrayinit.element.i51, align 4
  %flags6.i53 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 1, i32 1
  %41 = ptrtoint ptr %flags6.i53 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %flags6.i53, align 2
  %len7.i54 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 1, i32 2
  %42 = ptrtoint ptr %len7.i54 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %len7.i54, align 4
  %buf8.i55 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 1, i32 3
  %43 = ptrtoint ptr %buf8.i55 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %b1.i44, ptr %buf8.i55, align 4
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %call.i56 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %msg.i45, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i56)
  %cmp.not.i57 = icmp eq i32 %call.i56, 2
  br i1 %cmp.not.i57, label %tda10023_readreg.exit.tda10023_readreg.exit65_crit_edge, label %if.then.i60

tda10023_readreg.exit.tda10023_readreg.exit65_crit_edge: ; preds = %tda10023_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10023_readreg.exit65

if.then.i60:                                      ; preds = %tda10023_readreg.exit
  %dvb.i58 = getelementptr inbounds %struct.tda10023_state, ptr %1, i32 0, i32 2, i32 2
  %46 = ptrtoint ptr %dvb.i58 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dvb.i58, align 4
  %tobool.not.i59 = icmp eq ptr %47, null
  br i1 %tobool.not.i59, label %if.then.i60.cond.end.i64_crit_edge, label %cond.true.i61

if.then.i60.cond.end.i64_crit_edge:               ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i64

cond.true.i61:                                    ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  br label %cond.end.i64

cond.end.i64:                                     ; preds = %cond.true.i61, %if.then.i60.cond.end.i64_crit_edge
  %cond.i62 = phi i32 [ %49, %cond.true.i61 ], [ -1, %if.then.i60.cond.end.i64_crit_edge ]
  %call16.i63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %cond.i62, ptr noundef nonnull @.str.4, i32 noundef 25, i32 noundef %call.i56) #10
  br label %tda10023_readreg.exit65

tda10023_readreg.exit65:                          ; preds = %cond.end.i64, %tda10023_readreg.exit.tda10023_readreg.exit65_crit_edge
  %50 = ptrtoint ptr %b1.i44 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %b1.i44, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i45) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i44) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i43) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i66) #6
  %52 = ptrtoint ptr %b0.i66 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 4, ptr %b0.i66, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i67) #6
  %53 = ptrtoint ptr %b1.i67 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %b1.i67, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i68) #6
  %54 = getelementptr inbounds i8, ptr %msg.i68, i32 4
  %55 = call ptr @memset(ptr %54, i32 255, i32 16)
  %56 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %config.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 4
  %conv.i70 = zext i8 %59 to i16
  %60 = ptrtoint ptr %msg.i68 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv.i70, ptr %msg.i68, align 4
  %flags.i71 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i68, i32 0, i32 1
  %61 = ptrtoint ptr %flags.i71 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %flags.i71, align 2
  %62 = ptrtoint ptr %54 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 1, ptr %54, align 4
  %buf.i73 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i68, i32 0, i32 3
  %63 = ptrtoint ptr %buf.i73 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %b0.i66, ptr %buf.i73, align 4
  %arrayinit.element.i74 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i68, i32 1
  %64 = load i8, ptr %57, align 4
  %conv5.i75 = zext i8 %64 to i16
  %65 = ptrtoint ptr %arrayinit.element.i74 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv5.i75, ptr %arrayinit.element.i74, align 4
  %flags6.i76 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i68, i32 1, i32 1
  %66 = ptrtoint ptr %flags6.i76 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 1, ptr %flags6.i76, align 2
  %len7.i77 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i68, i32 1, i32 2
  %67 = ptrtoint ptr %len7.i77 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 1, ptr %len7.i77, align 4
  %buf8.i78 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i68, i32 1, i32 3
  %68 = ptrtoint ptr %buf8.i78 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %b1.i67, ptr %buf8.i78, align 4
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %call.i79 = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %msg.i68, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i79)
  %cmp.not.i80 = icmp eq i32 %call.i79, 2
  br i1 %cmp.not.i80, label %tda10023_readreg.exit65.tda10023_readreg.exit88_crit_edge, label %if.then.i83

tda10023_readreg.exit65.tda10023_readreg.exit88_crit_edge: ; preds = %tda10023_readreg.exit65
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10023_readreg.exit88

if.then.i83:                                      ; preds = %tda10023_readreg.exit65
  %dvb.i81 = getelementptr inbounds %struct.tda10023_state, ptr %1, i32 0, i32 2, i32 2
  %71 = ptrtoint ptr %dvb.i81 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dvb.i81, align 4
  %tobool.not.i82 = icmp eq ptr %72, null
  br i1 %tobool.not.i82, label %if.then.i83.cond.end.i87_crit_edge, label %cond.true.i84

if.then.i83.cond.end.i87_crit_edge:               ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i87

cond.true.i84:                                    ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  br label %cond.end.i87

cond.end.i87:                                     ; preds = %cond.true.i84, %if.then.i83.cond.end.i87_crit_edge
  %cond.i85 = phi i32 [ %74, %cond.true.i84 ], [ -1, %if.then.i83.cond.end.i87_crit_edge ]
  %call16.i86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %cond.i85, ptr noundef nonnull @.str.4, i32 noundef 4, i32 noundef %call.i79) #10
  br label %tda10023_readreg.exit88

tda10023_readreg.exit88:                          ; preds = %cond.end.i87, %tda10023_readreg.exit65.tda10023_readreg.exit88_crit_edge
  %75 = ptrtoint ptr %b1.i67 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %b1.i67, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i68) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i67) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i66) #6
  %77 = lshr i8 %76, 5
  %.lobit = and i8 %77, 1
  %78 = xor i8 %.lobit, 1
  %79 = zext i8 %78 to i32
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 4
  %80 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %inversion, align 4
  %reg0 = getelementptr inbounds %struct.tda10023_state, ptr %1, i32 0, i32 4
  %81 = ptrtoint ptr %reg0 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %reg0, align 1
  %83 = lshr i8 %82, 2
  %84 = and i8 %83, 7
  %narrow = add nuw nsw i8 %84, 1
  %add = zext i8 %narrow to i32
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 1
  %85 = ptrtoint ptr %modulation to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %add, ptr %modulation, align 4
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 5
  %86 = ptrtoint ptr %fec_inner to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %fec_inner, align 4
  %87 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %p, align 4
  %add16 = add i32 %88, 31250
  %89 = urem i32 %add16, 62500
  %mul17 = sub i32 %add16, %89
  store i32 %mul17, ptr %p, align 4
  %90 = and i8 %26, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool20.not = icmp eq i8 %90, 0
  br i1 %tobool20.not, label %tda10023_readreg.exit88.if.end28_crit_edge, label %if.then21

tda10023_readreg.exit88.if.end28_crit_edge:       ; preds = %tda10023_readreg.exit88
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then21:                                        ; preds = %tda10023_readreg.exit88
  call void @__sanitizer_cov_trace_pc() #8
  %symbol_rate22 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 10
  %91 = ptrtoint ptr %symbol_rate22 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %symbol_rate22, align 4
  %conv23 = sext i8 %51 to i32
  %mul24 = mul i32 %92, %conv23
  %shr25 = ashr i32 %mul24, 10
  %sub27 = sub i32 %mul17, %shr25
  %93 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %sub27, ptr %p, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then21, %tda10023_readreg.exit88.if.end28_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10023_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %status, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 17, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %4 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.tda10023_state, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 4
  %conv.i = zext i8 %10 to i16
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %5, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %15 = load i8, ptr %8, align 4
  %conv5.i = zext i8 %15 to i16
  %16 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %17 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %18 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %19 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %b1.i, ptr %buf8.i, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.tda10023_readreg.exit_crit_edge, label %if.then.i

entry.tda10023_readreg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10023_readreg.exit

if.then.i:                                        ; preds = %entry
  %dvb.i = getelementptr inbounds %struct.tda10023_state, ptr %1, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dvb.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.then.i.cond.end.i_crit_edge, label %cond.true.i

if.then.i.cond.end.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %25, %cond.true.i ], [ -1, %if.then.i.cond.end.i_crit_edge ]
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %cond.i, ptr noundef nonnull @.str.4, i32 noundef 17, i32 noundef %call.i) #10
  br label %tda10023_readreg.exit

tda10023_readreg.exit:                            ; preds = %cond.end.i, %entry.tda10023_readreg.exit_crit_edge
  %26 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %conv = zext i8 %27 to i32
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %tda10023_readreg.exit.if.end_crit_edge, label %if.then

tda10023_readreg.exit.if.end_crit_edge:           ; preds = %tda10023_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %tda10023_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %status, align 4
  %or = or i32 %29, 3
  store i32 %or, ptr %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %tda10023_readreg.exit.if.end_crit_edge
  %and1 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %status, align 4
  %or4 = or i32 %31, 12
  store i32 %or4, ptr %status, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %and6 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.if.end10_crit_edge, label %if.then8

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %status, align 4
  %or9 = or i32 %33, 16
  store i32 %or9, ptr %status, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5.if.end10_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10023_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  %b0.i36 = alloca [1 x i8], align 1
  %b1.i37 = alloca [1 x i8], align 1
  %msg.i38 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i13 = alloca [1 x i8], align 1
  %b1.i14 = alloca [1 x i8], align 1
  %msg.i15 = alloca [2 x %struct.i2c_msg], align 4
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
  store i8 20, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.tda10023_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4
  %conv.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = load i8, ptr %7, align 4
  %conv5.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %17 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b1.i, ptr %buf8.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.tda10023_readreg.exit_crit_edge, label %if.then.i

entry.tda10023_readreg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10023_readreg.exit

if.then.i:                                        ; preds = %entry
  %dvb.i = getelementptr inbounds %struct.tda10023_state, ptr %1, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dvb.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.then.i.cond.end.i_crit_edge, label %cond.true.i

if.then.i.cond.end.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %24, %cond.true.i ], [ -1, %if.then.i.cond.end.i_crit_edge ]
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %cond.i, ptr noundef nonnull @.str.4, i32 noundef 20, i32 noundef %call.i) #10
  br label %tda10023_readreg.exit

tda10023_readreg.exit:                            ; preds = %cond.end.i, %entry.tda10023_readreg.exit_crit_edge
  %25 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i13) #6
  %27 = ptrtoint ptr %b0.i13 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 21, ptr %b0.i13, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i14) #6
  %28 = ptrtoint ptr %b1.i14 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %b1.i14, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i15) #6
  %29 = getelementptr inbounds i8, ptr %msg.i15, i32 4
  %30 = call ptr @memset(ptr %29, i32 255, i32 16)
  %31 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %config.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 4
  %conv.i17 = zext i8 %34 to i16
  %35 = ptrtoint ptr %msg.i15 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i17, ptr %msg.i15, align 4
  %flags.i18 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i18 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i18, align 2
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %29, align 4
  %buf.i20 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 0, i32 3
  %38 = ptrtoint ptr %buf.i20 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %b0.i13, ptr %buf.i20, align 4
  %arrayinit.element.i21 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 1
  %39 = load i8, ptr %32, align 4
  %conv5.i22 = zext i8 %39 to i16
  %40 = ptrtoint ptr %arrayinit.element.i21 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv5.i22, ptr %arrayinit.element.i21, align 4
  %flags6.i23 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 1, i32 1
  %41 = ptrtoint ptr %flags6.i23 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %flags6.i23, align 2
  %len7.i24 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 1, i32 2
  %42 = ptrtoint ptr %len7.i24 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %len7.i24, align 4
  %buf8.i25 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 1, i32 3
  %43 = ptrtoint ptr %buf8.i25 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %b1.i14, ptr %buf8.i25, align 4
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %call.i26 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %msg.i15, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i26)
  %cmp.not.i27 = icmp eq i32 %call.i26, 2
  br i1 %cmp.not.i27, label %tda10023_readreg.exit.tda10023_readreg.exit35_crit_edge, label %if.then.i30

tda10023_readreg.exit.tda10023_readreg.exit35_crit_edge: ; preds = %tda10023_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10023_readreg.exit35

if.then.i30:                                      ; preds = %tda10023_readreg.exit
  %dvb.i28 = getelementptr inbounds %struct.tda10023_state, ptr %1, i32 0, i32 2, i32 2
  %46 = ptrtoint ptr %dvb.i28 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dvb.i28, align 4
  %tobool.not.i29 = icmp eq ptr %47, null
  br i1 %tobool.not.i29, label %if.then.i30.cond.end.i34_crit_edge, label %cond.true.i31

if.then.i30.cond.end.i34_crit_edge:               ; preds = %if.then.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i34

cond.true.i31:                                    ; preds = %if.then.i30
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  br label %cond.end.i34

cond.end.i34:                                     ; preds = %cond.true.i31, %if.then.i30.cond.end.i34_crit_edge
  %cond.i32 = phi i32 [ %49, %cond.true.i31 ], [ -1, %if.then.i30.cond.end.i34_crit_edge ]
  %call16.i33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %cond.i32, ptr noundef nonnull @.str.4, i32 noundef 21, i32 noundef %call.i26) #10
  br label %tda10023_readreg.exit35

tda10023_readreg.exit35:                          ; preds = %cond.end.i34, %tda10023_readreg.exit.tda10023_readreg.exit35_crit_edge
  %50 = ptrtoint ptr %b1.i14 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %b1.i14, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i15) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i14) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i13) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i36) #6
  %52 = ptrtoint ptr %b0.i36 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 22, ptr %b0.i36, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i37) #6
  %53 = ptrtoint ptr %b1.i37 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %b1.i37, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i38) #6
  %54 = getelementptr inbounds i8, ptr %msg.i38, i32 4
  %55 = call ptr @memset(ptr %54, i32 255, i32 16)
  %56 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %config.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 4
  %conv.i40 = zext i8 %59 to i16
  %60 = ptrtoint ptr %msg.i38 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv.i40, ptr %msg.i38, align 4
  %flags.i41 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 0, i32 1
  %61 = ptrtoint ptr %flags.i41 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %flags.i41, align 2
  %62 = ptrtoint ptr %54 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 1, ptr %54, align 4
  %buf.i43 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 0, i32 3
  %63 = ptrtoint ptr %buf.i43 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %b0.i36, ptr %buf.i43, align 4
  %arrayinit.element.i44 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 1
  %64 = load i8, ptr %57, align 4
  %conv5.i45 = zext i8 %64 to i16
  %65 = ptrtoint ptr %arrayinit.element.i44 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv5.i45, ptr %arrayinit.element.i44, align 4
  %flags6.i46 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 1, i32 1
  %66 = ptrtoint ptr %flags6.i46 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 1, ptr %flags6.i46, align 2
  %len7.i47 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 1, i32 2
  %67 = ptrtoint ptr %len7.i47 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 1, ptr %len7.i47, align 4
  %buf8.i48 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 1, i32 3
  %68 = ptrtoint ptr %buf8.i48 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %b1.i37, ptr %buf8.i48, align 4
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %call.i49 = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %msg.i38, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i49)
  %cmp.not.i50 = icmp eq i32 %call.i49, 2
  br i1 %cmp.not.i50, label %tda10023_readreg.exit35.tda10023_readreg.exit58_crit_edge, label %if.then.i53

tda10023_readreg.exit35.tda10023_readreg.exit58_crit_edge: ; preds = %tda10023_readreg.exit35
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10023_readreg.exit58

if.then.i53:                                      ; preds = %tda10023_readreg.exit35
  %dvb.i51 = getelementptr inbounds %struct.tda10023_state, ptr %1, i32 0, i32 2, i32 2
  %71 = ptrtoint ptr %dvb.i51 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dvb.i51, align 4
  %tobool.not.i52 = icmp eq ptr %72, null
  br i1 %tobool.not.i52, label %if.then.i53.cond.end.i57_crit_edge, label %cond.true.i54

if.then.i53.cond.end.i57_crit_edge:               ; preds = %if.then.i53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i57

cond.true.i54:                                    ; preds = %if.then.i53
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  br label %cond.end.i57

cond.end.i57:                                     ; preds = %cond.true.i54, %if.then.i53.cond.end.i57_crit_edge
  %cond.i55 = phi i32 [ %74, %cond.true.i54 ], [ -1, %if.then.i53.cond.end.i57_crit_edge ]
  %call16.i56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %cond.i55, ptr noundef nonnull @.str.4, i32 noundef 22, i32 noundef %call.i49) #10
  br label %tda10023_readreg.exit58

tda10023_readreg.exit58:                          ; preds = %cond.end.i57, %tda10023_readreg.exit35.tda10023_readreg.exit58_crit_edge
  %75 = ptrtoint ptr %b1.i37 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %b1.i37, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i38) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i37) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i36) #6
  %77 = and i8 %76, 15
  call fastcc void @tda10023_writebit(ptr noundef %1, i8 noundef zeroext 16, i8 noundef zeroext -64, i8 noundef zeroext 0)
  %conv5 = zext i8 %26 to i32
  %conv6 = zext i8 %51 to i32
  %shl = shl nuw nsw i32 %conv6, 8
  %or = or i32 %shl, %conv5
  %conv7 = zext i8 %77 to i32
  %shl8 = shl nuw nsw i32 %conv7, 16
  %or9 = or i32 %shl8, %or
  %78 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or9, ptr %ber, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10023_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
  %b0.i26 = alloca [1 x i8], align 1
  %b1.i27 = alloca [1 x i8], align 1
  %msg.i28 = alloca [2 x %struct.i2c_msg], align 4
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
  store i8 47, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.tda10023_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4
  %conv.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = load i8, ptr %7, align 4
  %conv5.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %17 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b1.i, ptr %buf8.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.tda10023_readreg.exit_crit_edge, label %if.then.i

entry.tda10023_readreg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10023_readreg.exit

if.then.i:                                        ; preds = %entry
  %dvb.i = getelementptr inbounds %struct.tda10023_state, ptr %1, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dvb.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.then.i.cond.end.i_crit_edge, label %cond.true.i

if.then.i.cond.end.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %24, %cond.true.i ], [ -1, %if.then.i.cond.end.i_crit_edge ]
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %cond.i, ptr noundef nonnull @.str.4, i32 noundef 47, i32 noundef %call.i) #10
  br label %tda10023_readreg.exit

tda10023_readreg.exit:                            ; preds = %cond.end.i, %entry.tda10023_readreg.exit_crit_edge
  %25 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i26) #6
  %27 = ptrtoint ptr %b0.i26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 23, ptr %b0.i26, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i27) #6
  %28 = ptrtoint ptr %b1.i27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %b1.i27, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i28) #6
  %29 = getelementptr inbounds i8, ptr %msg.i28, i32 4
  %30 = call ptr @memset(ptr %29, i32 255, i32 16)
  %31 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %config.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 4
  %conv.i30 = zext i8 %34 to i16
  %35 = ptrtoint ptr %msg.i28 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i30, ptr %msg.i28, align 4
  %flags.i31 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i28, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i31 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i31, align 2
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %29, align 4
  %buf.i33 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i28, i32 0, i32 3
  %38 = ptrtoint ptr %buf.i33 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %b0.i26, ptr %buf.i33, align 4
  %arrayinit.element.i34 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i28, i32 1
  %39 = load i8, ptr %32, align 4
  %conv5.i35 = zext i8 %39 to i16
  %40 = ptrtoint ptr %arrayinit.element.i34 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv5.i35, ptr %arrayinit.element.i34, align 4
  %flags6.i36 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i28, i32 1, i32 1
  %41 = ptrtoint ptr %flags6.i36 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %flags6.i36, align 2
  %len7.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i28, i32 1, i32 2
  %42 = ptrtoint ptr %len7.i37 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %len7.i37, align 4
  %buf8.i38 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i28, i32 1, i32 3
  %43 = ptrtoint ptr %buf8.i38 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %b1.i27, ptr %buf8.i38, align 4
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %call.i39 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %msg.i28, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i39)
  %cmp.not.i40 = icmp eq i32 %call.i39, 2
  br i1 %cmp.not.i40, label %tda10023_readreg.exit.tda10023_readreg.exit48_crit_edge, label %if.then.i43

tda10023_readreg.exit.tda10023_readreg.exit48_crit_edge: ; preds = %tda10023_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10023_readreg.exit48

if.then.i43:                                      ; preds = %tda10023_readreg.exit
  %dvb.i41 = getelementptr inbounds %struct.tda10023_state, ptr %1, i32 0, i32 2, i32 2
  %46 = ptrtoint ptr %dvb.i41 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dvb.i41, align 4
  %tobool.not.i42 = icmp eq ptr %47, null
  br i1 %tobool.not.i42, label %if.then.i43.cond.end.i47_crit_edge, label %cond.true.i44

if.then.i43.cond.end.i47_crit_edge:               ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i47

cond.true.i44:                                    ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  br label %cond.end.i47

cond.end.i47:                                     ; preds = %cond.true.i44, %if.then.i43.cond.end.i47_crit_edge
  %cond.i45 = phi i32 [ %49, %cond.true.i44 ], [ -1, %if.then.i43.cond.end.i47_crit_edge ]
  %call16.i46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %cond.i45, ptr noundef nonnull @.str.4, i32 noundef 23, i32 noundef %call.i39) #10
  br label %tda10023_readreg.exit48

tda10023_readreg.exit48:                          ; preds = %cond.end.i47, %tda10023_readreg.exit.tda10023_readreg.exit48_crit_edge
  %50 = ptrtoint ptr %b1.i27 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %b1.i27, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i28) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i27) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i26) #6
  %52 = xor i8 %51, -1
  %sub = zext i8 %52 to i16
  %53 = xor i8 %26, -1
  %54 = lshr i8 %53, 4
  %div = zext i8 %54 to i16
  %add = add nuw nsw i16 %sub, %div
  call void @__sanitizer_cov_trace_const_cmp2(i16 144, i16 %add)
  %cmp = icmp ugt i16 %add, 144
  %sub9 = shl nuw nsw i16 %add, 1
  %mul = add nsw i16 %sub9, -288
  %add10 = select i1 %cmp, i16 %mul, i16 0
  %gain.0 = add nsw i16 %add10, %add
  %55 = call i16 @llvm.umin.i16(i16 %gain.0, i16 255)
  %or = mul nuw i16 %55, 257
  %56 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %or, ptr %strength, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10023_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
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
  store i8 24, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.tda10023_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4
  %conv.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = load i8, ptr %7, align 4
  %conv5.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %17 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b1.i, ptr %buf8.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.tda10023_readreg.exit_crit_edge, label %if.then.i

entry.tda10023_readreg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10023_readreg.exit

if.then.i:                                        ; preds = %entry
  %dvb.i = getelementptr inbounds %struct.tda10023_state, ptr %1, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dvb.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.then.i.cond.end.i_crit_edge, label %cond.true.i

if.then.i.cond.end.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %24, %cond.true.i ], [ -1, %if.then.i.cond.end.i_crit_edge ]
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %cond.i, ptr noundef nonnull @.str.4, i32 noundef 24, i32 noundef %call.i) #10
  br label %tda10023_readreg.exit

tda10023_readreg.exit:                            ; preds = %cond.end.i, %entry.tda10023_readreg.exit_crit_edge
  %25 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %neg = xor i8 %26, -1
  %conv2 = zext i8 %neg to i16
  %or = mul nuw i16 %conv2, 257
  %27 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %or, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10023_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #0 align 64 {
entry:
  %b0.i66 = alloca [1 x i8], align 1
  %b1.i67 = alloca [1 x i8], align 1
  %msg.i68 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i43 = alloca [1 x i8], align 1
  %b1.i44 = alloca [1 x i8], align 1
  %msg.i45 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i20 = alloca [1 x i8], align 1
  %b1.i21 = alloca [1 x i8], align 1
  %msg.i22 = alloca [2 x %struct.i2c_msg], align 4
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
  store i8 116, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.tda10023_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4
  %conv.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = load i8, ptr %7, align 4
  %conv5.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %17 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b1.i, ptr %buf8.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.tda10023_readreg.exit_crit_edge, label %if.then.i

entry.tda10023_readreg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10023_readreg.exit

if.then.i:                                        ; preds = %entry
  %dvb.i = getelementptr inbounds %struct.tda10023_state, ptr %1, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dvb.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.then.i.cond.end.i_crit_edge, label %cond.true.i

if.then.i.cond.end.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %24, %cond.true.i ], [ -1, %if.then.i.cond.end.i_crit_edge ]
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %cond.i, ptr noundef nonnull @.str.4, i32 noundef 116, i32 noundef %call.i) #10
  br label %tda10023_readreg.exit

tda10023_readreg.exit:                            ; preds = %cond.end.i, %entry.tda10023_readreg.exit_crit_edge
  %25 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i20) #6
  %27 = ptrtoint ptr %b0.i20 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 117, ptr %b0.i20, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i21) #6
  %28 = ptrtoint ptr %b1.i21 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %b1.i21, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i22) #6
  %29 = getelementptr inbounds i8, ptr %msg.i22, i32 4
  %30 = call ptr @memset(ptr %29, i32 255, i32 16)
  %31 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %config.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 4
  %conv.i24 = zext i8 %34 to i16
  %35 = ptrtoint ptr %msg.i22 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i24, ptr %msg.i22, align 4
  %flags.i25 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i25 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i25, align 2
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %29, align 4
  %buf.i27 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22, i32 0, i32 3
  %38 = ptrtoint ptr %buf.i27 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %b0.i20, ptr %buf.i27, align 4
  %arrayinit.element.i28 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22, i32 1
  %39 = load i8, ptr %32, align 4
  %conv5.i29 = zext i8 %39 to i16
  %40 = ptrtoint ptr %arrayinit.element.i28 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv5.i29, ptr %arrayinit.element.i28, align 4
  %flags6.i30 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22, i32 1, i32 1
  %41 = ptrtoint ptr %flags6.i30 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %flags6.i30, align 2
  %len7.i31 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22, i32 1, i32 2
  %42 = ptrtoint ptr %len7.i31 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %len7.i31, align 4
  %buf8.i32 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22, i32 1, i32 3
  %43 = ptrtoint ptr %buf8.i32 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %b1.i21, ptr %buf8.i32, align 4
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %call.i33 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %msg.i22, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i33)
  %cmp.not.i34 = icmp eq i32 %call.i33, 2
  br i1 %cmp.not.i34, label %tda10023_readreg.exit.tda10023_readreg.exit42_crit_edge, label %if.then.i37

tda10023_readreg.exit.tda10023_readreg.exit42_crit_edge: ; preds = %tda10023_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10023_readreg.exit42

if.then.i37:                                      ; preds = %tda10023_readreg.exit
  %dvb.i35 = getelementptr inbounds %struct.tda10023_state, ptr %1, i32 0, i32 2, i32 2
  %46 = ptrtoint ptr %dvb.i35 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dvb.i35, align 4
  %tobool.not.i36 = icmp eq ptr %47, null
  br i1 %tobool.not.i36, label %if.then.i37.cond.end.i41_crit_edge, label %cond.true.i38

if.then.i37.cond.end.i41_crit_edge:               ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i41

cond.true.i38:                                    ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  br label %cond.end.i41

cond.end.i41:                                     ; preds = %cond.true.i38, %if.then.i37.cond.end.i41_crit_edge
  %cond.i39 = phi i32 [ %49, %cond.true.i38 ], [ -1, %if.then.i37.cond.end.i41_crit_edge ]
  %call16.i40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %cond.i39, ptr noundef nonnull @.str.4, i32 noundef 117, i32 noundef %call.i33) #10
  br label %tda10023_readreg.exit42

tda10023_readreg.exit42:                          ; preds = %cond.end.i41, %tda10023_readreg.exit.tda10023_readreg.exit42_crit_edge
  %50 = ptrtoint ptr %b1.i21 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %b1.i21, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i22) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i21) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i20) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i43) #6
  %52 = ptrtoint ptr %b0.i43 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 118, ptr %b0.i43, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i44) #6
  %53 = ptrtoint ptr %b1.i44 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %b1.i44, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i45) #6
  %54 = getelementptr inbounds i8, ptr %msg.i45, i32 4
  %55 = call ptr @memset(ptr %54, i32 255, i32 16)
  %56 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %config.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 4
  %conv.i47 = zext i8 %59 to i16
  %60 = ptrtoint ptr %msg.i45 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv.i47, ptr %msg.i45, align 4
  %flags.i48 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 0, i32 1
  %61 = ptrtoint ptr %flags.i48 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %flags.i48, align 2
  %62 = ptrtoint ptr %54 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 1, ptr %54, align 4
  %buf.i50 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 0, i32 3
  %63 = ptrtoint ptr %buf.i50 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %b0.i43, ptr %buf.i50, align 4
  %arrayinit.element.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 1
  %64 = load i8, ptr %57, align 4
  %conv5.i52 = zext i8 %64 to i16
  %65 = ptrtoint ptr %arrayinit.element.i51 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv5.i52, ptr %arrayinit.element.i51, align 4
  %flags6.i53 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 1, i32 1
  %66 = ptrtoint ptr %flags6.i53 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 1, ptr %flags6.i53, align 2
  %len7.i54 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 1, i32 2
  %67 = ptrtoint ptr %len7.i54 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 1, ptr %len7.i54, align 4
  %buf8.i55 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 1, i32 3
  %68 = ptrtoint ptr %buf8.i55 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %b1.i44, ptr %buf8.i55, align 4
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %call.i56 = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %msg.i45, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i56)
  %cmp.not.i57 = icmp eq i32 %call.i56, 2
  br i1 %cmp.not.i57, label %tda10023_readreg.exit42.tda10023_readreg.exit65_crit_edge, label %if.then.i60

tda10023_readreg.exit42.tda10023_readreg.exit65_crit_edge: ; preds = %tda10023_readreg.exit42
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10023_readreg.exit65

if.then.i60:                                      ; preds = %tda10023_readreg.exit42
  %dvb.i58 = getelementptr inbounds %struct.tda10023_state, ptr %1, i32 0, i32 2, i32 2
  %71 = ptrtoint ptr %dvb.i58 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dvb.i58, align 4
  %tobool.not.i59 = icmp eq ptr %72, null
  br i1 %tobool.not.i59, label %if.then.i60.cond.end.i64_crit_edge, label %cond.true.i61

if.then.i60.cond.end.i64_crit_edge:               ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i64

cond.true.i61:                                    ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  br label %cond.end.i64

cond.end.i64:                                     ; preds = %cond.true.i61, %if.then.i60.cond.end.i64_crit_edge
  %cond.i62 = phi i32 [ %74, %cond.true.i61 ], [ -1, %if.then.i60.cond.end.i64_crit_edge ]
  %call16.i63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %cond.i62, ptr noundef nonnull @.str.4, i32 noundef 118, i32 noundef %call.i56) #10
  br label %tda10023_readreg.exit65

tda10023_readreg.exit65:                          ; preds = %cond.end.i64, %tda10023_readreg.exit42.tda10023_readreg.exit65_crit_edge
  %75 = ptrtoint ptr %b1.i44 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %b1.i44, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i45) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i44) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i43) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i66) #6
  %77 = ptrtoint ptr %b0.i66 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 119, ptr %b0.i66, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i67) #6
  %78 = ptrtoint ptr %b1.i67 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %b1.i67, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i68) #6
  %79 = getelementptr inbounds i8, ptr %msg.i68, i32 4
  %80 = call ptr @memset(ptr %79, i32 255, i32 16)
  %81 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %config.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %82, align 4
  %conv.i70 = zext i8 %84 to i16
  %85 = ptrtoint ptr %msg.i68 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv.i70, ptr %msg.i68, align 4
  %flags.i71 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i68, i32 0, i32 1
  %86 = ptrtoint ptr %flags.i71 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 0, ptr %flags.i71, align 2
  %87 = ptrtoint ptr %79 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 1, ptr %79, align 4
  %buf.i73 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i68, i32 0, i32 3
  %88 = ptrtoint ptr %buf.i73 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %b0.i66, ptr %buf.i73, align 4
  %arrayinit.element.i74 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i68, i32 1
  %89 = load i8, ptr %82, align 4
  %conv5.i75 = zext i8 %89 to i16
  %90 = ptrtoint ptr %arrayinit.element.i74 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %conv5.i75, ptr %arrayinit.element.i74, align 4
  %flags6.i76 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i68, i32 1, i32 1
  %91 = ptrtoint ptr %flags6.i76 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 1, ptr %flags6.i76, align 2
  %len7.i77 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i68, i32 1, i32 2
  %92 = ptrtoint ptr %len7.i77 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 1, ptr %len7.i77, align 4
  %buf8.i78 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i68, i32 1, i32 3
  %93 = ptrtoint ptr %buf8.i78 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %b1.i67, ptr %buf8.i78, align 4
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %1, align 4
  %call.i79 = call i32 @i2c_transfer(ptr noundef %95, ptr noundef nonnull %msg.i68, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i79)
  %cmp.not.i80 = icmp eq i32 %call.i79, 2
  br i1 %cmp.not.i80, label %tda10023_readreg.exit65.tda10023_readreg.exit88_crit_edge, label %if.then.i83

tda10023_readreg.exit65.tda10023_readreg.exit88_crit_edge: ; preds = %tda10023_readreg.exit65
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10023_readreg.exit88

if.then.i83:                                      ; preds = %tda10023_readreg.exit65
  %dvb.i81 = getelementptr inbounds %struct.tda10023_state, ptr %1, i32 0, i32 2, i32 2
  %96 = ptrtoint ptr %dvb.i81 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dvb.i81, align 4
  %tobool.not.i82 = icmp eq ptr %97, null
  br i1 %tobool.not.i82, label %if.then.i83.cond.end.i87_crit_edge, label %cond.true.i84

if.then.i83.cond.end.i87_crit_edge:               ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i87

cond.true.i84:                                    ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %97, align 4
  br label %cond.end.i87

cond.end.i87:                                     ; preds = %cond.true.i84, %if.then.i83.cond.end.i87_crit_edge
  %cond.i85 = phi i32 [ %99, %cond.true.i84 ], [ -1, %if.then.i83.cond.end.i87_crit_edge ]
  %call16.i86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %cond.i85, ptr noundef nonnull @.str.4, i32 noundef 119, i32 noundef %call.i79) #10
  br label %tda10023_readreg.exit88

tda10023_readreg.exit88:                          ; preds = %cond.end.i87, %tda10023_readreg.exit65.tda10023_readreg.exit88_crit_edge
  %100 = ptrtoint ptr %b1.i67 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %b1.i67, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i68) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i67) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i66) #6
  %conv = zext i8 %26 to i32
  %conv4 = zext i8 %51 to i32
  %shl = shl nuw nsw i32 %conv4, 8
  %or = or i32 %shl, %conv
  %conv5 = zext i8 %76 to i32
  %shl6 = shl nuw nsw i32 %conv5, 16
  %or7 = or i32 %or, %shl6
  %conv8 = zext i8 %101 to i32
  %shl9 = shl nuw i32 %conv8, 24
  %or10 = or i32 %or7, %shl9
  %102 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %or10, ptr %ucblocks, align 4
  call fastcc void @tda10023_writebit(ptr noundef %1, i8 noundef zeroext 16, i8 noundef zeroext 32, i8 noundef zeroext 0)
  call fastcc void @tda10023_writebit(ptr noundef %1, i8 noundef zeroext 16, i8 noundef zeroext 32, i8 noundef zeroext 32)
  call fastcc void @tda10023_writebit(ptr noundef %1, i8 noundef zeroext 19, i8 noundef zeroext 1, i8 noundef zeroext 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10023_i2c_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #0 align 64 {
entry:
  %buf.i3 = alloca [2 x i8], align 2
  %msg_post.i = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 2
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 4032, ptr %buf.i, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 196607, ptr %3, align 4
  %config.i = getelementptr inbounds %struct.tda10023_state, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %config.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 4
  %conv.i = zext i8 %8 to i16
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buf.i, ptr %buf1.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.then.lock_tuner.exit_crit_edge, label %do.end.i

if.then.lock_tuner.exit_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %lock_tuner.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  br label %lock_tuner.exit

lock_tuner.exit:                                  ; preds = %do.end.i, %if.then.lock_tuner.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i3) #6
  %14 = ptrtoint ptr %buf.i3 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 3904, ptr %buf.i3, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg_post.i) #6
  %15 = getelementptr inbounds i8, ptr %msg_post.i, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 196607, ptr %15, align 4
  %config.i4 = getelementptr inbounds %struct.tda10023_state, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %config.i4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %config.i4, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 4
  %conv.i5 = zext i8 %20 to i16
  %21 = ptrtoint ptr %msg_post.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i5, ptr %msg_post.i, align 4
  %flags.i6 = getelementptr inbounds %struct.i2c_msg, ptr %msg_post.i, i32 0, i32 1
  %22 = ptrtoint ptr %flags.i6 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %flags.i6, align 2
  %buf1.i8 = getelementptr inbounds %struct.i2c_msg, ptr %msg_post.i, i32 0, i32 3
  %23 = ptrtoint ptr %buf1.i8 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %buf.i3, ptr %buf1.i8, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %call.i9 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %msg_post.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i9)
  %cmp.not.i10 = icmp eq i32 %call.i9, 1
  br i1 %cmp.not.i10, label %if.else.unlock_tuner.exit_crit_edge, label %do.end.i12

if.else.unlock_tuner.exit_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock_tuner.exit

do.end.i12:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  br label %unlock_tuner.exit

unlock_tuner.exit:                                ; preds = %do.end.i12, %if.else.unlock_tuner.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg_post.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i3) #6
  br label %if.end

if.end:                                           ; preds = %unlock_tuner.exit, %lock_tuner.exit
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tda10023_writebit(ptr nocapture noundef readonly %state, i8 noundef zeroext %reg, i8 noundef zeroext %mask, i8 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  %buf.i17 = alloca [2 x i8], align 1
  %msg.i18 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i3 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %mask)
  %cmp = icmp eq i8 %mask, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %0 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %reg, ptr %buf.i, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %data, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 196607, ptr %3, align 4
  %config.i = getelementptr inbounds %struct.tda10023_state, ptr %state, i32 0, i32 1
  %5 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %config.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 4
  %conv.i = zext i8 %8 to i16
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buf.i, ptr %buf1.i, align 4
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.then.tda10023_writereg.exit_crit_edge, label %if.then.i

if.then.tda10023_writereg.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10023_writereg.exit

if.then.i:                                        ; preds = %if.then
  %dvb.i = getelementptr inbounds %struct.tda10023_state, ptr %state, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dvb.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then.i.cond.end.i_crit_edge, label %cond.true.i

if.then.i.cond.end.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %17, %cond.true.i ], [ -1, %if.then.i.cond.end.i_crit_edge ]
  %conv6.i = zext i8 %reg to i32
  %conv7.i = zext i8 %data to i32
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %cond.i, ptr noundef nonnull @.str.1, i32 noundef %conv6.i, i32 noundef %conv7.i, i32 noundef %call.i) #10
  br label %tda10023_writereg.exit

tda10023_writereg.exit:                           ; preds = %cond.end.i, %if.then.tda10023_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  br label %return

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %18 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %reg, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %19 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i3) #6
  %20 = getelementptr inbounds i8, ptr %msg.i3, i32 4
  %21 = call ptr @memset(ptr %20, i32 255, i32 16)
  %config.i4 = getelementptr inbounds %struct.tda10023_state, ptr %state, i32 0, i32 1
  %22 = ptrtoint ptr %config.i4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %config.i4, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 4
  %conv.i5 = zext i8 %25 to i16
  %26 = ptrtoint ptr %msg.i3 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i5, ptr %msg.i3, align 4
  %flags.i6 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i6 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i6, align 2
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %20, align 4
  %buf.i8 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3, i32 0, i32 3
  %29 = ptrtoint ptr %buf.i8 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %b0.i, ptr %buf.i8, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3, i32 1
  %30 = load i8, ptr %23, align 4
  %conv5.i = zext i8 %30 to i16
  %31 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3, i32 1, i32 1
  %32 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3, i32 1, i32 2
  %33 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3, i32 1, i32 3
  %34 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %b1.i, ptr %buf8.i, align 4
  %35 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %state, align 4
  %call.i9 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %msg.i3, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i9)
  %cmp.not.i10 = icmp eq i32 %call.i9, 2
  br i1 %cmp.not.i10, label %if.else.tda10023_readreg.exit_crit_edge, label %if.then.i13

if.else.tda10023_readreg.exit_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10023_readreg.exit

if.then.i13:                                      ; preds = %if.else
  %dvb.i11 = getelementptr inbounds %struct.tda10023_state, ptr %state, i32 0, i32 2, i32 2
  %37 = ptrtoint ptr %dvb.i11 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dvb.i11, align 4
  %tobool.not.i12 = icmp eq ptr %38, null
  br i1 %tobool.not.i12, label %if.then.i13.cond.end.i16_crit_edge, label %cond.true.i14

if.then.i13.cond.end.i16_crit_edge:               ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i16

cond.true.i14:                                    ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  br label %cond.end.i16

cond.end.i16:                                     ; preds = %cond.true.i14, %if.then.i13.cond.end.i16_crit_edge
  %cond.i15 = phi i32 [ %40, %cond.true.i14 ], [ -1, %if.then.i13.cond.end.i16_crit_edge ]
  %conv15.i = zext i8 %reg to i32
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %cond.i15, ptr noundef nonnull @.str.4, i32 noundef %conv15.i, i32 noundef %call.i9) #10
  br label %tda10023_readreg.exit

tda10023_readreg.exit:                            ; preds = %cond.end.i16, %if.else.tda10023_readreg.exit_crit_edge
  %41 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i3) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %neg = xor i8 %mask, -1
  %and = and i8 %42, %neg
  %and81 = and i8 %data, %mask
  %or2 = or i8 %and, %and81
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i17) #6
  %43 = getelementptr inbounds [2 x i8], ptr %buf.i17, i32 0, i32 1
  %44 = ptrtoint ptr %buf.i17 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %reg, ptr %buf.i17, align 1
  %45 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %or2, ptr %43, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i18) #6
  %46 = getelementptr inbounds i8, ptr %msg.i18, i32 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 196607, ptr %46, align 4
  %48 = ptrtoint ptr %config.i4 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %config.i4, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 4
  %conv.i20 = zext i8 %51 to i16
  %52 = ptrtoint ptr %msg.i18 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv.i20, ptr %msg.i18, align 4
  %flags.i21 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18, i32 0, i32 1
  %53 = ptrtoint ptr %flags.i21 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %flags.i21, align 2
  %buf1.i23 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18, i32 0, i32 3
  %54 = ptrtoint ptr %buf1.i23 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %buf.i17, ptr %buf1.i23, align 4
  %55 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %state, align 4
  %call.i24 = call i32 @i2c_transfer(ptr noundef %56, ptr noundef nonnull %msg.i18, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i24)
  %cmp.not.i25 = icmp eq i32 %call.i24, 1
  br i1 %cmp.not.i25, label %tda10023_readreg.exit.tda10023_writereg.exit36_crit_edge, label %if.then.i28

tda10023_readreg.exit.tda10023_writereg.exit36_crit_edge: ; preds = %tda10023_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10023_writereg.exit36

if.then.i28:                                      ; preds = %tda10023_readreg.exit
  %dvb.i26 = getelementptr inbounds %struct.tda10023_state, ptr %state, i32 0, i32 2, i32 2
  %57 = ptrtoint ptr %dvb.i26 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dvb.i26, align 4
  %tobool.not.i27 = icmp eq ptr %58, null
  br i1 %tobool.not.i27, label %if.then.i28.cond.end.i34_crit_edge, label %cond.true.i29

if.then.i28.cond.end.i34_crit_edge:               ; preds = %if.then.i28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i34

cond.true.i29:                                    ; preds = %if.then.i28
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  br label %cond.end.i34

cond.end.i34:                                     ; preds = %cond.true.i29, %if.then.i28.cond.end.i34_crit_edge
  %cond.i30 = phi i32 [ %60, %cond.true.i29 ], [ -1, %if.then.i28.cond.end.i34_crit_edge ]
  %conv6.i31 = zext i8 %reg to i32
  %conv7.i32 = zext i8 %or2 to i32
  %call8.i33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %cond.i30, ptr noundef nonnull @.str.1, i32 noundef %conv6.i31, i32 noundef %conv7.i32, i32 noundef %call.i24) #10
  br label %tda10023_writereg.exit36

tda10023_writereg.exit36:                         ; preds = %cond.end.i34, %tda10023_readreg.exit.tda10023_writereg.exit36_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i18) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i17) #6
  br label %return

return:                                           ; preds = %tda10023_writereg.exit36, %tda10023_writereg.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !24, !26, !27, !28, !29, !30, !32, !34, !35, !36, !37, !39, !40, !41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__UNIQUE_ID_description290, !1, !"__UNIQUE_ID_description290", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/tda10023.c", i32 593, i32 1}
!2 = !{ptr @__UNIQUE_ID_author291, !3, !"__UNIQUE_ID_author291", i1 false, i1 false}
!3 = !{!"../drivers/media/dvb-frontends/tda10023.c", i32 594, i32 1}
!4 = !{ptr @__UNIQUE_ID_file292, !5, !"__UNIQUE_ID_file292", i1 false, i1 false}
!5 = !{!"../drivers/media/dvb-frontends/tda10023.c", i32 595, i32 1}
!6 = !{ptr @__UNIQUE_ID_license293, !5, !"__UNIQUE_ID_license293", i1 false, i1 false}
!7 = !{ptr @__ksymtab_tda10023_attach, !8, !"__ksymtab_tda10023_attach", i1 false, i1 false}
!8 = !{!"../drivers/media/dvb-frontends/tda10023.c", i32 597, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/tda10023.c", i32 78, i32 3}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @tda10023_writereg._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @tda10023_writereg._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/tda10023.c", i32 63, i32 3}
!17 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @tda10023_readreg._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @tda10023_readreg._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @tda10023_ops, !21, !"tda10023_ops", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/tda10023.c", i32 562, i32 38}
!22 = !{ptr @tda10023_set_parameters.qam_params, !23, !"qam_params", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/tda10023.c", i32 298, i32 33}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/tda10023.c", i32 459, i32 3}
!26 = !{ptr @tda10023_get_frontend._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @tda10023_get_frontend._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"verbose", i1 false, i1 false}
!31 = !{!"../drivers/media/dvb-frontends/tda10023.c", i32 50, i32 12}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/tda10023.c", i32 124, i32 3}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @lock_tuner._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @lock_tuner._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/dvb-frontends/tda10023.c", i32 138, i32 3}
!39 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @unlock_tuner._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @unlock_tuner._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{i64 2147996341, i64 2147996621, i64 2147996955, i64 2147997289}
