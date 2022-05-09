; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/tda8083.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/tda8083.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+tda8083_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_tda8083_attach\09\09\09\09"
module asm "\09.long\09__crc_tda8083_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tda8083_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tda8083_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tda8083_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.78 }
%union.anon.78 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.tda8083_state = type { ptr, ptr, %struct.dvb_frontend }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }

@tda8083_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Philips TDA8083 DVB-S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 920000000, i32 -2094967296, i32 125000, i32 0, i32 12000000, i32 30000000, i32 0, i32 -2147481601 }, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr null, ptr @tda8083_release, ptr null, ptr @tda8083_init, ptr @tda8083_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tda8083_set_frontend, ptr null, ptr @tda8083_get_frontend, ptr @tda8083_read_status, ptr @tda8083_read_ber, ptr @tda8083_read_signal_strength, ptr @tda8083_read_snr, ptr @tda8083_read_ucblocks, ptr null, ptr @tda8083_send_diseqc_msg, ptr null, ptr @tda8083_diseqc_send_burst, ptr @tda8083_diseqc_set_tone, ptr @tda8083_diseqc_set_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__param_str_debug = internal constant [14 x i8] c"tda8083.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [27 x i8] c"tda8083.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [65 x i8] c"tda8083.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [54 x i8] c"tda8083.description=Philips TDA8083 DVB-S Demodulator\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [47 x i8] c"tda8083.author=Ralph Metzler, Holger Waechtler\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [49 x i8] c"tda8083.file=drivers/media/dvb-frontends/tda8083\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"tda8083.license=GPL\00", section ".modinfo", align 1
@__kstrtab_tda8083_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tda8083_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tda8083_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tda8083_attach to i32), ptr @__kstrtab_tda8083_attach, ptr @__kstrtabns_tda8083_attach }, section "___ksymtab+tda8083_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tda8083_readregs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017tda8083: %s: readreg error (reg %02x, ret == %i)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tda8083_readregs\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/tda8083.c\00", [58 x i8] zeroinitializer }, align 32
@tda8083_readregs._entry_ptr = internal global ptr @tda8083_readregs._entry, section ".printk_index", align 4
@tda8083_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017tda8083: %s: writereg error (reg %02x, ret == %i)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tda8083_writereg\00", [47 x i8] zeroinitializer }, align 32
@tda8083_writereg._entry_ptr = internal global ptr @tda8083_writereg._entry, section ".printk_index", align 4
@tda8083_init_tab = internal constant { <{ [36 x i8], [8 x i8] }>, [52 x i8] } { <{ [36 x i8], [8 x i8] }> <{ [36 x i8] c"\04\00Jy\04\00\FF\EAHBy`pR\9A\10\0E\10\F2\A7\93\0B\05\C8\9D\00B\80\00`@\00\00u\00\E0", [8 x i8] zeroinitializer }>, [52 x i8] zeroinitializer }, align 32
@tda8083_set_symbolrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017tda8083: tda8083: ratio == %08x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tda8083_set_symbolrate\00", [41 x i8] zeroinitializer }, align 32
@tda8083_set_symbolrate._entry_ptr = internal global ptr @tda8083_set_symbolrate._entry, section ".printk_index", align 4
@tda8083_get_fec.fec_tab = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], [32 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.11 = private unnamed_addr constant [12 x i8] c"tda8083_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 440, i32 38 }
@___asan_gen_.14 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 32, i32 12 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 73, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 58, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"tda8083_init_tab\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 39, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 148, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [8 x i8] c"fec_tab\00", align 1
@___asan_gen_.51 = private constant [41 x i8] c"../drivers/media/dvb-frontends/tda8083.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 112, i32 27 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_tda8083_attach, ptr @__param_debug, ptr @tda8083_readregs._entry, ptr @tda8083_readregs._entry_ptr, ptr @tda8083_set_symbolrate._entry, ptr @tda8083_set_symbolrate._entry_ptr, ptr @tda8083_writereg._entry, ptr @tda8083_writereg._entry_ptr, ptr @tda8083_ops, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @tda8083_init_tab, ptr @.str.6, ptr @.str.7, ptr @tda8083_get_fec.fec_tab], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8083_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8083_readregs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8083_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8083_init_tab to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8083_set_symbolrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8083_get_fec.fec_tab to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tda8083_attach(ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  %reg1.addr.i.i = alloca i8, align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1048) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end:                                           ; preds = %entry
  %config1 = getelementptr inbounds %struct.tda8083_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %config, ptr %config1, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %call7.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #6
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %val.i, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg1.addr.i.i) #6
  %4 = ptrtoint ptr %reg1.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %reg1.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %config, align 1
  %conv.i.i = zext i8 %8 to i16
  %9 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i.i, align 2
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %5, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %reg1.addr.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %13 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i.i, ptr %arrayinit.element.i.i, align 4
  %flags6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %14 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags6.i.i, align 2
  %len7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %15 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %len7.i.i, align 4
  %buf9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %16 = ptrtoint ptr %buf9.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %val.i, ptr %buf9.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %if.end.tda8083_readreg.exit_crit_edge, label %do.body.i.i

if.end.tda8083_readreg.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_readreg.exit

do.body.i.i:                                      ; preds = %if.end
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.tda8083_readreg.exit_crit_edge, label %do.end.i.i

do.body.i.i.tda8083_readreg.exit_crit_edge:       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_readreg.exit

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %reg1.addr.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %reg1.addr.i.i, align 1
  %conv13.i.i = zext i8 %19 to i32
  %call14.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv13.i.i, i32 noundef %call.i.i) #10
  br label %tda8083_readreg.exit

tda8083_readreg.exit:                             ; preds = %do.end.i.i, %do.body.i.i.tda8083_readreg.exit_crit_edge, %if.end.tda8083_readreg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg1.addr.i.i) #6
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %21)
  %cmp4.not = icmp eq i8 %21, 5
  br i1 %cmp4.not, label %if.end7, label %tda8083_readreg.exit.error_crit_edge

tda8083_readreg.exit.error_crit_edge:             ; preds = %tda8083_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end7:                                          ; preds = %tda8083_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %frontend = getelementptr inbounds %struct.tda8083_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.tda8083_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %22 = call ptr @memcpy(ptr %ops, ptr @tda8083_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.tda8083_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %23 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  br label %cleanup

error:                                            ; preds = %tda8083_readreg.exit.error_crit_edge, %entry.error_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end7
  %retval.0 = phi ptr [ null, %error ], [ %frontend, %if.end7 ]
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
define internal void @tda8083_release(ptr nocapture noundef readonly %fe) #0 align 64 {
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
define internal i32 @tda8083_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i24 = alloca [2 x i8], align 1
  %msg.i25 = alloca %struct.i2c_msg, align 4
  %buf.i8 = alloca [2 x i8], align 1
  %msg.i9 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %config.i = getelementptr inbounds %struct.tda8083_state, ptr %1, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %tda8083_writereg.exit.for.body_crit_edge, %entry
  %i.040 = phi i32 [ 0, %entry ], [ %inc, %tda8083_writereg.exit.for.body_crit_edge ]
  %conv = trunc i32 %i.040 to i8
  %arrayidx = getelementptr [44 x i8], ptr @tda8083_init_tab, i32 0, i32 %i.040
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %buf.i, align 1
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %5, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %3, align 4
  %9 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %conv.i = zext i8 %12 to i16
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %msg.i, align 4
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  store i16 2, ptr %3, align 4
  %15 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf.i, ptr %buf1.i, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %for.body.tda8083_writereg.exit_crit_edge, label %do.body.i

for.body.tda8083_writereg.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit

do.body.i:                                        ; preds = %for.body
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %do.body.i.tda8083_writereg.exit_crit_edge, label %do.end.i

do.body.i.tda8083_writereg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %i.040, i32 noundef %call.i) #10
  br label %tda8083_writereg.exit

tda8083_writereg.exit:                            ; preds = %do.end.i, %do.body.i.tda8083_writereg.exit_crit_edge, %for.body.tda8083_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, 44
  br i1 %exitcond.not, label %for.end, label %tda8083_writereg.exit.for.body_crit_edge

tda8083_writereg.exit.for.body_crit_edge:         ; preds = %tda8083_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %tda8083_writereg.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i8) #6
  %19 = getelementptr inbounds [2 x i8], ptr %buf.i8, i32 0, i32 1
  %20 = ptrtoint ptr %buf.i8 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %buf.i8, align 1
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 60, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i9) #6
  %22 = getelementptr inbounds i8, ptr %msg.i9, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 196607, ptr %22, align 4
  %24 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %config.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  %conv.i11 = zext i8 %27 to i16
  %28 = ptrtoint ptr %msg.i9 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i11, ptr %msg.i9, align 4
  %flags.i12 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i9, i32 0, i32 1
  %29 = ptrtoint ptr %flags.i12 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %flags.i12, align 2
  %buf1.i14 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i9, i32 0, i32 3
  %30 = ptrtoint ptr %buf1.i14 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %buf.i8, ptr %buf1.i14, align 4
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %call.i15 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %msg.i9, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i15)
  %cmp.not.i16 = icmp eq i32 %call.i15, 1
  br i1 %cmp.not.i16, label %for.end.tda8083_writereg.exit23_crit_edge, label %do.body.i18

for.end.tda8083_writereg.exit23_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit23

do.body.i18:                                      ; preds = %for.end
  %33 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i17 = icmp eq i32 %33, 0
  br i1 %tobool.not.i17, label %do.body.i18.tda8083_writereg.exit23_crit_edge, label %do.end.i20

do.body.i18.tda8083_writereg.exit23_crit_edge:    ; preds = %do.body.i18
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit23

do.end.i20:                                       ; preds = %do.body.i18
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %call.i15) #10
  br label %tda8083_writereg.exit23

tda8083_writereg.exit23:                          ; preds = %do.end.i20, %do.body.i18.tda8083_writereg.exit23_crit_edge, %for.end.tda8083_writereg.exit23_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i9) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i8) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i24) #6
  %34 = getelementptr inbounds [2 x i8], ptr %buf.i24, i32 0, i32 1
  %35 = ptrtoint ptr %buf.i24 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %buf.i24, align 1
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 4, ptr %34, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i25) #6
  %37 = getelementptr inbounds i8, ptr %msg.i25, i32 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 196607, ptr %37, align 4
  %39 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %config.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 1
  %conv.i27 = zext i8 %42 to i16
  %43 = ptrtoint ptr %msg.i25 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv.i27, ptr %msg.i25, align 4
  %flags.i28 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i25, i32 0, i32 1
  %44 = ptrtoint ptr %flags.i28 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %flags.i28, align 2
  %buf1.i30 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i25, i32 0, i32 3
  %45 = ptrtoint ptr %buf1.i30 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %buf.i24, ptr %buf1.i30, align 4
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %call.i31 = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %msg.i25, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i31)
  %cmp.not.i32 = icmp eq i32 %call.i31, 1
  br i1 %cmp.not.i32, label %tda8083_writereg.exit23.tda8083_writereg.exit39_crit_edge, label %do.body.i34

tda8083_writereg.exit23.tda8083_writereg.exit39_crit_edge: ; preds = %tda8083_writereg.exit23
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit39

do.body.i34:                                      ; preds = %tda8083_writereg.exit23
  %48 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i33 = icmp eq i32 %48, 0
  br i1 %tobool.not.i33, label %do.body.i34.tda8083_writereg.exit39_crit_edge, label %do.end.i36

do.body.i34.tda8083_writereg.exit39_crit_edge:    ; preds = %do.body.i34
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit39

do.end.i36:                                       ; preds = %do.body.i34
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %call.i31) #10
  br label %tda8083_writereg.exit39

tda8083_writereg.exit39:                          ; preds = %do.end.i36, %do.body.i34.tda8083_writereg.exit39_crit_edge, %tda8083_writereg.exit23.tda8083_writereg.exit39_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i25) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i24) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda8083_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
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
  store i8 0, ptr %buf.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196607, ptr %5, align 4
  %config.i = getelementptr inbounds %struct.tda8083_state, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
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
  br i1 %cmp.not.i, label %entry.tda8083_writereg.exit_crit_edge, label %do.body.i

entry.tda8083_writereg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit

do.body.i:                                        ; preds = %entry
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %do.body.i.tda8083_writereg.exit_crit_edge, label %do.end.i

do.body.i.tda8083_writereg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %call.i) #10
  br label %tda8083_writereg.exit

tda8083_writereg.exit:                            ; preds = %do.end.i, %do.body.i.tda8083_writereg.exit_crit_edge, %entry.tda8083_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda8083_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i61 = alloca [2 x i8], align 1
  %msg.i62 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf.i65.i = alloca [2 x i8], align 1
  %msg.i66.i = alloca %struct.i2c_msg, align 4
  %buf.i49.i = alloca [2 x i8], align 1
  %msg.i50.i = alloca %struct.i2c_msg, align 4
  %buf.i33.i = alloca [2 x i8], align 1
  %msg.i34.i = alloca %struct.i2c_msg, align 4
  %buf.i17.i = alloca [2 x i8], align 1
  %msg.i18.i = alloca %struct.i2c_msg, align 4
  %buf.i1.i30 = alloca [2 x i8], align 1
  %msg.i2.i31 = alloca %struct.i2c_msg, align 4
  %buf.i.i32 = alloca [2 x i8], align 1
  %msg.i.i33 = alloca %struct.i2c_msg, align 4
  %buf.i1.i = alloca [2 x i8], align 1
  %msg.i2.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %2 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_params, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then:                                          ; preds = %entry
  %call = tail call i32 %3(ptr noundef %fe) #6
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %4 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.then.if.end10_crit_edge, label %if.then6

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 %5(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %fec_inner = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 5
  %6 = ptrtoint ptr %fec_inner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fec_inner, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %land.lhs.true.i [
    i32 9, label %if.then.i
    i32 0, label %if.end10.tda8083_set_fec.exit_crit_edge
  ]

if.end10.tda8083_set_fec.exit_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_set_fec.exit

if.then.i:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #6
  %9 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 7, ptr %buf.i.i, align 1
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %12 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 196607, ptr %12, align 4
  %config.i.i = getelementptr inbounds %struct.tda8083_state, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %config.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  %conv.i.i = zext i8 %17 to i16
  %18 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %flags.i.i, align 2
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %if.then.i.tda8083_writereg.exit.i_crit_edge, label %do.body.i.i

if.then.i.tda8083_writereg.exit.i_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit.i

do.body.i.i:                                      ; preds = %if.then.i
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.tda8083_writereg.exit.i_crit_edge, label %do.end.i.i

do.body.i.i.tda8083_writereg.exit.i_crit_edge:    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 7, i32 noundef %call.i.i) #10
  br label %tda8083_writereg.exit.i

tda8083_writereg.exit.i:                          ; preds = %do.end.i.i, %do.body.i.i.tda8083_writereg.exit.i_crit_edge, %if.then.i.tda8083_writereg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  br label %tda8083_set_fec.exit

land.lhs.true.i:                                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %7)
  %cmp2.i = icmp ult i32 %7, 9
  br i1 %cmp2.i, label %if.then3.i, label %land.lhs.true.i.tda8083_set_fec.exit_crit_edge

land.lhs.true.i.tda8083_set_fec.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_set_fec.exit

if.then3.i:                                       ; preds = %land.lhs.true.i
  %sub.i = sub nuw nsw i32 8, %7
  %shl.i = shl nuw nsw i32 1, %sub.i
  %conv.i = trunc i32 %shl.i to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1.i) #6
  %24 = getelementptr inbounds [2 x i8], ptr %buf.i1.i, i32 0, i32 1
  %25 = ptrtoint ptr %buf.i1.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 7, ptr %buf.i1.i, align 1
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.i, ptr %24, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2.i) #6
  %27 = getelementptr inbounds i8, ptr %msg.i2.i, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 196607, ptr %27, align 4
  %config.i3.i = getelementptr inbounds %struct.tda8083_state, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %config.i3.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %config.i3.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 1
  %conv.i4.i = zext i8 %32 to i16
  %33 = ptrtoint ptr %msg.i2.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i4.i, ptr %msg.i2.i, align 4
  %flags.i5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 1
  %34 = ptrtoint ptr %flags.i5.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags.i5.i, align 2
  %buf1.i7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 3
  %35 = ptrtoint ptr %buf1.i7.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %buf.i1.i, ptr %buf1.i7.i, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %call.i8.i = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %msg.i2.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i8.i)
  %cmp.not.i9.i = icmp eq i32 %call.i8.i, 1
  br i1 %cmp.not.i9.i, label %if.then3.i.tda8083_writereg.exit16.i_crit_edge, label %do.body.i11.i

if.then3.i.tda8083_writereg.exit16.i_crit_edge:   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit16.i

do.body.i11.i:                                    ; preds = %if.then3.i
  %38 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i10.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i10.i, label %do.body.i11.i.tda8083_writereg.exit16.i_crit_edge, label %do.end.i13.i

do.body.i11.i.tda8083_writereg.exit16.i_crit_edge: ; preds = %do.body.i11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit16.i

do.end.i13.i:                                     ; preds = %do.body.i11.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 7, i32 noundef %call.i8.i) #10
  br label %tda8083_writereg.exit16.i

tda8083_writereg.exit16.i:                        ; preds = %do.end.i13.i, %do.body.i11.i.tda8083_writereg.exit16.i_crit_edge, %if.then3.i.tda8083_writereg.exit16.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1.i) #6
  br label %tda8083_set_fec.exit

tda8083_set_fec.exit:                             ; preds = %tda8083_writereg.exit16.i, %land.lhs.true.i.tda8083_set_fec.exit_crit_edge, %tda8083_writereg.exit.i, %if.end10.tda8083_set_fec.exit_crit_edge
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %39 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %symbol_rate, align 4
  %41 = call i32 @llvm.umin.i32(i32 %40, i32 32000000) #6
  %42 = call i32 @llvm.umax.i32(i32 %41, i32 500000) #6
  %.frozen = freeze i32 %42
  %div.i = udiv i32 2048000000, %.frozen
  %43 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 2048000000, %43
  %shl.i34 = shl i32 %rem.i.decomposed, 8
  %shl10.i = shl nuw nsw i32 %div.i, 8
  %.frozen77 = freeze i32 %42
  %div11.i = udiv i32 %shl.i34, %.frozen77
  %add.i = add nuw nsw i32 %div11.i, %shl10.i
  %44 = mul i32 %div11.i, %.frozen77
  %rem12.i.decomposed = sub i32 %shl.i34, %44
  %shl13.i = shl i32 %rem12.i.decomposed, 8
  %shl14.i = shl nuw nsw i32 %add.i, 8
  %div15.i = udiv i32 %shl13.i, %42
  %add16.i = add nuw nsw i32 %shl14.i, %div15.i
  %45 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i, label %tda8083_set_fec.exit.do.end22.i_crit_edge, label %do.end.i

tda8083_set_fec.exit.do.end22.i_crit_edge:        ; preds = %tda8083_set_fec.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22.i

do.end.i:                                         ; preds = %tda8083_set_fec.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %add16.i) #10
  br label %do.end22.i

do.end22.i:                                       ; preds = %do.end.i, %tda8083_set_fec.exit.do.end22.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000000, i32 %42)
  %cmp7.i = icmp ult i32 %42, 16000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000000, i32 %42)
  %cmp4.i = icmp ult i32 %42, 24000000
  %spec.store.select34.i = select i1 %cmp4.i, i8 2, i8 0
  %spec.store.select36.i = select i1 %cmp7.i, i8 3, i8 %spec.store.select34.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i32) #6
  %46 = getelementptr inbounds [2 x i8], ptr %buf.i.i32, i32 0, i32 1
  %47 = ptrtoint ptr %buf.i.i32 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 5, ptr %buf.i.i32, align 1
  %48 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %spec.store.select36.i, ptr %46, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i33) #6
  %49 = getelementptr inbounds i8, ptr %msg.i.i33, i32 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 196607, ptr %49, align 4
  %config.i.i35 = getelementptr inbounds %struct.tda8083_state, ptr %1, i32 0, i32 1
  %51 = ptrtoint ptr %config.i.i35 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %config.i.i35, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %52, align 1
  %conv.i.i36 = zext i8 %54 to i16
  %55 = ptrtoint ptr %msg.i.i33 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i.i36, ptr %msg.i.i33, align 4
  %flags.i.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i33, i32 0, i32 1
  %56 = ptrtoint ptr %flags.i.i37 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %flags.i.i37, align 2
  %buf1.i.i38 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i33, i32 0, i32 3
  %57 = ptrtoint ptr %buf1.i.i38 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %buf.i.i32, ptr %buf1.i.i38, align 4
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %call.i.i39 = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %msg.i.i33, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i39)
  %cmp.not.i.i40 = icmp eq i32 %call.i.i39, 1
  br i1 %cmp.not.i.i40, label %do.end22.i.tda8083_writereg.exit.i51_crit_edge, label %do.body.i.i42

do.end22.i.tda8083_writereg.exit.i51_crit_edge:   ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit.i51

do.body.i.i42:                                    ; preds = %do.end22.i
  %60 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i.i41 = icmp eq i32 %60, 0
  br i1 %tobool.not.i.i41, label %do.body.i.i42.tda8083_writereg.exit.i51_crit_edge, label %do.end.i.i44

do.body.i.i42.tda8083_writereg.exit.i51_crit_edge: ; preds = %do.body.i.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit.i51

do.end.i.i44:                                     ; preds = %do.body.i.i42
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i.i43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 5, i32 noundef %call.i.i39) #10
  br label %tda8083_writereg.exit.i51

tda8083_writereg.exit.i51:                        ; preds = %do.end.i.i44, %do.body.i.i42.tda8083_writereg.exit.i51_crit_edge, %do.end22.i.tda8083_writereg.exit.i51_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i33) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i32) #6
  %shr.i = lshr i32 %add16.i, 16
  %conv.i45 = trunc i32 %shr.i to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1.i30) #6
  %61 = getelementptr inbounds [2 x i8], ptr %buf.i1.i30, i32 0, i32 1
  %62 = ptrtoint ptr %buf.i1.i30 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 2, ptr %buf.i1.i30, align 1
  %63 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv.i45, ptr %61, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2.i31) #6
  %64 = getelementptr inbounds i8, ptr %msg.i2.i31, i32 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 196607, ptr %64, align 4
  %66 = ptrtoint ptr %config.i.i35 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %config.i.i35, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %67, align 1
  %conv.i4.i46 = zext i8 %69 to i16
  %70 = ptrtoint ptr %msg.i2.i31 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv.i4.i46, ptr %msg.i2.i31, align 4
  %flags.i5.i47 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i31, i32 0, i32 1
  %71 = ptrtoint ptr %flags.i5.i47 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 0, ptr %flags.i5.i47, align 2
  %buf1.i7.i48 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i31, i32 0, i32 3
  %72 = ptrtoint ptr %buf1.i7.i48 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %buf.i1.i30, ptr %buf1.i7.i48, align 4
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 4
  %call.i8.i49 = call i32 @i2c_transfer(ptr noundef %74, ptr noundef nonnull %msg.i2.i31, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i8.i49)
  %cmp.not.i9.i50 = icmp eq i32 %call.i8.i49, 1
  br i1 %cmp.not.i9.i50, label %tda8083_writereg.exit.i51.tda8083_writereg.exit16.i56_crit_edge, label %do.body.i11.i53

tda8083_writereg.exit.i51.tda8083_writereg.exit16.i56_crit_edge: ; preds = %tda8083_writereg.exit.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit16.i56

do.body.i11.i53:                                  ; preds = %tda8083_writereg.exit.i51
  %75 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i10.i52 = icmp eq i32 %75, 0
  br i1 %tobool.not.i10.i52, label %do.body.i11.i53.tda8083_writereg.exit16.i56_crit_edge, label %do.end.i13.i55

do.body.i11.i53.tda8083_writereg.exit16.i56_crit_edge: ; preds = %do.body.i11.i53
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit16.i56

do.end.i13.i55:                                   ; preds = %do.body.i11.i53
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i12.i54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 2, i32 noundef %call.i8.i49) #10
  br label %tda8083_writereg.exit16.i56

tda8083_writereg.exit16.i56:                      ; preds = %do.end.i13.i55, %do.body.i11.i53.tda8083_writereg.exit16.i56_crit_edge, %tda8083_writereg.exit.i51.tda8083_writereg.exit16.i56_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2.i31) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1.i30) #6
  %shr25.i = lshr i32 %add16.i, 8
  %conv27.i = trunc i32 %shr25.i to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i17.i) #6
  %76 = getelementptr inbounds [2 x i8], ptr %buf.i17.i, i32 0, i32 1
  %77 = ptrtoint ptr %buf.i17.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 3, ptr %buf.i17.i, align 1
  %78 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv27.i, ptr %76, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i18.i) #6
  %79 = getelementptr inbounds i8, ptr %msg.i18.i, i32 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 196607, ptr %79, align 4
  %81 = ptrtoint ptr %config.i.i35 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %config.i.i35, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %82, align 1
  %conv.i20.i = zext i8 %84 to i16
  %85 = ptrtoint ptr %msg.i18.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv.i20.i, ptr %msg.i18.i, align 4
  %flags.i21.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18.i, i32 0, i32 1
  %86 = ptrtoint ptr %flags.i21.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 0, ptr %flags.i21.i, align 2
  %buf1.i23.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18.i, i32 0, i32 3
  %87 = ptrtoint ptr %buf1.i23.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %buf.i17.i, ptr %buf1.i23.i, align 4
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %1, align 4
  %call.i24.i = call i32 @i2c_transfer(ptr noundef %89, ptr noundef nonnull %msg.i18.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i24.i)
  %cmp.not.i25.i = icmp eq i32 %call.i24.i, 1
  br i1 %cmp.not.i25.i, label %tda8083_writereg.exit16.i56.tda8083_writereg.exit32.i_crit_edge, label %do.body.i27.i

tda8083_writereg.exit16.i56.tda8083_writereg.exit32.i_crit_edge: ; preds = %tda8083_writereg.exit16.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit32.i

do.body.i27.i:                                    ; preds = %tda8083_writereg.exit16.i56
  %90 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not.i26.i = icmp eq i32 %90, 0
  br i1 %tobool.not.i26.i, label %do.body.i27.i.tda8083_writereg.exit32.i_crit_edge, label %do.end.i29.i

do.body.i27.i.tda8083_writereg.exit32.i_crit_edge: ; preds = %do.body.i27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit32.i

do.end.i29.i:                                     ; preds = %do.body.i27.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 3, i32 noundef %call.i24.i) #10
  br label %tda8083_writereg.exit32.i

tda8083_writereg.exit32.i:                        ; preds = %do.end.i29.i, %do.body.i27.i.tda8083_writereg.exit32.i_crit_edge, %tda8083_writereg.exit16.i56.tda8083_writereg.exit32.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i18.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i17.i) #6
  %conv30.i = trunc i32 %add16.i to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i33.i) #6
  %91 = getelementptr inbounds [2 x i8], ptr %buf.i33.i, i32 0, i32 1
  %92 = ptrtoint ptr %buf.i33.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 4, ptr %buf.i33.i, align 1
  %93 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv30.i, ptr %91, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i34.i) #6
  %94 = getelementptr inbounds i8, ptr %msg.i34.i, i32 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 196607, ptr %94, align 4
  %96 = ptrtoint ptr %config.i.i35 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %config.i.i35, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %97, align 1
  %conv.i36.i = zext i8 %99 to i16
  %100 = ptrtoint ptr %msg.i34.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %conv.i36.i, ptr %msg.i34.i, align 4
  %flags.i37.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34.i, i32 0, i32 1
  %101 = ptrtoint ptr %flags.i37.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 0, ptr %flags.i37.i, align 2
  %buf1.i39.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34.i, i32 0, i32 3
  %102 = ptrtoint ptr %buf1.i39.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %buf.i33.i, ptr %buf1.i39.i, align 4
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %1, align 4
  %call.i40.i = call i32 @i2c_transfer(ptr noundef %104, ptr noundef nonnull %msg.i34.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i40.i)
  %cmp.not.i41.i = icmp eq i32 %call.i40.i, 1
  br i1 %cmp.not.i41.i, label %tda8083_writereg.exit32.i.tda8083_writereg.exit48.i_crit_edge, label %do.body.i43.i

tda8083_writereg.exit32.i.tda8083_writereg.exit48.i_crit_edge: ; preds = %tda8083_writereg.exit32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit48.i

do.body.i43.i:                                    ; preds = %tda8083_writereg.exit32.i
  %105 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool.not.i42.i = icmp eq i32 %105, 0
  br i1 %tobool.not.i42.i, label %do.body.i43.i.tda8083_writereg.exit48.i_crit_edge, label %do.end.i45.i

do.body.i43.i.tda8083_writereg.exit48.i_crit_edge: ; preds = %do.body.i43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit48.i

do.end.i45.i:                                     ; preds = %do.body.i43.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i44.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 4, i32 noundef %call.i40.i) #10
  br label %tda8083_writereg.exit48.i

tda8083_writereg.exit48.i:                        ; preds = %do.end.i45.i, %do.body.i43.i.tda8083_writereg.exit48.i_crit_edge, %tda8083_writereg.exit32.i.tda8083_writereg.exit48.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i34.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i33.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i49.i) #6
  %106 = getelementptr inbounds [2 x i8], ptr %buf.i49.i, i32 0, i32 1
  %107 = ptrtoint ptr %buf.i49.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %buf.i49.i, align 1
  %108 = ptrtoint ptr %106 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 60, ptr %106, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i50.i) #6
  %109 = getelementptr inbounds i8, ptr %msg.i50.i, i32 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 196607, ptr %109, align 4
  %111 = ptrtoint ptr %config.i.i35 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %config.i.i35, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %112, align 1
  %conv.i52.i = zext i8 %114 to i16
  %115 = ptrtoint ptr %msg.i50.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %conv.i52.i, ptr %msg.i50.i, align 4
  %flags.i53.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50.i, i32 0, i32 1
  %116 = ptrtoint ptr %flags.i53.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 0, ptr %flags.i53.i, align 2
  %buf1.i55.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50.i, i32 0, i32 3
  %117 = ptrtoint ptr %buf1.i55.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %buf.i49.i, ptr %buf1.i55.i, align 4
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %1, align 4
  %call.i56.i = call i32 @i2c_transfer(ptr noundef %119, ptr noundef nonnull %msg.i50.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i56.i)
  %cmp.not.i57.i = icmp eq i32 %call.i56.i, 1
  br i1 %cmp.not.i57.i, label %tda8083_writereg.exit48.i.tda8083_writereg.exit64.i_crit_edge, label %do.body.i59.i

tda8083_writereg.exit48.i.tda8083_writereg.exit64.i_crit_edge: ; preds = %tda8083_writereg.exit48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit64.i

do.body.i59.i:                                    ; preds = %tda8083_writereg.exit48.i
  %120 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.not.i58.i = icmp eq i32 %120, 0
  br i1 %tobool.not.i58.i, label %do.body.i59.i.tda8083_writereg.exit64.i_crit_edge, label %do.end.i61.i

do.body.i59.i.tda8083_writereg.exit64.i_crit_edge: ; preds = %do.body.i59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit64.i

do.end.i61.i:                                     ; preds = %do.body.i59.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i60.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %call.i56.i) #10
  br label %tda8083_writereg.exit64.i

tda8083_writereg.exit64.i:                        ; preds = %do.end.i61.i, %do.body.i59.i.tda8083_writereg.exit64.i_crit_edge, %tda8083_writereg.exit48.i.tda8083_writereg.exit64.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i50.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i49.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i65.i) #6
  %121 = getelementptr inbounds [2 x i8], ptr %buf.i65.i, i32 0, i32 1
  %122 = ptrtoint ptr %buf.i65.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %buf.i65.i, align 1
  %123 = ptrtoint ptr %121 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 4, ptr %121, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i66.i) #6
  %124 = getelementptr inbounds i8, ptr %msg.i66.i, i32 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 196607, ptr %124, align 4
  %126 = ptrtoint ptr %config.i.i35 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %config.i.i35, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %127, align 1
  %conv.i68.i = zext i8 %129 to i16
  %130 = ptrtoint ptr %msg.i66.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %conv.i68.i, ptr %msg.i66.i, align 4
  %flags.i69.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i66.i, i32 0, i32 1
  %131 = ptrtoint ptr %flags.i69.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 0, ptr %flags.i69.i, align 2
  %buf1.i71.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i66.i, i32 0, i32 3
  %132 = ptrtoint ptr %buf1.i71.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %buf.i65.i, ptr %buf1.i71.i, align 4
  %133 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %1, align 4
  %call.i72.i = call i32 @i2c_transfer(ptr noundef %134, ptr noundef nonnull %msg.i66.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i72.i)
  %cmp.not.i73.i = icmp eq i32 %call.i72.i, 1
  br i1 %cmp.not.i73.i, label %tda8083_writereg.exit64.i.tda8083_set_symbolrate.exit_crit_edge, label %do.body.i75.i

tda8083_writereg.exit64.i.tda8083_set_symbolrate.exit_crit_edge: ; preds = %tda8083_writereg.exit64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_set_symbolrate.exit

do.body.i75.i:                                    ; preds = %tda8083_writereg.exit64.i
  %135 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool.not.i74.i = icmp eq i32 %135, 0
  br i1 %tobool.not.i74.i, label %do.body.i75.i.tda8083_set_symbolrate.exit_crit_edge, label %do.end.i77.i

do.body.i75.i.tda8083_set_symbolrate.exit_crit_edge: ; preds = %do.body.i75.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_set_symbolrate.exit

do.end.i77.i:                                     ; preds = %do.body.i75.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i76.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %call.i72.i) #10
  br label %tda8083_set_symbolrate.exit

tda8083_set_symbolrate.exit:                      ; preds = %do.end.i77.i, %do.body.i75.i.tda8083_set_symbolrate.exit_crit_edge, %tda8083_writereg.exit64.i.tda8083_set_symbolrate.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i66.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i65.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %136 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %137 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %buf.i, align 1
  %138 = ptrtoint ptr %136 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 60, ptr %136, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %139 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 196607, ptr %139, align 4
  %141 = ptrtoint ptr %config.i.i35 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %config.i.i35, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %142, align 1
  %conv.i57 = zext i8 %144 to i16
  %145 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %conv.i57, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %146 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %147 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %buf.i, ptr %buf1.i, align 4
  %148 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %1, align 4
  %call.i58 = call i32 @i2c_transfer(ptr noundef %149, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i58)
  %cmp.not.i = icmp eq i32 %call.i58, 1
  br i1 %cmp.not.i, label %tda8083_set_symbolrate.exit.tda8083_writereg.exit_crit_edge, label %do.body.i

tda8083_set_symbolrate.exit.tda8083_writereg.exit_crit_edge: ; preds = %tda8083_set_symbolrate.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit

do.body.i:                                        ; preds = %tda8083_set_symbolrate.exit
  %150 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool.not.i59 = icmp eq i32 %150, 0
  br i1 %tobool.not.i59, label %do.body.i.tda8083_writereg.exit_crit_edge, label %do.end.i60

do.body.i.tda8083_writereg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit

do.end.i60:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %call.i58) #10
  br label %tda8083_writereg.exit

tda8083_writereg.exit:                            ; preds = %do.end.i60, %do.body.i.tda8083_writereg.exit_crit_edge, %tda8083_set_symbolrate.exit.tda8083_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i61) #6
  %151 = getelementptr inbounds [2 x i8], ptr %buf.i61, i32 0, i32 1
  %152 = ptrtoint ptr %buf.i61 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %buf.i61, align 1
  %153 = ptrtoint ptr %151 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 4, ptr %151, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i62) #6
  %154 = getelementptr inbounds i8, ptr %msg.i62, i32 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 196607, ptr %154, align 4
  %156 = ptrtoint ptr %config.i.i35 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %config.i.i35, align 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %157, align 1
  %conv.i64 = zext i8 %159 to i16
  %160 = ptrtoint ptr %msg.i62 to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %conv.i64, ptr %msg.i62, align 4
  %flags.i65 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62, i32 0, i32 1
  %161 = ptrtoint ptr %flags.i65 to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 0, ptr %flags.i65, align 2
  %buf1.i67 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62, i32 0, i32 3
  %162 = ptrtoint ptr %buf1.i67 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %buf.i61, ptr %buf1.i67, align 4
  %163 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %1, align 4
  %call.i68 = call i32 @i2c_transfer(ptr noundef %164, ptr noundef nonnull %msg.i62, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i68)
  %cmp.not.i69 = icmp eq i32 %call.i68, 1
  br i1 %cmp.not.i69, label %tda8083_writereg.exit.tda8083_writereg.exit76_crit_edge, label %do.body.i71

tda8083_writereg.exit.tda8083_writereg.exit76_crit_edge: ; preds = %tda8083_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit76

do.body.i71:                                      ; preds = %tda8083_writereg.exit
  %165 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool.not.i70 = icmp eq i32 %165, 0
  br i1 %tobool.not.i70, label %do.body.i71.tda8083_writereg.exit76_crit_edge, label %do.end.i73

do.body.i71.tda8083_writereg.exit76_crit_edge:    ; preds = %do.body.i71
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit76

do.end.i73:                                       ; preds = %do.body.i71
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %call.i68) #10
  br label %tda8083_writereg.exit76

tda8083_writereg.exit76:                          ; preds = %do.end.i73, %do.body.i71.tda8083_writereg.exit76_crit_edge, %tda8083_writereg.exit.tda8083_writereg.exit76_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i62) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i61) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda8083_get_frontend(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %p) #0 align 64 {
entry:
  %reg1.addr.i.i.i = alloca i8, align 1
  %msg.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %val.i.i = alloca i8, align 1
  %reg1.addr.i.i = alloca i8, align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #6
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val.i, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg1.addr.i.i) #6
  %3 = ptrtoint ptr %reg1.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 14, ptr %reg1.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i.i = getelementptr inbounds %struct.tda8083_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv.i.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i.i, align 2
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %4, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %reg1.addr.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %14 = load i8, ptr %7, align 1
  %conv5.i.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv5.i.i, ptr %arrayinit.element.i.i, align 4
  %flags6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags6.i.i, align 2
  %len7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %17 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len7.i.i, align 4
  %buf9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf9.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %val.i, ptr %buf9.i.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %entry.tda8083_readreg.exit_crit_edge, label %do.body.i.i

entry.tda8083_readreg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_readreg.exit

do.body.i.i:                                      ; preds = %entry
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.tda8083_readreg.exit_crit_edge, label %do.end.i.i

do.body.i.i.tda8083_readreg.exit_crit_edge:       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_readreg.exit

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %reg1.addr.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %reg1.addr.i.i, align 1
  %conv13.i.i = zext i8 %23 to i32
  %call14.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv13.i.i, i32 noundef %call.i.i) #10
  br label %tda8083_readreg.exit

tda8083_readreg.exit:                             ; preds = %do.end.i.i, %do.body.i.i.tda8083_readreg.exit_crit_edge, %entry.tda8083_readreg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg1.addr.i.i) #6
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  %call.lobit = lshr i8 %25, 7
  %26 = zext i8 %call.lobit to i32
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 4
  %27 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %inversion, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #6
  %28 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %val.i.i, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg1.addr.i.i.i) #6
  %29 = ptrtoint ptr %reg1.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 14, ptr %reg1.addr.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i.i) #6
  %30 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %31 = call ptr @memset(ptr %30, i32 255, i32 16)
  %32 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %config.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 1
  %conv.i.i.i = zext i8 %35 to i16
  %36 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i.i.i, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %flags.i.i.i, align 2
  %38 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %30, align 4
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %39 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %reg1.addr.i.i.i, ptr %buf.i.i.i, align 4
  %arrayinit.element.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 1
  %40 = load i8, ptr %33, align 1
  %conv5.i.i.i = zext i8 %40 to i16
  %41 = ptrtoint ptr %arrayinit.element.i.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv5.i.i.i, ptr %arrayinit.element.i.i.i, align 4
  %flags6.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 1, i32 1
  %42 = ptrtoint ptr %flags6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %flags6.i.i.i, align 2
  %len7.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 1, i32 2
  %43 = ptrtoint ptr %len7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 1, ptr %len7.i.i.i, align 4
  %buf9.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 1, i32 3
  %44 = ptrtoint ptr %buf9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %val.i.i, ptr %buf9.i.i.i, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %msg.i.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp.not.i.i.i, label %tda8083_readreg.exit.tda8083_get_fec.exit_crit_edge, label %do.body.i.i.i

tda8083_readreg.exit.tda8083_get_fec.exit_crit_edge: ; preds = %tda8083_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_get_fec.exit

do.body.i.i.i:                                    ; preds = %tda8083_readreg.exit
  %47 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i.i.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.tda8083_get_fec.exit_crit_edge, label %do.end.i.i.i

do.body.i.i.i.tda8083_get_fec.exit_crit_edge:     ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_get_fec.exit

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %reg1.addr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %reg1.addr.i.i.i, align 1
  %conv13.i.i.i = zext i8 %49 to i32
  %call14.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv13.i.i.i, i32 noundef %call.i.i.i) #10
  br label %tda8083_get_fec.exit

tda8083_get_fec.exit:                             ; preds = %do.end.i.i.i, %do.body.i.i.i.tda8083_get_fec.exit_crit_edge, %tda8083_readreg.exit.tda8083_get_fec.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg1.addr.i.i.i) #6
  %50 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %val.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #6
  %52 = and i8 %51, 7
  %idxprom.i = zext i8 %52 to i32
  %arrayidx.i = getelementptr [8 x i32], ptr @tda8083_get_fec.fec_tab, i32 0, i32 %idxprom.i
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i, align 4
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 5
  %55 = ptrtoint ptr %fec_inner to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %fec_inner, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda8083_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %reg1.addr.i.i45 = alloca i8, align 1
  %msg.i.i46 = alloca [2 x %struct.i2c_msg], align 4
  %val.i47 = alloca i8, align 1
  %reg1.addr.i.i = alloca i8, align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #6
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val.i, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg1.addr.i.i) #6
  %3 = ptrtoint ptr %reg1.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %reg1.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i.i = getelementptr inbounds %struct.tda8083_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv.i.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i.i, align 2
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %4, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %reg1.addr.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %14 = load i8, ptr %7, align 1
  %conv5.i.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv5.i.i, ptr %arrayinit.element.i.i, align 4
  %flags6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags6.i.i, align 2
  %len7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %17 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len7.i.i, align 4
  %buf9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf9.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %val.i, ptr %buf9.i.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %entry.tda8083_readreg.exit_crit_edge, label %do.body.i.i

entry.tda8083_readreg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_readreg.exit

do.body.i.i:                                      ; preds = %entry
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.tda8083_readreg.exit_crit_edge, label %do.end.i.i

do.body.i.i.tda8083_readreg.exit_crit_edge:       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_readreg.exit

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %reg1.addr.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %reg1.addr.i.i, align 1
  %conv13.i.i = zext i8 %23 to i32
  %call14.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv13.i.i, i32 noundef %call.i.i) #10
  br label %tda8083_readreg.exit

tda8083_readreg.exit:                             ; preds = %do.end.i.i, %do.body.i.i.tda8083_readreg.exit_crit_edge, %entry.tda8083_readreg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg1.addr.i.i) #6
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i47) #6
  %26 = ptrtoint ptr %val.i47 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %val.i47, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg1.addr.i.i45) #6
  %27 = ptrtoint ptr %reg1.addr.i.i45 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 2, ptr %reg1.addr.i.i45, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i46) #6
  %28 = getelementptr inbounds i8, ptr %msg.i.i46, i32 4
  %29 = call ptr @memset(ptr %28, i32 255, i32 16)
  %30 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %conv.i.i49 = zext i8 %33 to i16
  %34 = ptrtoint ptr %msg.i.i46 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i.i49, ptr %msg.i.i46, align 4
  %flags.i.i50 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i46, i32 0, i32 1
  %35 = ptrtoint ptr %flags.i.i50 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags.i.i50, align 2
  %36 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %28, align 4
  %buf.i.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i46, i32 0, i32 3
  %37 = ptrtoint ptr %buf.i.i51 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %reg1.addr.i.i45, ptr %buf.i.i51, align 4
  %arrayinit.element.i.i52 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i46, i32 1
  %38 = load i8, ptr %31, align 1
  %conv5.i.i53 = zext i8 %38 to i16
  %39 = ptrtoint ptr %arrayinit.element.i.i52 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv5.i.i53, ptr %arrayinit.element.i.i52, align 4
  %flags6.i.i54 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i46, i32 1, i32 1
  %40 = ptrtoint ptr %flags6.i.i54 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %flags6.i.i54, align 2
  %len7.i.i55 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i46, i32 1, i32 2
  %41 = ptrtoint ptr %len7.i.i55 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %len7.i.i55, align 4
  %buf9.i.i56 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i46, i32 1, i32 3
  %42 = ptrtoint ptr %buf9.i.i56 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %val.i47, ptr %buf9.i.i56, align 4
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %call.i.i57 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %msg.i.i46, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i57)
  %cmp.not.i.i58 = icmp eq i32 %call.i.i57, 2
  br i1 %cmp.not.i.i58, label %tda8083_readreg.exit.tda8083_readreg.exit64_crit_edge, label %do.body.i.i60

tda8083_readreg.exit.tda8083_readreg.exit64_crit_edge: ; preds = %tda8083_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_readreg.exit64

do.body.i.i60:                                    ; preds = %tda8083_readreg.exit
  %45 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i.i59 = icmp eq i32 %45, 0
  br i1 %tobool.not.i.i59, label %do.body.i.i60.tda8083_readreg.exit64_crit_edge, label %do.end.i.i63

do.body.i.i60.tda8083_readreg.exit64_crit_edge:   ; preds = %do.body.i.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_readreg.exit64

do.end.i.i63:                                     ; preds = %do.body.i.i60
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %reg1.addr.i.i45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %reg1.addr.i.i45, align 1
  %conv13.i.i61 = zext i8 %47 to i32
  %call14.i.i62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv13.i.i61, i32 noundef %call.i.i57) #10
  br label %tda8083_readreg.exit64

tda8083_readreg.exit64:                           ; preds = %do.end.i.i63, %do.body.i.i60.tda8083_readreg.exit64_crit_edge, %tda8083_readreg.exit.tda8083_readreg.exit64_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i46) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg1.addr.i.i45) #6
  %48 = ptrtoint ptr %val.i47 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %val.i47, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i47) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -11, i8 %25)
  %cmp = icmp ult i8 %25, -11
  %spec.select = zext i1 %cmp to i32
  %conv5 = zext i8 %49 to i32
  %and = shl nuw nsw i32 %conv5, 1
  %50 = and i32 %and, 2
  %51 = or i32 %50, %spec.select
  %52 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %status, align 4
  %and10 = and i32 %conv5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %tda8083_readreg.exit64.if.end14_crit_edge, label %if.then12

tda8083_readreg.exit64.if.end14_crit_edge:        ; preds = %tda8083_readreg.exit64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then12:                                        ; preds = %tda8083_readreg.exit64
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %status, align 4
  %or13 = or i32 %54, 4
  store i32 %or13, ptr %status, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %tda8083_readreg.exit64.if.end14_crit_edge
  %and16 = and i32 %conv5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end14.if.end20_crit_edge, label %if.then18

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %status, align 4
  %or19 = or i32 %56, 8
  store i32 %or19, ptr %status, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end14.if.end20_crit_edge
  %and22 = and i32 %conv5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.end26_crit_edge, label %if.then24

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %status, align 4
  %or25 = or i32 %58, 32
  store i32 %or25, ptr %status, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end20.if.end26_crit_edge
  %and28 = and i32 %conv5, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %and28)
  %cmp29 = icmp eq i32 %and28, 31
  br i1 %cmp29, label %if.then31, label %if.end26.if.end33_crit_edge

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %status, align 4
  %or32 = or i32 %60, 16
  store i32 %or32, ptr %status, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end26.if.end33_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda8083_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  %reg1.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #6
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 1, !annotation !48
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !48
  %5 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg1.addr.i)
  %7 = ptrtoint ptr %reg1.addr.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 11, ptr %reg1.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.tda8083_state, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %conv.i = zext i8 %13 to i16
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %8, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %reg1.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %18 = load i8, ptr %11, align 1
  %conv5.i = zext i8 %18 to i16
  %19 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %20 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %21 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 3, ptr %len7.i, align 4
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %22 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %buf, ptr %buf9.i, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end, label %do.body.i

do.body.i:                                        ; preds = %entry
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %do.body.i.tda8083_readregs.exit.thread_crit_edge, label %do.end.i

do.body.i.tda8083_readregs.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_readregs.exit.thread

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %reg1.addr.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %reg1.addr.i, align 1
  %conv13.i = zext i8 %27 to i32
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv13.i, i32 noundef %call.i) #10
  br label %tda8083_readregs.exit.thread

tda8083_readregs.exit.thread:                     ; preds = %do.end.i, %do.body.i.tda8083_readregs.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg1.addr.i)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg1.addr.i)
  %28 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %buf, align 1
  %30 = and i8 %29, 31
  %and = zext i8 %30 to i32
  %shl = shl nuw nsw i32 %and, 16
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %3, align 1
  %conv2 = zext i8 %32 to i32
  %shl3 = shl nuw nsw i32 %conv2, 8
  %or = or i32 %shl, %shl3
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %5, align 1
  %conv5 = zext i8 %34 to i32
  %or6 = or i32 %or, %conv5
  %35 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or6, ptr %ber, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %tda8083_readregs.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %tda8083_readregs.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda8083_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
  %reg1.addr.i.i = alloca i8, align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #6
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val.i, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg1.addr.i.i) #6
  %3 = ptrtoint ptr %reg1.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %reg1.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i.i = getelementptr inbounds %struct.tda8083_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv.i.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i.i, align 2
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %4, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %reg1.addr.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %14 = load i8, ptr %7, align 1
  %conv5.i.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv5.i.i, ptr %arrayinit.element.i.i, align 4
  %flags6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags6.i.i, align 2
  %len7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %17 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len7.i.i, align 4
  %buf9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf9.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %val.i, ptr %buf9.i.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %entry.tda8083_readreg.exit_crit_edge, label %do.body.i.i

entry.tda8083_readreg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_readreg.exit

do.body.i.i:                                      ; preds = %entry
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.tda8083_readreg.exit_crit_edge, label %do.end.i.i

do.body.i.i.tda8083_readreg.exit_crit_edge:       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_readreg.exit

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %reg1.addr.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %reg1.addr.i.i, align 1
  %conv13.i.i = zext i8 %23 to i32
  %call14.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv13.i.i, i32 noundef %call.i.i) #10
  br label %tda8083_readreg.exit

tda8083_readreg.exit:                             ; preds = %do.end.i.i, %do.body.i.i.tda8083_readreg.exit_crit_edge, %entry.tda8083_readreg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg1.addr.i.i) #6
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  %neg = xor i8 %25, -1
  %conv2 = zext i8 %neg to i16
  %or = mul nuw i16 %conv2, 257
  %26 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %or, ptr %strength, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda8083_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
  %reg1.addr.i.i = alloca i8, align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #6
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val.i, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg1.addr.i.i) #6
  %3 = ptrtoint ptr %reg1.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 8, ptr %reg1.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i.i = getelementptr inbounds %struct.tda8083_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv.i.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i.i, align 2
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %4, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %reg1.addr.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %14 = load i8, ptr %7, align 1
  %conv5.i.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv5.i.i, ptr %arrayinit.element.i.i, align 4
  %flags6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags6.i.i, align 2
  %len7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %17 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len7.i.i, align 4
  %buf9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf9.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %val.i, ptr %buf9.i.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %entry.tda8083_readreg.exit_crit_edge, label %do.body.i.i

entry.tda8083_readreg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_readreg.exit

do.body.i.i:                                      ; preds = %entry
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.tda8083_readreg.exit_crit_edge, label %do.end.i.i

do.body.i.i.tda8083_readreg.exit_crit_edge:       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_readreg.exit

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %reg1.addr.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %reg1.addr.i.i, align 1
  %conv13.i.i = zext i8 %23 to i32
  %call14.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv13.i.i, i32 noundef %call.i.i) #10
  br label %tda8083_readreg.exit

tda8083_readreg.exit:                             ; preds = %do.end.i.i, %do.body.i.i.tda8083_readreg.exit_crit_edge, %entry.tda8083_readreg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg1.addr.i.i) #6
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  %conv = zext i8 %25 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %or = or i32 %shl, %conv
  %conv2 = trunc i32 %or to i16
  %26 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv2, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda8083_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #0 align 64 {
entry:
  %reg1.addr.i.i = alloca i8, align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #6
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val.i, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg1.addr.i.i) #6
  %3 = ptrtoint ptr %reg1.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 15, ptr %reg1.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i.i = getelementptr inbounds %struct.tda8083_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv.i.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i.i, align 2
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %4, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %reg1.addr.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %14 = load i8, ptr %7, align 1
  %conv5.i.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv5.i.i, ptr %arrayinit.element.i.i, align 4
  %flags6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags6.i.i, align 2
  %len7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %17 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len7.i.i, align 4
  %buf9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf9.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %val.i, ptr %buf9.i.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %entry.tda8083_readreg.exit_crit_edge, label %do.body.i.i

entry.tda8083_readreg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_readreg.exit

do.body.i.i:                                      ; preds = %entry
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.tda8083_readreg.exit_crit_edge, label %do.end.i.i

do.body.i.i.tda8083_readreg.exit_crit_edge:       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_readreg.exit

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %reg1.addr.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %reg1.addr.i.i, align 1
  %conv13.i.i = zext i8 %23 to i32
  %call14.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv13.i.i, i32 noundef %call.i.i) #10
  br label %tda8083_readreg.exit

tda8083_readreg.exit:                             ; preds = %do.end.i.i, %do.body.i.i.tda8083_readreg.exit_crit_edge, %entry.tda8083_readreg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg1.addr.i.i) #6
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  %conv = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %25)
  %cmp = icmp eq i8 %25, -1
  %spec.select = select i1 %cmp, i32 -1, i32 %conv
  %26 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %spec.select, ptr %ucblocks, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda8083_send_diseqc_msg(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %m) #0 align 64 {
entry:
  %buf.i38 = alloca [2 x i8], align 1
  %msg.i39 = alloca %struct.i2c_msg, align 4
  %buf.i22 = alloca [2 x i8], align 1
  %msg.i23 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %m, i32 0, i32 1
  %2 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msg_len, align 1
  %sub = add i8 %3, -3
  %or = or i8 %sub, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %4 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 41, ptr %buf.i, align 1
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %or, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 196607, ptr %7, align 4
  %config.i = getelementptr inbounds %struct.tda8083_state, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %conv.i = zext i8 %12 to i16
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf.i, ptr %buf1.i, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %entry.tda8083_writereg.exit_crit_edge, label %do.body.i

entry.tda8083_writereg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit

do.body.i:                                        ; preds = %entry
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %do.body.i.tda8083_writereg.exit_crit_edge, label %do.end.i

do.body.i.tda8083_writereg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 41, i32 noundef %call.i) #10
  br label %tda8083_writereg.exit

tda8083_writereg.exit:                            ; preds = %do.end.i, %do.body.i.tda8083_writereg.exit_crit_edge, %entry.tda8083_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  %19 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %msg_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp55.not = icmp eq i8 %20, 0
  br i1 %cmp55.not, label %tda8083_writereg.exit.for.end_crit_edge, label %for.body.lr.ph

tda8083_writereg.exit.for.end_crit_edge:          ; preds = %tda8083_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %tda8083_writereg.exit
  %21 = getelementptr inbounds [2 x i8], ptr %buf.i22, i32 0, i32 1
  %22 = getelementptr inbounds i8, ptr %msg.i23, i32 4
  %flags.i26 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 0, i32 1
  %buf1.i28 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %tda8083_writereg.exit37.for.body_crit_edge, %for.body.lr.ph
  %i.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %tda8083_writereg.exit37.for.body_crit_edge ]
  %23 = trunc i32 %i.056 to i8
  %conv5 = add i8 %23, 35
  %arrayidx = getelementptr [6 x i8], ptr %m, i32 0, i32 %i.056
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i22) #6
  %26 = ptrtoint ptr %buf.i22 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv5, ptr %buf.i22, align 1
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %25, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i23) #6
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %22, align 4
  %29 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %config.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 1
  %conv.i25 = zext i8 %32 to i16
  %33 = ptrtoint ptr %msg.i23 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i25, ptr %msg.i23, align 4
  %34 = ptrtoint ptr %flags.i26 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags.i26, align 2
  store i16 2, ptr %22, align 4
  %35 = ptrtoint ptr %buf1.i28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %buf.i22, ptr %buf1.i28, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %call.i29 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %msg.i23, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i29)
  %cmp.not.i30 = icmp eq i32 %call.i29, 1
  br i1 %cmp.not.i30, label %for.body.tda8083_writereg.exit37_crit_edge, label %do.body.i32

for.body.tda8083_writereg.exit37_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit37

do.body.i32:                                      ; preds = %for.body
  %38 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i31 = icmp eq i32 %38, 0
  br i1 %tobool.not.i31, label %do.body.i32.tda8083_writereg.exit37_crit_edge, label %do.end.i34

do.body.i32.tda8083_writereg.exit37_crit_edge:    ; preds = %do.body.i32
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit37

do.end.i34:                                       ; preds = %do.body.i32
  call void @__sanitizer_cov_trace_pc() #8
  %conv5.i = zext i8 %conv5 to i32
  %call6.i33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %conv5.i, i32 noundef %call.i29) #10
  br label %tda8083_writereg.exit37

tda8083_writereg.exit37:                          ; preds = %do.end.i34, %do.body.i32.tda8083_writereg.exit37_crit_edge, %for.body.tda8083_writereg.exit37_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i23) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i22) #6
  %inc = add nuw nsw i32 %i.056, 1
  %39 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %msg_len, align 1
  %conv3 = zext i8 %40 to i32
  %cmp = icmp ult i32 %inc, %conv3
  br i1 %cmp, label %tda8083_writereg.exit37.for.body_crit_edge, label %for.end.loopexit

tda8083_writereg.exit37.for.body_crit_edge:       ; preds = %tda8083_writereg.exit37
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end.loopexit:                                 ; preds = %tda8083_writereg.exit37
  call void @__sanitizer_cov_trace_pc() #8
  %phi.bo = add i8 %40, -3
  %phi.bo58 = or i8 %phi.bo, 12
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %tda8083_writereg.exit.for.end_crit_edge
  %.lcssa = phi i8 [ -3, %tda8083_writereg.exit.for.end_crit_edge ], [ %phi.bo58, %for.end.loopexit ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i38) #6
  %41 = getelementptr inbounds [2 x i8], ptr %buf.i38, i32 0, i32 1
  %42 = ptrtoint ptr %buf.i38 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 41, ptr %buf.i38, align 1
  %43 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %.lcssa, ptr %41, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i39) #6
  %44 = getelementptr inbounds i8, ptr %msg.i39, i32 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 196607, ptr %44, align 4
  %46 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %config.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %47, align 1
  %conv.i41 = zext i8 %49 to i16
  %50 = ptrtoint ptr %msg.i39 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv.i41, ptr %msg.i39, align 4
  %flags.i42 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39, i32 0, i32 1
  %51 = ptrtoint ptr %flags.i42 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %flags.i42, align 2
  %buf1.i44 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39, i32 0, i32 3
  %52 = ptrtoint ptr %buf1.i44 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %buf.i38, ptr %buf1.i44, align 4
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  %call.i45 = call i32 @i2c_transfer(ptr noundef %54, ptr noundef nonnull %msg.i39, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i45)
  %cmp.not.i46 = icmp eq i32 %call.i45, 1
  br i1 %cmp.not.i46, label %for.end.tda8083_writereg.exit53_crit_edge, label %do.body.i48

for.end.tda8083_writereg.exit53_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit53

do.body.i48:                                      ; preds = %for.end
  %55 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i47 = icmp eq i32 %55, 0
  br i1 %tobool.not.i47, label %do.body.i48.tda8083_writereg.exit53_crit_edge, label %do.end.i50

do.body.i48.tda8083_writereg.exit53_crit_edge:    ; preds = %do.body.i48
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit53

do.end.i50:                                       ; preds = %do.body.i48
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 41, i32 noundef %call.i45) #10
  br label %tda8083_writereg.exit53

tda8083_writereg.exit53:                          ; preds = %do.end.i50, %do.body.i48.tda8083_writereg.exit53_crit_edge, %for.end.tda8083_writereg.exit53_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i39) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i38) #6
  call fastcc void @tda8083_wait_diseqc_fifo(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda8083_diseqc_send_burst(ptr nocapture noundef readonly %fe, i32 noundef %burst) #0 align 64 {
entry:
  %buf.i5 = alloca [2 x i8], align 1
  %msg.i6 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf.i1.i = alloca [2 x i8], align 1
  %msg.i2.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = zext i32 %burst to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %burst, label %entry.tda8083_send_diseqc_burst.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.tda8083_send_diseqc_burst.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_send_diseqc_burst.exit

sw.bb.i:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #6
  %3 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 41, ptr %buf.i.i, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 20, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %6 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 196607, ptr %6, align 4
  %config.i.i = getelementptr inbounds %struct.tda8083_state, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %conv.i.i = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i.i, align 2
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %sw.bb.i.tda8083_writereg.exit.i_crit_edge, label %do.body.i.i

sw.bb.i.tda8083_writereg.exit.i_crit_edge:        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit.i

do.body.i.i:                                      ; preds = %sw.bb.i
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.tda8083_writereg.exit.i_crit_edge, label %do.end.i.i

do.body.i.i.tda8083_writereg.exit.i_crit_edge:    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 41, i32 noundef %call.i.i) #10
  br label %tda8083_writereg.exit.i

tda8083_writereg.exit.i:                          ; preds = %do.end.i.i, %do.body.i.i.tda8083_writereg.exit.i_crit_edge, %sw.bb.i.tda8083_writereg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1.i) #6
  %18 = getelementptr inbounds [2 x i8], ptr %buf.i1.i, i32 0, i32 1
  %19 = ptrtoint ptr %buf.i1.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 41, ptr %buf.i1.i, align 1
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 28, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2.i) #6
  %21 = getelementptr inbounds i8, ptr %msg.i2.i, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 196607, ptr %21, align 4
  %config.i3.i = getelementptr inbounds %struct.tda8083_state, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %config.i3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %config.i3.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 1
  %conv.i4.i = zext i8 %26 to i16
  %27 = ptrtoint ptr %msg.i2.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i4.i, ptr %msg.i2.i, align 4
  %flags.i5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 1
  %28 = ptrtoint ptr %flags.i5.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %flags.i5.i, align 2
  %buf1.i7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 3
  %29 = ptrtoint ptr %buf1.i7.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %buf.i1.i, ptr %buf1.i7.i, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call.i8.i = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %msg.i2.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i8.i)
  %cmp.not.i9.i = icmp eq i32 %call.i8.i, 1
  br i1 %cmp.not.i9.i, label %sw.bb1.i.tda8083_writereg.exit16.i_crit_edge, label %do.body.i11.i

sw.bb1.i.tda8083_writereg.exit16.i_crit_edge:     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit16.i

do.body.i11.i:                                    ; preds = %sw.bb1.i
  %32 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i10.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i10.i, label %do.body.i11.i.tda8083_writereg.exit16.i_crit_edge, label %do.end.i13.i

do.body.i11.i.tda8083_writereg.exit16.i_crit_edge: ; preds = %do.body.i11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit16.i

do.end.i13.i:                                     ; preds = %do.body.i11.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 41, i32 noundef %call.i8.i) #10
  br label %tda8083_writereg.exit16.i

tda8083_writereg.exit16.i:                        ; preds = %do.end.i13.i, %do.body.i11.i.tda8083_writereg.exit16.i_crit_edge, %sw.bb1.i.tda8083_writereg.exit16.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1.i) #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %tda8083_writereg.exit16.i, %tda8083_writereg.exit.i
  call fastcc void @tda8083_wait_diseqc_fifo(ptr noundef %1) #6
  br label %tda8083_send_diseqc_burst.exit

tda8083_send_diseqc_burst.exit:                   ; preds = %sw.epilog.i, %entry.tda8083_send_diseqc_burst.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %33 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %34 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %buf.i, align 1
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 60, ptr %33, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %36 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 196607, ptr %36, align 4
  %config.i = getelementptr inbounds %struct.tda8083_state, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %config.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 1
  %conv.i = zext i8 %41 to i16
  %42 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %43 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %44 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %buf.i, ptr %buf1.i, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %tda8083_send_diseqc_burst.exit.tda8083_writereg.exit_crit_edge, label %do.body.i

tda8083_send_diseqc_burst.exit.tda8083_writereg.exit_crit_edge: ; preds = %tda8083_send_diseqc_burst.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit

do.body.i:                                        ; preds = %tda8083_send_diseqc_burst.exit
  %47 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i, label %do.body.i.tda8083_writereg.exit_crit_edge, label %do.end.i

do.body.i.tda8083_writereg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %call.i) #10
  br label %tda8083_writereg.exit

tda8083_writereg.exit:                            ; preds = %do.end.i, %do.body.i.tda8083_writereg.exit_crit_edge, %tda8083_send_diseqc_burst.exit.tda8083_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i5) #6
  %48 = getelementptr inbounds [2 x i8], ptr %buf.i5, i32 0, i32 1
  %49 = ptrtoint ptr %buf.i5 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %buf.i5, align 1
  %50 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 4, ptr %48, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i6) #6
  %51 = getelementptr inbounds i8, ptr %msg.i6, i32 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 196607, ptr %51, align 4
  %53 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %config.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %54, align 1
  %conv.i8 = zext i8 %56 to i16
  %57 = ptrtoint ptr %msg.i6 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv.i8, ptr %msg.i6, align 4
  %flags.i9 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i6, i32 0, i32 1
  %58 = ptrtoint ptr %flags.i9 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %flags.i9, align 2
  %buf1.i11 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i6, i32 0, i32 3
  %59 = ptrtoint ptr %buf1.i11 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %buf.i5, ptr %buf1.i11, align 4
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %call.i12 = call i32 @i2c_transfer(ptr noundef %61, ptr noundef nonnull %msg.i6, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i12)
  %cmp.not.i13 = icmp eq i32 %call.i12, 1
  br i1 %cmp.not.i13, label %tda8083_writereg.exit.tda8083_writereg.exit20_crit_edge, label %do.body.i15

tda8083_writereg.exit.tda8083_writereg.exit20_crit_edge: ; preds = %tda8083_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit20

do.body.i15:                                      ; preds = %tda8083_writereg.exit
  %62 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i14 = icmp eq i32 %62, 0
  br i1 %tobool.not.i14, label %do.body.i15.tda8083_writereg.exit20_crit_edge, label %do.end.i17

do.body.i15.tda8083_writereg.exit20_crit_edge:    ; preds = %do.body.i15
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit20

do.end.i17:                                       ; preds = %do.body.i15
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %call.i12) #10
  br label %tda8083_writereg.exit20

tda8083_writereg.exit20:                          ; preds = %do.end.i17, %do.body.i15.tda8083_writereg.exit20_crit_edge, %tda8083_writereg.exit.tda8083_writereg.exit20_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i6) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda8083_diseqc_set_tone(ptr nocapture noundef readonly %fe, i32 noundef %tone) #0 align 64 {
entry:
  %buf.i5 = alloca [2 x i8], align 1
  %msg.i6 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf.i17.i = alloca [2 x i8], align 1
  %msg.i18.i = alloca %struct.i2c_msg, align 4
  %buf.i1.i = alloca [2 x i8], align 1
  %msg.i2.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #6
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 38, ptr %buf.i.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -15, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196607, ptr %5, align 4
  %config.i.i = getelementptr inbounds %struct.tda8083_state, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %conv.i.i = zext i8 %10 to i16
  %11 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i.i, align 2
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %entry.tda8083_writereg.exit.i_crit_edge, label %do.body.i.i

entry.tda8083_writereg.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit.i

do.body.i.i:                                      ; preds = %entry
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.tda8083_writereg.exit.i_crit_edge, label %do.end.i.i

do.body.i.i.tda8083_writereg.exit.i_crit_edge:    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 38, i32 noundef %call.i.i) #10
  br label %tda8083_writereg.exit.i

tda8083_writereg.exit.i:                          ; preds = %do.end.i.i, %do.body.i.i.tda8083_writereg.exit.i_crit_edge, %entry.tda8083_writereg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  %17 = zext i32 %tone to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %tone, label %tda8083_writereg.exit.i.tda8083_set_tone.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 0, label %sw.bb2.i
  ]

tda8083_writereg.exit.i.tda8083_set_tone.exit_crit_edge: ; preds = %tda8083_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_set_tone.exit

sw.bb.i:                                          ; preds = %tda8083_writereg.exit.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1.i) #6
  %18 = getelementptr inbounds [2 x i8], ptr %buf.i1.i, i32 0, i32 1
  %19 = ptrtoint ptr %buf.i1.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 41, ptr %buf.i1.i, align 1
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2.i) #6
  %21 = getelementptr inbounds i8, ptr %msg.i2.i, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 196607, ptr %21, align 4
  %23 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %config.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 1
  %conv.i4.i = zext i8 %26 to i16
  %27 = ptrtoint ptr %msg.i2.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i4.i, ptr %msg.i2.i, align 4
  %flags.i5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 1
  %28 = ptrtoint ptr %flags.i5.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %flags.i5.i, align 2
  %buf1.i7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 3
  %29 = ptrtoint ptr %buf1.i7.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %buf.i1.i, ptr %buf1.i7.i, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call.i8.i = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %msg.i2.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i8.i)
  %cmp.not.i9.i = icmp eq i32 %call.i8.i, 1
  br i1 %cmp.not.i9.i, label %sw.bb.i.tda8083_writereg.exit16.i_crit_edge, label %do.body.i11.i

sw.bb.i.tda8083_writereg.exit16.i_crit_edge:      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit16.i

do.body.i11.i:                                    ; preds = %sw.bb.i
  %32 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i10.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i10.i, label %do.body.i11.i.tda8083_writereg.exit16.i_crit_edge, label %do.end.i13.i

do.body.i11.i.tda8083_writereg.exit16.i_crit_edge: ; preds = %do.body.i11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit16.i

do.end.i13.i:                                     ; preds = %do.body.i11.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 41, i32 noundef %call.i8.i) #10
  br label %tda8083_writereg.exit16.i

tda8083_writereg.exit16.i:                        ; preds = %do.end.i13.i, %do.body.i11.i.tda8083_writereg.exit16.i_crit_edge, %sw.bb.i.tda8083_writereg.exit16.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1.i) #6
  br label %tda8083_set_tone.exit

sw.bb2.i:                                         ; preds = %tda8083_writereg.exit.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i17.i) #6
  %33 = getelementptr inbounds [2 x i8], ptr %buf.i17.i, i32 0, i32 1
  %34 = ptrtoint ptr %buf.i17.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 41, ptr %buf.i17.i, align 1
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -128, ptr %33, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i18.i) #6
  %36 = getelementptr inbounds i8, ptr %msg.i18.i, i32 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 196607, ptr %36, align 4
  %38 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %config.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 1
  %conv.i20.i = zext i8 %41 to i16
  %42 = ptrtoint ptr %msg.i18.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i20.i, ptr %msg.i18.i, align 4
  %flags.i21.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18.i, i32 0, i32 1
  %43 = ptrtoint ptr %flags.i21.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %flags.i21.i, align 2
  %buf1.i23.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18.i, i32 0, i32 3
  %44 = ptrtoint ptr %buf1.i23.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %buf.i17.i, ptr %buf1.i23.i, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %call.i24.i = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %msg.i18.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i24.i)
  %cmp.not.i25.i = icmp eq i32 %call.i24.i, 1
  br i1 %cmp.not.i25.i, label %sw.bb2.i.tda8083_writereg.exit32.i_crit_edge, label %do.body.i27.i

sw.bb2.i.tda8083_writereg.exit32.i_crit_edge:     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit32.i

do.body.i27.i:                                    ; preds = %sw.bb2.i
  %47 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i26.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i26.i, label %do.body.i27.i.tda8083_writereg.exit32.i_crit_edge, label %do.end.i29.i

do.body.i27.i.tda8083_writereg.exit32.i_crit_edge: ; preds = %do.body.i27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit32.i

do.end.i29.i:                                     ; preds = %do.body.i27.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 41, i32 noundef %call.i24.i) #10
  br label %tda8083_writereg.exit32.i

tda8083_writereg.exit32.i:                        ; preds = %do.end.i29.i, %do.body.i27.i.tda8083_writereg.exit32.i_crit_edge, %sw.bb2.i.tda8083_writereg.exit32.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i18.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i17.i) #6
  br label %tda8083_set_tone.exit

tda8083_set_tone.exit:                            ; preds = %tda8083_writereg.exit32.i, %tda8083_writereg.exit16.i, %tda8083_writereg.exit.i.tda8083_set_tone.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %48 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %49 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %buf.i, align 1
  %50 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 60, ptr %48, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %51 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 196607, ptr %51, align 4
  %53 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %config.i.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %54, align 1
  %conv.i = zext i8 %56 to i16
  %57 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %58 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %59 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %buf.i, ptr %buf1.i, align 4
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %61, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %tda8083_set_tone.exit.tda8083_writereg.exit_crit_edge, label %do.body.i

tda8083_set_tone.exit.tda8083_writereg.exit_crit_edge: ; preds = %tda8083_set_tone.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit

do.body.i:                                        ; preds = %tda8083_set_tone.exit
  %62 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i = icmp eq i32 %62, 0
  br i1 %tobool.not.i, label %do.body.i.tda8083_writereg.exit_crit_edge, label %do.end.i

do.body.i.tda8083_writereg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %call.i) #10
  br label %tda8083_writereg.exit

tda8083_writereg.exit:                            ; preds = %do.end.i, %do.body.i.tda8083_writereg.exit_crit_edge, %tda8083_set_tone.exit.tda8083_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i5) #6
  %63 = getelementptr inbounds [2 x i8], ptr %buf.i5, i32 0, i32 1
  %64 = ptrtoint ptr %buf.i5 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %buf.i5, align 1
  %65 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 4, ptr %63, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i6) #6
  %66 = getelementptr inbounds i8, ptr %msg.i6, i32 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 196607, ptr %66, align 4
  %68 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %config.i.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %69, align 1
  %conv.i8 = zext i8 %71 to i16
  %72 = ptrtoint ptr %msg.i6 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv.i8, ptr %msg.i6, align 4
  %flags.i9 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i6, i32 0, i32 1
  %73 = ptrtoint ptr %flags.i9 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 0, ptr %flags.i9, align 2
  %buf1.i11 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i6, i32 0, i32 3
  %74 = ptrtoint ptr %buf1.i11 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %buf.i5, ptr %buf1.i11, align 4
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 4
  %call.i12 = call i32 @i2c_transfer(ptr noundef %76, ptr noundef nonnull %msg.i6, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i12)
  %cmp.not.i13 = icmp eq i32 %call.i12, 1
  br i1 %cmp.not.i13, label %tda8083_writereg.exit.tda8083_writereg.exit20_crit_edge, label %do.body.i15

tda8083_writereg.exit.tda8083_writereg.exit20_crit_edge: ; preds = %tda8083_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit20

do.body.i15:                                      ; preds = %tda8083_writereg.exit
  %77 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i14 = icmp eq i32 %77, 0
  br i1 %tobool.not.i14, label %do.body.i15.tda8083_writereg.exit20_crit_edge, label %do.end.i17

do.body.i15.tda8083_writereg.exit20_crit_edge:    ; preds = %do.body.i15
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit20

do.end.i17:                                       ; preds = %do.body.i15
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %call.i12) #10
  br label %tda8083_writereg.exit20

tda8083_writereg.exit20:                          ; preds = %do.end.i17, %do.body.i15.tda8083_writereg.exit20_crit_edge, %tda8083_writereg.exit.tda8083_writereg.exit20_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i6) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda8083_diseqc_set_voltage(ptr nocapture noundef readonly %fe, i32 noundef %voltage) #0 align 64 {
entry:
  %buf.i5 = alloca [2 x i8], align 1
  %msg.i6 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf.i1.i = alloca [2 x i8], align 1
  %msg.i2.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = zext i32 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %voltage, label %entry.tda8083_set_voltage.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.tda8083_set_voltage.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_set_voltage.exit

sw.bb.i:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #6
  %3 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 32, ptr %buf.i.i, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %6 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 196607, ptr %6, align 4
  %config.i.i = getelementptr inbounds %struct.tda8083_state, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %conv.i.i = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i.i, align 2
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %sw.bb.i.tda8083_writereg.exit.i_crit_edge, label %do.body.i.i

sw.bb.i.tda8083_writereg.exit.i_crit_edge:        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit.i

do.body.i.i:                                      ; preds = %sw.bb.i
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.tda8083_writereg.exit.i_crit_edge, label %do.end.i.i

do.body.i.i.tda8083_writereg.exit.i_crit_edge:    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 32, i32 noundef %call.i.i) #10
  br label %tda8083_writereg.exit.i

tda8083_writereg.exit.i:                          ; preds = %do.end.i.i, %do.body.i.i.tda8083_writereg.exit.i_crit_edge, %sw.bb.i.tda8083_writereg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  br label %tda8083_set_voltage.exit

sw.bb1.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1.i) #6
  %18 = getelementptr inbounds [2 x i8], ptr %buf.i1.i, i32 0, i32 1
  %19 = ptrtoint ptr %buf.i1.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 32, ptr %buf.i1.i, align 1
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 17, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2.i) #6
  %21 = getelementptr inbounds i8, ptr %msg.i2.i, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 196607, ptr %21, align 4
  %config.i3.i = getelementptr inbounds %struct.tda8083_state, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %config.i3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %config.i3.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 1
  %conv.i4.i = zext i8 %26 to i16
  %27 = ptrtoint ptr %msg.i2.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i4.i, ptr %msg.i2.i, align 4
  %flags.i5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 1
  %28 = ptrtoint ptr %flags.i5.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %flags.i5.i, align 2
  %buf1.i7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 3
  %29 = ptrtoint ptr %buf1.i7.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %buf.i1.i, ptr %buf1.i7.i, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call.i8.i = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %msg.i2.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i8.i)
  %cmp.not.i9.i = icmp eq i32 %call.i8.i, 1
  br i1 %cmp.not.i9.i, label %sw.bb1.i.tda8083_writereg.exit16.i_crit_edge, label %do.body.i11.i

sw.bb1.i.tda8083_writereg.exit16.i_crit_edge:     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit16.i

do.body.i11.i:                                    ; preds = %sw.bb1.i
  %32 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i10.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i10.i, label %do.body.i11.i.tda8083_writereg.exit16.i_crit_edge, label %do.end.i13.i

do.body.i11.i.tda8083_writereg.exit16.i_crit_edge: ; preds = %do.body.i11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit16.i

do.end.i13.i:                                     ; preds = %do.body.i11.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 32, i32 noundef %call.i8.i) #10
  br label %tda8083_writereg.exit16.i

tda8083_writereg.exit16.i:                        ; preds = %do.end.i13.i, %do.body.i11.i.tda8083_writereg.exit16.i_crit_edge, %sw.bb1.i.tda8083_writereg.exit16.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1.i) #6
  br label %tda8083_set_voltage.exit

tda8083_set_voltage.exit:                         ; preds = %tda8083_writereg.exit16.i, %tda8083_writereg.exit.i, %entry.tda8083_set_voltage.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %33 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %34 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %buf.i, align 1
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 60, ptr %33, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %36 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 196607, ptr %36, align 4
  %config.i = getelementptr inbounds %struct.tda8083_state, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %config.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 1
  %conv.i = zext i8 %41 to i16
  %42 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %43 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %44 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %buf.i, ptr %buf1.i, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %tda8083_set_voltage.exit.tda8083_writereg.exit_crit_edge, label %do.body.i

tda8083_set_voltage.exit.tda8083_writereg.exit_crit_edge: ; preds = %tda8083_set_voltage.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit

do.body.i:                                        ; preds = %tda8083_set_voltage.exit
  %47 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i, label %do.body.i.tda8083_writereg.exit_crit_edge, label %do.end.i

do.body.i.tda8083_writereg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %call.i) #10
  br label %tda8083_writereg.exit

tda8083_writereg.exit:                            ; preds = %do.end.i, %do.body.i.tda8083_writereg.exit_crit_edge, %tda8083_set_voltage.exit.tda8083_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i5) #6
  %48 = getelementptr inbounds [2 x i8], ptr %buf.i5, i32 0, i32 1
  %49 = ptrtoint ptr %buf.i5 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %buf.i5, align 1
  %50 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 4, ptr %48, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i6) #6
  %51 = getelementptr inbounds i8, ptr %msg.i6, i32 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 196607, ptr %51, align 4
  %53 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %config.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %54, align 1
  %conv.i8 = zext i8 %56 to i16
  %57 = ptrtoint ptr %msg.i6 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv.i8, ptr %msg.i6, align 4
  %flags.i9 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i6, i32 0, i32 1
  %58 = ptrtoint ptr %flags.i9 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %flags.i9, align 2
  %buf1.i11 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i6, i32 0, i32 3
  %59 = ptrtoint ptr %buf1.i11 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %buf.i5, ptr %buf1.i11, align 4
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %call.i12 = call i32 @i2c_transfer(ptr noundef %61, ptr noundef nonnull %msg.i6, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i12)
  %cmp.not.i13 = icmp eq i32 %call.i12, 1
  br i1 %cmp.not.i13, label %tda8083_writereg.exit.tda8083_writereg.exit20_crit_edge, label %do.body.i15

tda8083_writereg.exit.tda8083_writereg.exit20_crit_edge: ; preds = %tda8083_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit20

do.body.i15:                                      ; preds = %tda8083_writereg.exit
  %62 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i14 = icmp eq i32 %62, 0
  br i1 %tobool.not.i14, label %do.body.i15.tda8083_writereg.exit20_crit_edge, label %do.end.i17

do.body.i15.tda8083_writereg.exit20_crit_edge:    ; preds = %do.body.i15
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_writereg.exit20

do.end.i17:                                       ; preds = %do.body.i15
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %call.i12) #10
  br label %tda8083_writereg.exit20

tda8083_writereg.exit20:                          ; preds = %do.end.i17, %do.body.i15.tda8083_writereg.exit20_crit_edge, %tda8083_writereg.exit.tda8083_writereg.exit20_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i6) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tda8083_wait_diseqc_fifo(ptr nocapture noundef readonly %state) unnamed_addr #0 align 64 {
entry:
  %reg1.addr.i.i = alloca i8, align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = load volatile i32, ptr @jiffies, align 128
  %sub1 = sub i32 %1, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %sub1)
  %cmp2 = icmp ult i32 %sub1, 100
  br i1 %cmp2, label %land.rhs.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %2 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %config.i.i = getelementptr inbounds %struct.tda8083_state, ptr %state, i32 0, i32 1
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %flags6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %len7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %buf9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.lr.ph
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #6
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %val.i, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg1.addr.i.i) #6
  %4 = ptrtoint ptr %reg1.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %reg1.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #6
  %5 = call ptr @memset(ptr %2, i32 255, i32 16)
  %6 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv.i.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i.i, align 2
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %2, align 4
  %13 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %reg1.addr.i.i, ptr %buf.i.i, align 4
  %14 = load i8, ptr %7, align 1
  %conv5.i.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv5.i.i, ptr %arrayinit.element.i.i, align 4
  %16 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags6.i.i, align 2
  %17 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len7.i.i, align 4
  %18 = ptrtoint ptr %buf9.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %val.i, ptr %buf9.i.i, align 4
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %state, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %land.rhs.tda8083_readreg.exit_crit_edge, label %do.body.i.i

land.rhs.tda8083_readreg.exit_crit_edge:          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_readreg.exit

do.body.i.i:                                      ; preds = %land.rhs
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.tda8083_readreg.exit_crit_edge, label %do.end.i.i

do.body.i.i.tda8083_readreg.exit_crit_edge:       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda8083_readreg.exit

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %reg1.addr.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %reg1.addr.i.i, align 1
  %conv13.i.i = zext i8 %23 to i32
  %call14.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv13.i.i, i32 noundef %call.i.i) #10
  br label %tda8083_readreg.exit

tda8083_readreg.exit:                             ; preds = %do.end.i.i, %do.body.i.i.tda8083_readreg.exit_crit_edge, %land.rhs.tda8083_readreg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg1.addr.i.i) #6
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %25)
  %tobool.not = icmp sgt i8 %25, -1
  br i1 %tobool.not, label %while.body, label %tda8083_readreg.exit.while.end_crit_edge

tda8083_readreg.exit.while.end_crit_edge:         ; preds = %tda8083_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %tda8083_readreg.exit
  call void @msleep(i32 noundef 50) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %26, %0
  %cmp = icmp ult i32 %sub, 100
  br i1 %cmp, label %while.body.land.rhs_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

while.end:                                        ; preds = %while.body.while.end_crit_edge, %tda8083_readreg.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !31, !33, !34, !35, !36, !38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/tda8083.c", i32 477, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/tda8083.c", i32 478, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/tda8083.c", i32 480, i32 1}
!7 = !{ptr @__UNIQUE_ID_author293, !8, !"__UNIQUE_ID_author293", i1 false, i1 false}
!8 = !{!"../drivers/media/dvb-frontends/tda8083.c", i32 481, i32 1}
!9 = !{ptr @__UNIQUE_ID_file294, !10, !"__UNIQUE_ID_file294", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/tda8083.c", i32 482, i32 1}
!11 = !{ptr @__UNIQUE_ID_license295, !10, !"__UNIQUE_ID_license295", i1 false, i1 false}
!12 = !{ptr @__ksymtab_tda8083_attach, !13, !"__ksymtab_tda8083_attach", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/tda8083.c", i32 484, i32 1}
!14 = !{ptr @debug, !15, !"debug", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/tda8083.c", i32 32, i32 12}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/tda8083.c", i32 73, i32 3}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tda8083_readregs._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @tda8083_readregs._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @tda8083_ops, !23, !"tda8083_ops", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/tda8083.c", i32 440, i32 38}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/tda8083.c", i32 58, i32 3}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @tda8083_writereg._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @tda8083_writereg._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @tda8083_init_tab, !30, !"tda8083_init_tab", i1 false, i1 false}
!30 = !{!"../drivers/media/dvb-frontends/tda8083.c", i32 39, i32 11}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/dvb-frontends/tda8083.c", i32 148, i32 2}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @tda8083_set_symbolrate._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @tda8083_set_symbolrate._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @tda8083_get_fec.fec_tab, !37, !"fec_tab", i1 false, i1 false}
!37 = !{!"../drivers/media/dvb-frontends/tda8083.c", i32 112, i32 27}
!38 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"auto-init"}
