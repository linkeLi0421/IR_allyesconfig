; ModuleID = '/llk/IR_all_yes/drivers/staging/media/av7110/sp8870.c_pt.bc'
source_filename = "../drivers/staging/media/av7110/sp8870.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sp8870_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_sp8870_attach\09\09\09\09"
module asm "\09.long\09__crc_sp8870_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sp8870_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22sp8870_attach\22\09\09\09\09\09"
module asm "__kstrtabns_sp8870_attach:\09\09\09\09\09"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.sp8870_state = type { ptr, ptr, %struct.dvb_frontend, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.sp8870_config = type { i8, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@sp8870_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Spase SP8870 DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 470000000, i32 860000000, i32 166666, i32 0, i32 0, i32 0, i32 0, i32 1074867886 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @sp8870_release, ptr null, ptr @sp8870_init, ptr @sp8870_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sp8870_set_frontend, ptr @sp8870_get_tune_settings, ptr null, ptr @sp8870_read_status, ptr @sp8870_read_ber, ptr @sp8870_read_signal_strength, ptr null, ptr @sp8870_read_uncorrected_blocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sp8870_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__param_str_debug = internal constant [13 x i8] c"sp8870.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [26 x i8] c"sp8870.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [64 x i8] c"sp8870.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [57 x i8] c"sp8870.description=Spase SP8870 DVB-T Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [28 x i8] c"sp8870.author=Juergen Peitz\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [48 x i8] c"sp8870.file=drivers/staging/media/av7110/sp8870\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [19 x i8] c"sp8870.license=GPL\00", section ".modinfo", align 1
@__kstrtab_sp8870_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_sp8870_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_sp8870_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sp8870_attach to i32), ptr @__kstrtab_sp8870_attach, ptr @__kstrtabns_sp8870_attach }, section "___ksymtab+sp8870_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sp8870_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017sp8870: %s: readreg error (ret == %i)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sp8870_readreg\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/staging/media/av7110/sp8870.c\00", [58 x i8] zeroinitializer }, align 32
@sp8870_readreg._entry_ptr = internal global ptr @sp8870_readreg._entry, section ".printk_index", align 4
@sp8870_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017sp8870: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sp8870_init\00", [20 x i8] zeroinitializer }, align 32
@sp8870_init._entry_ptr = internal global ptr @sp8870_init._entry, section ".printk_index", align 4
@sp8870_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"sp8870: waiting for firmware upload (%s)...\0A\00", [51 x i8] zeroinitializer }, align 32
@sp8870_init._entry_ptr.7 = internal global ptr @sp8870_init._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dvb-fe-sp8870.fw\00", [47 x i8] zeroinitializer }, align 32
@sp8870_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.2, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"sp8870: no firmware upload (timeout or file not found?)\0A\00", [39 x i8] zeroinitializer }, align 32
@sp8870_init._entry_ptr.11 = internal global ptr @sp8870_init._entry.9, section ".printk_index", align 4
@sp8870_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.2, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sp8870: writing firmware to device failed\0A\00", [53 x i8] zeroinitializer }, align 32
@sp8870_init._entry_ptr.14 = internal global ptr @sp8870_init._entry.12, section ".printk_index", align 4
@sp8870_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.2, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sp8870: firmware upload complete\0A\00", [62 x i8] zeroinitializer }, align 32
@sp8870_init._entry_ptr.17 = internal global ptr @sp8870_init._entry.15, section ".printk_index", align 4
@sp8870_firmware_upload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017sp8870: %s: ...\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sp8870_firmware_upload\00", [41 x i8] zeroinitializer }, align 32
@sp8870_firmware_upload._entry_ptr = internal global ptr @sp8870_firmware_upload._entry, section ".printk_index", align 4
@sp8870_firmware_upload._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: firmware upload failed!\0A\00", [35 x i8] zeroinitializer }, align 32
@sp8870_firmware_upload._entry_ptr.22 = internal global ptr @sp8870_firmware_upload._entry.20, section ".printk_index", align 4
@sp8870_firmware_upload._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: i2c error (err == %i)\0A\00", [37 x i8] zeroinitializer }, align 32
@sp8870_firmware_upload._entry_ptr.25 = internal global ptr @sp8870_firmware_upload._entry.23, section ".printk_index", align 4
@sp8870_firmware_upload._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.2, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017sp8870: %s: done!\0A\00", [43 x i8] zeroinitializer }, align 32
@sp8870_firmware_upload._entry_ptr.28 = internal global ptr @sp8870_firmware_upload._entry.26, section ".printk_index", align 4
@sp8870_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\017sp8870: %s: writereg error (err == %i, reg == 0x%02x, data == 0x%02x)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sp8870_writereg\00", [16 x i8] zeroinitializer }, align 32
@sp8870_writereg._entry_ptr = internal global ptr @sp8870_writereg._entry, section ".printk_index", align 4
@sp8870_set_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017sp8870: %s: frequency = %i\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sp8870_set_frontend\00", [44 x i8] zeroinitializer }, align 32
@sp8870_set_frontend._entry_ptr = internal global ptr @sp8870_set_frontend._entry, section ".printk_index", align 4
@sp8870_set_frontend._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017sp8870: %s: delay = %i usec\0A\00", [33 x i8] zeroinitializer }, align 32
@sp8870_set_frontend._entry_ptr.35 = internal global ptr @sp8870_set_frontend._entry.33, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sp8870_set_frontend._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.2, i32 491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: firmware crash!!!!!!\0A\00", [38 x i8] zeroinitializer }, align 32
@sp8870_set_frontend._entry_ptr.38 = internal global ptr @sp8870_set_frontend._entry.36, section ".printk_index", align 4
@sp8870_set_frontend._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.2, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: firmware lockup!!!\0A\00", [40 x i8] zeroinitializer }, align 32
@sp8870_set_frontend._entry_ptr.41 = internal global ptr @sp8870_set_frontend._entry.39, section ".printk_index", align 4
@sp8870_set_frontend._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.32, ptr @.str.2, i32 499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: recovered after %i trial(s))\0A\00", [62 x i8] zeroinitializer }, align 32
@sp8870_set_frontend._entry_ptr.44 = internal global ptr @sp8870_set_frontend._entry.42, section ".printk_index", align 4
@lockups = internal global { i32, [28 x i8] } zeroinitializer, align 32
@switches = internal global { i32, [28 x i8] } zeroinitializer, align 32
@sp8870_set_frontend._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.32, ptr @.str.2, i32 504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: switches = %i lockups = %i\0A\00", [32 x i8] zeroinitializer }, align 32
@sp8870_set_frontend._entry_ptr.47 = internal global ptr @sp8870_set_frontend._entry.45, section ".printk_index", align 4
@switch.table.sp8870_set_frontend = internal constant { [7 x i16], [18 x i8] } { [7 x i16] [i16 0, i16 1024, i16 0, i16 2048, i16 0, i16 0, i16 0], [18 x i8] zeroinitializer }, align 32
@switch.table.sp8870_set_frontend.48 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.49 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 5, i64 7, i64 9]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 6000000, i64 7000000]
@___asan_gen_.51 = private unnamed_addr constant [11 x i8] c"sp8870_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 572, i32 38 }
@___asan_gen_.54 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 41, i32 12 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 78, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 302, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 306, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 308, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 313, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 318, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 94, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 121, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 122, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 128, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 60, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 468, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 480, i32 5 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 491, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 498, i32 5 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 499, i32 5 }
@___asan_gen_.174 = private unnamed_addr constant [8 x i8] c"lockups\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 447, i32 12 }
@___asan_gen_.177 = private unnamed_addr constant [9 x i8] c"switches\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 449, i32 12 }
@___asan_gen_.180 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.184 = private constant [41 x i8] c"../drivers/staging/media/av7110/sp8870.c\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 504, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [33 x i8] c"switch.table.sp8870_set_frontend\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [36 x i8] c"switch.table.sp8870_set_frontend.48\00", align 1
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_sp8870_attach, ptr @__param_debug, ptr @sp8870_firmware_upload._entry, ptr @sp8870_firmware_upload._entry.20, ptr @sp8870_firmware_upload._entry.23, ptr @sp8870_firmware_upload._entry.26, ptr @sp8870_firmware_upload._entry_ptr, ptr @sp8870_firmware_upload._entry_ptr.22, ptr @sp8870_firmware_upload._entry_ptr.25, ptr @sp8870_firmware_upload._entry_ptr.28, ptr @sp8870_init._entry, ptr @sp8870_init._entry.12, ptr @sp8870_init._entry.15, ptr @sp8870_init._entry.5, ptr @sp8870_init._entry.9, ptr @sp8870_init._entry_ptr, ptr @sp8870_init._entry_ptr.11, ptr @sp8870_init._entry_ptr.14, ptr @sp8870_init._entry_ptr.17, ptr @sp8870_init._entry_ptr.7, ptr @sp8870_readreg._entry, ptr @sp8870_readreg._entry_ptr, ptr @sp8870_set_frontend._entry, ptr @sp8870_set_frontend._entry.33, ptr @sp8870_set_frontend._entry.36, ptr @sp8870_set_frontend._entry.39, ptr @sp8870_set_frontend._entry.42, ptr @sp8870_set_frontend._entry.45, ptr @sp8870_set_frontend._entry_ptr, ptr @sp8870_set_frontend._entry_ptr.35, ptr @sp8870_set_frontend._entry_ptr.38, ptr @sp8870_set_frontend._entry_ptr.41, ptr @sp8870_set_frontend._entry_ptr.44, ptr @sp8870_set_frontend._entry_ptr.47, ptr @sp8870_writereg._entry, ptr @sp8870_writereg._entry_ptr, ptr @sp8870_ops, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @lockups, ptr @switches, ptr @.str.46, ptr @switch.table.sp8870_set_frontend, ptr @switch.table.sp8870_set_frontend.48], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp8870_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp8870_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp8870_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp8870_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp8870_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp8870_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp8870_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp8870_firmware_upload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp8870_firmware_upload._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp8870_firmware_upload._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp8870_firmware_upload._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp8870_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp8870_set_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp8870_set_frontend._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp8870_set_frontend._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp8870_set_frontend._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp8870_set_frontend._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switches to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp8870_set_frontend._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sp8870_set_frontend to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sp8870_set_frontend.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sp8870_attach(ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  %b0.i = alloca [2 x i8], align 1
  %b1.i = alloca [2 x i8], align 2
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1052) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end:                                           ; preds = %entry
  %config1 = getelementptr inbounds %struct.sp8870_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %config, ptr %config1, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %call7.i.i, align 8
  %initialised = getelementptr inbounds %struct.sp8870_state, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %initialised to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %initialised, align 8
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %initialised, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i) #6
  %4 = getelementptr inbounds [2 x i8], ptr %b0.i, i32 0, i32 1
  %5 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %b0.i, align 1
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i) #6
  %7 = ptrtoint ptr %b1.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %b1.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  %10 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %config, align 4
  %conv5.i = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv5.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2, ptr %8, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %16 = ptrtoint ptr %arrayinit.element6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv5.i, ptr %arrayinit.element6.i, align 4
  %flags11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %17 = ptrtoint ptr %flags11.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags11.i, align 2
  %len12.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %18 = ptrtoint ptr %len12.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 2, ptr %len12.i, align 4
  %buf13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %19 = ptrtoint ptr %buf13.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %b1.i, ptr %buf13.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %sp8870_readreg.exit, label %do.body.i

do.body.i:                                        ; preds = %if.end
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %do.body.i.sp8870_readreg.exit.thread_crit_edge, label %do.end.i

do.body.i.sp8870_readreg.exit.thread_crit_edge:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_readreg.exit.thread

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i) #10
  br label %sp8870_readreg.exit.thread

sp8870_readreg.exit.thread:                       ; preds = %do.end.i, %do.body.i.sp8870_readreg.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #6
  br label %error

sp8870_readreg.exit:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #6
  %frontend = getelementptr inbounds %struct.sp8870_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.sp8870_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %21 = call ptr @memcpy(ptr %ops, ptr @sp8870_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.sp8870_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  br label %cleanup

error:                                            ; preds = %sp8870_readreg.exit.thread, %entry.error_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %sp8870_readreg.exit
  %retval.0 = phi ptr [ null, %error ], [ %frontend, %sp8870_readreg.exit ]
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
define internal void @sp8870_release(ptr nocapture noundef readonly %fe) #0 align 64 {
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
define internal i32 @sp8870_init(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i73.i = alloca [4 x i8], align 1
  %msg.i74.i = alloca %struct.i2c_msg, align 4
  %buf.i58.i = alloca [4 x i8], align 1
  %msg.i59.i = alloca %struct.i2c_msg, align 4
  %buf.i.i57 = alloca [4 x i8], align 1
  %msg.i.i58 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  %tx_buf.i = alloca [255 x i8], align 1
  %buf.i.i = alloca [4 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #6
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fw, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #6
  %3 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 1
  %4 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 2
  %5 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 12, ptr %buf.i.i, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 24, ptr %3, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %4, align 1
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 13, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %10 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 327679, ptr %10, align 4
  %config.i.i = getelementptr inbounds %struct.sp8870_state, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %config.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 4
  %conv12.i.i = zext i8 %15 to i16
  %16 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv12.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %flags.i.i, align 2
  %buf13.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %buf13.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %buf.i.i, ptr %buf13.i.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %entry.sp8870_wake_up.exit_crit_edge, label %do.body.i.i

entry.sp8870_wake_up.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_wake_up.exit

do.body.i.i:                                      ; preds = %entry
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.sp8870_wake_up.exit_crit_edge, label %do.end.i.i

do.body.i.i.sp8870_wake_up.exit_crit_edge:        ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_wake_up.exit

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %call.i.i, i32 noundef 3096, i32 noundef 13) #10
  br label %sp8870_wake_up.exit

sp8870_wake_up.exit:                              ; preds = %do.end.i.i, %do.body.i.i.sp8870_wake_up.exit_crit_edge, %entry.sp8870_wake_up.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #6
  %initialised = getelementptr inbounds %struct.sp8870_state, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %initialised to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %initialised, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %sp8870_wake_up.exit.cleanup_crit_edge

sp8870_wake_up.exit.cleanup_crit_edge:            ; preds = %sp8870_wake_up.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sp8870_wake_up.exit
  %bf.set = or i8 %bf.load, -128
  %23 = ptrtoint ptr %initialised to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %bf.set, ptr %initialised, align 4
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool3.not = icmp eq i32 %24, 0
  br i1 %tobool3.not, label %if.end.do.end12_crit_edge, label %do.end

if.end.do.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #10
  br label %do.end12

do.end12:                                         ; preds = %do.end, %if.end.do.end12_crit_edge
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8) #10
  %25 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %config.i.i, align 4
  %request_firmware = getelementptr inbounds %struct.sp8870_config, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %request_firmware to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %request_firmware, align 4
  %call15 = call i32 %28(ptr noundef %fe, ptr noundef nonnull %fw, ptr noundef nonnull @.str.8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end23, label %do.end20

do.end20:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  br label %cleanup

if.end23:                                         ; preds = %do.end12
  %29 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fw, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %31 = call ptr @memset(ptr %msg.i, i32 255, i32 12)
  %data.i = getelementptr inbounds %struct.firmware, ptr %30, i32 0, i32 1
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i, align 4
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %tx_buf.i) #6
  %34 = call ptr @memset(ptr %tx_buf.i, i32 255, i32 255)
  %35 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i, label %if.end23.do.end3.i_crit_edge, label %do.end.i

if.end23.do.end3.i_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i

do.end.i:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #10
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.end23.do.end3.i_crit_edge
  %36 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16392, i32 %37)
  %cmp.i = icmp ult i32 %37, 16392
  br i1 %cmp.i, label %sp8870_firmware_upload.exit.thread71, label %if.end5.i

sp8870_firmware_upload.exit.thread71:             ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %tx_buf.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  br label %do.end29

if.end5.i:                                        ; preds = %do.end3.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i57) #6
  %38 = getelementptr inbounds [4 x i8], ptr %buf.i.i57, i32 0, i32 1
  %39 = getelementptr inbounds [4 x i8], ptr %buf.i.i57, i32 0, i32 2
  %40 = getelementptr inbounds [4 x i8], ptr %buf.i.i57, i32 0, i32 3
  %41 = ptrtoint ptr %buf.i.i57 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 15, ptr %buf.i.i57, align 1
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %38, align 1
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %39, align 1
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %40, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i58) #6
  %45 = getelementptr inbounds i8, ptr %msg.i.i58, i32 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 327679, ptr %45, align 4
  %47 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %config.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 4
  %conv12.i.i60 = zext i8 %50 to i16
  %51 = ptrtoint ptr %msg.i.i58 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv12.i.i60, ptr %msg.i.i58, align 4
  %flags.i.i61 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i58, i32 0, i32 1
  %52 = ptrtoint ptr %flags.i.i61 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %flags.i.i61, align 2
  %buf13.i.i62 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i58, i32 0, i32 3
  %53 = ptrtoint ptr %buf13.i.i62 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %buf.i.i57, ptr %buf13.i.i62, align 4
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %call.i.i63 = call i32 @i2c_transfer(ptr noundef %55, ptr noundef nonnull %msg.i.i58, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i63)
  %cmp.not.i.i64 = icmp eq i32 %call.i.i63, 1
  br i1 %cmp.not.i.i64, label %if.end5.i.sp8870_writereg.exit.i_crit_edge, label %do.body.i.i66

if.end5.i.sp8870_writereg.exit.i_crit_edge:       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit.i

do.body.i.i66:                                    ; preds = %if.end5.i
  %56 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i.i65 = icmp eq i32 %56, 0
  br i1 %tobool.not.i.i65, label %do.body.i.i66.sp8870_writereg.exit.i_crit_edge, label %do.end.i.i68

do.body.i.i66.sp8870_writereg.exit.i_crit_edge:   ; preds = %do.body.i.i66
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit.i

do.end.i.i68:                                     ; preds = %do.body.i.i66
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i.i67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %call.i.i63, i32 noundef 3840, i32 noundef 0) #10
  br label %sp8870_writereg.exit.i

sp8870_writereg.exit.i:                           ; preds = %do.end.i.i68, %do.body.i.i66.sp8870_writereg.exit.i_crit_edge, %if.end5.i.sp8870_writereg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i58) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i57) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i58.i) #6
  %57 = getelementptr inbounds [4 x i8], ptr %buf.i58.i, i32 0, i32 1
  %58 = getelementptr inbounds [4 x i8], ptr %buf.i58.i, i32 0, i32 2
  %59 = getelementptr inbounds [4 x i8], ptr %buf.i58.i, i32 0, i32 3
  %60 = ptrtoint ptr %buf.i58.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -113, ptr %buf.i58.i, align 1
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 8, ptr %57, align 1
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 31, ptr %58, align 1
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -1, ptr %59, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i59.i) #6
  %64 = getelementptr inbounds i8, ptr %msg.i59.i, i32 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 327679, ptr %64, align 4
  %66 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %config.i.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %67, align 4
  %conv12.i61.i = zext i8 %69 to i16
  %70 = ptrtoint ptr %msg.i59.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv12.i61.i, ptr %msg.i59.i, align 4
  %flags.i62.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i59.i, i32 0, i32 1
  %71 = ptrtoint ptr %flags.i62.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 0, ptr %flags.i62.i, align 2
  %buf13.i64.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i59.i, i32 0, i32 3
  %72 = ptrtoint ptr %buf13.i64.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %buf.i58.i, ptr %buf13.i64.i, align 4
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 4
  %call.i65.i = call i32 @i2c_transfer(ptr noundef %74, ptr noundef nonnull %msg.i59.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i65.i)
  %cmp.not.i66.i = icmp eq i32 %call.i65.i, 1
  br i1 %cmp.not.i66.i, label %sp8870_writereg.exit.i.sp8870_writereg.exit72.i_crit_edge, label %do.body.i68.i

sp8870_writereg.exit.i.sp8870_writereg.exit72.i_crit_edge: ; preds = %sp8870_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit72.i

do.body.i68.i:                                    ; preds = %sp8870_writereg.exit.i
  %75 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i67.i = icmp eq i32 %75, 0
  br i1 %tobool.not.i67.i, label %do.body.i68.i.sp8870_writereg.exit72.i_crit_edge, label %do.end.i70.i

do.body.i68.i.sp8870_writereg.exit72.i_crit_edge: ; preds = %do.body.i68.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit72.i

do.end.i70.i:                                     ; preds = %do.body.i68.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i69.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %call.i65.i, i32 noundef 36616, i32 noundef 8191) #10
  br label %sp8870_writereg.exit72.i

sp8870_writereg.exit72.i:                         ; preds = %do.end.i70.i, %do.body.i68.i.sp8870_writereg.exit72.i_crit_edge, %sp8870_writereg.exit.i.sp8870_writereg.exit72.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i59.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i58.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i73.i) #6
  %76 = getelementptr inbounds [4 x i8], ptr %buf.i73.i, i32 0, i32 1
  %77 = getelementptr inbounds [4 x i8], ptr %buf.i73.i, i32 0, i32 2
  %78 = getelementptr inbounds [4 x i8], ptr %buf.i73.i, i32 0, i32 3
  %79 = ptrtoint ptr %buf.i73.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 -113, ptr %buf.i73.i, align 1
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 10, ptr %76, align 1
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %77, align 1
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %78, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i74.i) #6
  %83 = getelementptr inbounds i8, ptr %msg.i74.i, i32 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 327679, ptr %83, align 4
  %85 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %config.i.i, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %86, align 4
  %conv12.i76.i = zext i8 %88 to i16
  %89 = ptrtoint ptr %msg.i74.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv12.i76.i, ptr %msg.i74.i, align 4
  %flags.i77.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i74.i, i32 0, i32 1
  %90 = ptrtoint ptr %flags.i77.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 0, ptr %flags.i77.i, align 2
  %buf13.i79.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i74.i, i32 0, i32 3
  %91 = ptrtoint ptr %buf13.i79.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %buf.i73.i, ptr %buf13.i79.i, align 4
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %1, align 4
  %call.i80.i = call i32 @i2c_transfer(ptr noundef %93, ptr noundef nonnull %msg.i74.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i80.i)
  %cmp.not.i81.i = icmp eq i32 %call.i80.i, 1
  br i1 %cmp.not.i81.i, label %sp8870_writereg.exit72.i.sp8870_writereg.exit87.i_crit_edge, label %do.body.i83.i

sp8870_writereg.exit72.i.sp8870_writereg.exit87.i_crit_edge: ; preds = %sp8870_writereg.exit72.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit87.i

do.body.i83.i:                                    ; preds = %sp8870_writereg.exit72.i
  %94 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i82.i = icmp eq i32 %94, 0
  br i1 %tobool.not.i82.i, label %do.body.i83.i.sp8870_writereg.exit87.i_crit_edge, label %do.end.i85.i

do.body.i83.i.sp8870_writereg.exit87.i_crit_edge: ; preds = %do.body.i83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit87.i

do.end.i85.i:                                     ; preds = %do.body.i83.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i84.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %call.i80.i, i32 noundef 36618, i32 noundef 0) #10
  br label %sp8870_writereg.exit87.i

sp8870_writereg.exit87.i:                         ; preds = %do.end.i85.i, %do.body.i83.i.sp8870_writereg.exit87.i_crit_edge, %sp8870_writereg.exit72.i.sp8870_writereg.exit87.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i74.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i73.i) #6
  %arrayidx11.i = getelementptr inbounds [255 x i8], ptr %tx_buf.i, i32 0, i32 1
  %arrayidx12.i = getelementptr inbounds [255 x i8], ptr %tx_buf.i, i32 0, i32 2
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 2
  br label %while.body.i

while.cond.i:                                     ; preds = %while.body.i
  %add29.i = add i32 %spec.select.i, %fw_pos.088.i
  %cmp9.i = icmp slt i32 %add29.i, 16392
  br i1 %cmp9.i, label %while.cond.i.while.body.i_crit_edge, label %do.body30.i

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %sp8870_writereg.exit87.i
  %fw_pos.088.i = phi i32 [ 10, %sp8870_writereg.exit87.i ], [ %add29.i, %while.cond.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16141, i32 %fw_pos.088.i)
  %cmp10.i = icmp slt i32 %fw_pos.088.i, 16141
  %sub.i = sub i32 16392, %fw_pos.088.i
  %spec.select.i = select i1 %cmp10.i, i32 252, i32 %sub.i
  %95 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -49, ptr %tx_buf.i, align 1
  %96 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 10, ptr %arrayidx11.i, align 1
  %add.ptr.i = getelementptr i8, ptr %33, i32 %fw_pos.088.i
  %97 = call ptr @memcpy(ptr %arrayidx12.i, ptr %add.ptr.i, i32 %spec.select.i)
  %98 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %config.i.i, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %99, align 4
  %conv.i = zext i8 %101 to i16
  %102 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %conv.i, ptr %msg.i, align 4
  %103 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 0, ptr %flags.i, align 2
  %104 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %tx_buf.i, ptr %buf.i, align 4
  %105 = trunc i32 %spec.select.i to i16
  %conv13.i = add i16 %105, 2
  %106 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %conv13.i, ptr %len.i, align 4
  %107 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %1, align 4
  %call14.i = call i32 @i2c_transfer(ptr noundef %108, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call14.i)
  %cmp15.not.i = icmp eq i32 %call14.i, 1
  br i1 %cmp15.not.i, label %while.cond.i, label %sp8870_firmware_upload.exit

do.body30.i:                                      ; preds = %while.cond.i
  %109 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool31.not.i = icmp eq i32 %109, 0
  br i1 %tobool31.not.i, label %do.body30.i.sp8870_firmware_upload.exit.thread_crit_edge, label %do.end35.i

do.body30.i.sp8870_firmware_upload.exit.thread_crit_edge: ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_firmware_upload.exit.thread

do.end35.i:                                       ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #8
  %call37.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.19) #10
  br label %sp8870_firmware_upload.exit.thread

sp8870_firmware_upload.exit.thread:               ; preds = %do.end35.i, %do.body30.i.sp8870_firmware_upload.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %tx_buf.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  br label %if.end32

sp8870_firmware_upload.exit:                      ; preds = %while.body.i
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19) #10
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.19, i32 noundef %call14.i) #10
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %tx_buf.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool25.not = icmp eq i32 %call14.i, 0
  br i1 %tobool25.not, label %sp8870_firmware_upload.exit.if.end32_crit_edge, label %sp8870_firmware_upload.exit.do.end29_crit_edge

sp8870_firmware_upload.exit.do.end29_crit_edge:   ; preds = %sp8870_firmware_upload.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end29

sp8870_firmware_upload.exit.if.end32_crit_edge:   ; preds = %sp8870_firmware_upload.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

do.end29:                                         ; preds = %sp8870_firmware_upload.exit.do.end29_crit_edge, %sp8870_firmware_upload.exit.thread71
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #10
  %110 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %111) #6
  br label %cleanup

if.end32:                                         ; preds = %sp8870_firmware_upload.exit.if.end32_crit_edge, %sp8870_firmware_upload.exit.thread
  %112 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %113) #6
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #10
  %call38 = call fastcc i32 @sp8870_writereg(ptr noundef %1, i16 noundef zeroext 3096, i16 noundef zeroext 13)
  call fastcc void @sp8870_microcontroller_stop(ptr noundef %1)
  %call39 = call fastcc i32 @sp8870_writereg(ptr noundef %1, i16 noundef zeroext 769, i16 noundef zeroext 3)
  %call40 = call fastcc i32 @sp8870_writereg(ptr noundef %1, i16 noundef zeroext 3091, i16 noundef zeroext 1)
  %call41 = call fastcc i32 @sp8870_writereg(ptr noundef %1, i16 noundef zeroext 3092, i16 noundef zeroext 1)
  %call42 = call fastcc i32 @sp8870_writereg(ptr noundef %1, i16 noundef zeroext 3328, i16 noundef zeroext 16)
  %call43 = call fastcc i32 @sp8870_writereg(ptr noundef %1, i16 noundef zeroext 3329, i16 noundef zeroext 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.end29, %do.end20, %sp8870_wake_up.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end20 ], [ -5, %do.end29 ], [ 0, %if.end32 ], [ 0, %sp8870_wake_up.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sp8870_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i = alloca [4 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #6
  %2 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 3
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 12, ptr %buf.i, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 24, ptr %2, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %3, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 327679, ptr %9, align 4
  %config.i = getelementptr inbounds %struct.sp8870_state, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 4
  %conv12.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv12.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i, align 2
  %buf13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf13.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf.i, ptr %buf13.i, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %entry.sp8870_writereg.exit_crit_edge, label %do.body.i

entry.sp8870_writereg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit

do.body.i:                                        ; preds = %entry
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %do.body.i.sp8870_writereg.exit_crit_edge, label %do.end.i

do.body.i.sp8870_writereg.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %call.i, i32 noundef 3096, i32 noundef 0) #10
  br label %sp8870_writereg.exit

sp8870_writereg.exit:                             ; preds = %do.end.i, %do.body.i.sp8870_writereg.exit_crit_edge, %entry.sp8870_writereg.exit_crit_edge
  %retval.0.i = phi i32 [ -121, %do.end.i ], [ -121, %do.body.i.sp8870_writereg.exit_crit_edge ], [ 0, %entry.sp8870_writereg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sp8870_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  %b0.i.i82 = alloca [2 x i8], align 1
  %b1.i.i83 = alloca [2 x i8], align 2
  %msg.i.i84 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i.i.i = alloca [2 x i8], align 1
  %b1.i.i.i = alloca [2 x i8], align 2
  %msg.i37.i.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i22.i.i = alloca [4 x i8], align 1
  %msg.i23.i.i = alloca %struct.i2c_msg, align 4
  %buf.i7.i.i = alloca [4 x i8], align 1
  %msg.i8.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i.i = alloca [4 x i8], align 1
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %b0.i.i = alloca [2 x i8], align 1
  %b1.i.i = alloca [2 x i8], align 2
  %msg.i206.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i191.i = alloca [4 x i8], align 1
  %msg.i192.i = alloca %struct.i2c_msg, align 4
  %buf.i176.i = alloca [4 x i8], align 1
  %msg.i177.i = alloca %struct.i2c_msg, align 4
  %buf.i161.i = alloca [4 x i8], align 1
  %msg.i162.i = alloca %struct.i2c_msg, align 4
  %buf.i146.i = alloca [4 x i8], align 1
  %msg.i147.i = alloca %struct.i2c_msg, align 4
  %buf.i131.i = alloca [4 x i8], align 1
  %msg.i132.i = alloca %struct.i2c_msg, align 4
  %buf.i116.i = alloca [4 x i8], align 1
  %msg.i117.i = alloca %struct.i2c_msg, align 4
  %buf.i101.i = alloca [4 x i8], align 1
  %msg.i102.i = alloca %struct.i2c_msg, align 4
  %buf.i86.i = alloca [4 x i8], align 1
  %msg.i87.i = alloca %struct.i2c_msg, align 4
  %buf.i71.i = alloca [4 x i8], align 1
  %msg.i72.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [4 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %3 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dtv_property_cache, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %4) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %modulation.i.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %hierarchy.i.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 9
  %code_rate_HP.i.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 11
  %set_params.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %i2c_gate_ctrl.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %5 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 1
  %6 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 2
  %7 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 3
  %8 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %buf13.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %9 = getelementptr inbounds [4 x i8], ptr %buf.i71.i, i32 0, i32 1
  %10 = getelementptr inbounds [4 x i8], ptr %buf.i71.i, i32 0, i32 2
  %11 = getelementptr inbounds [4 x i8], ptr %buf.i71.i, i32 0, i32 3
  %12 = getelementptr inbounds i8, ptr %msg.i72.i, i32 4
  %flags.i75.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i72.i, i32 0, i32 1
  %buf13.i77.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i72.i, i32 0, i32 3
  %13 = getelementptr inbounds [4 x i8], ptr %buf.i86.i, i32 0, i32 1
  %14 = getelementptr inbounds [4 x i8], ptr %buf.i86.i, i32 0, i32 2
  %15 = getelementptr inbounds [4 x i8], ptr %buf.i86.i, i32 0, i32 3
  %16 = getelementptr inbounds i8, ptr %msg.i87.i, i32 4
  %flags.i90.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i87.i, i32 0, i32 1
  %buf13.i92.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i87.i, i32 0, i32 3
  %17 = getelementptr inbounds [4 x i8], ptr %buf.i101.i, i32 0, i32 1
  %18 = getelementptr inbounds [4 x i8], ptr %buf.i101.i, i32 0, i32 2
  %19 = getelementptr inbounds [4 x i8], ptr %buf.i101.i, i32 0, i32 3
  %20 = getelementptr inbounds i8, ptr %msg.i102.i, i32 4
  %flags.i105.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i102.i, i32 0, i32 1
  %buf13.i107.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i102.i, i32 0, i32 3
  %bandwidth_hz.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %21 = getelementptr inbounds [4 x i8], ptr %buf.i131.i, i32 0, i32 1
  %22 = getelementptr inbounds [4 x i8], ptr %buf.i131.i, i32 0, i32 2
  %23 = getelementptr inbounds [4 x i8], ptr %buf.i131.i, i32 0, i32 3
  %24 = getelementptr inbounds i8, ptr %msg.i132.i, i32 4
  %flags.i135.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i132.i, i32 0, i32 1
  %buf13.i137.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i132.i, i32 0, i32 3
  %25 = getelementptr inbounds [4 x i8], ptr %buf.i116.i, i32 0, i32 1
  %26 = getelementptr inbounds [4 x i8], ptr %buf.i116.i, i32 0, i32 2
  %27 = getelementptr inbounds [4 x i8], ptr %buf.i116.i, i32 0, i32 3
  %28 = getelementptr inbounds i8, ptr %msg.i117.i, i32 4
  %flags.i120.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i117.i, i32 0, i32 1
  %buf13.i122.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i117.i, i32 0, i32 3
  %29 = getelementptr inbounds [4 x i8], ptr %buf.i146.i, i32 0, i32 1
  %30 = getelementptr inbounds [4 x i8], ptr %buf.i146.i, i32 0, i32 2
  %31 = getelementptr inbounds [4 x i8], ptr %buf.i146.i, i32 0, i32 3
  %32 = getelementptr inbounds i8, ptr %msg.i147.i, i32 4
  %flags.i150.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i147.i, i32 0, i32 1
  %buf13.i152.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i147.i, i32 0, i32 3
  %transmission_mode.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 6
  %33 = getelementptr inbounds [4 x i8], ptr %buf.i176.i, i32 0, i32 1
  %34 = getelementptr inbounds [4 x i8], ptr %buf.i176.i, i32 0, i32 2
  %35 = getelementptr inbounds [4 x i8], ptr %buf.i176.i, i32 0, i32 3
  %36 = getelementptr inbounds i8, ptr %msg.i177.i, i32 4
  %flags.i180.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i177.i, i32 0, i32 1
  %buf13.i182.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i177.i, i32 0, i32 3
  %37 = getelementptr inbounds [4 x i8], ptr %buf.i161.i, i32 0, i32 1
  %38 = getelementptr inbounds [4 x i8], ptr %buf.i161.i, i32 0, i32 2
  %39 = getelementptr inbounds [4 x i8], ptr %buf.i161.i, i32 0, i32 3
  %40 = getelementptr inbounds i8, ptr %msg.i162.i, i32 4
  %flags.i165.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i162.i, i32 0, i32 1
  %buf13.i167.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i162.i, i32 0, i32 3
  %41 = getelementptr inbounds [4 x i8], ptr %buf.i191.i, i32 0, i32 1
  %42 = getelementptr inbounds [4 x i8], ptr %buf.i191.i, i32 0, i32 2
  %43 = getelementptr inbounds [4 x i8], ptr %buf.i191.i, i32 0, i32 3
  %44 = getelementptr inbounds i8, ptr %msg.i192.i, i32 4
  %flags.i195.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i192.i, i32 0, i32 1
  %buf13.i197.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i192.i, i32 0, i32 3
  %45 = getelementptr inbounds [2 x i8], ptr %b0.i.i, i32 0, i32 1
  %46 = getelementptr inbounds i8, ptr %msg.i206.i, i32 4
  %flags.i209.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i206.i, i32 0, i32 1
  %buf.i211.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i206.i, i32 0, i32 3
  %arrayinit.element6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i206.i, i32 1
  %flags11.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i206.i, i32 1, i32 1
  %len12.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i206.i, i32 1, i32 2
  %buf13.i212.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i206.i, i32 1, i32 3
  %47 = getelementptr inbounds [4 x i8], ptr %buf.i.i.i, i32 0, i32 1
  %48 = getelementptr inbounds [4 x i8], ptr %buf.i.i.i, i32 0, i32 2
  %49 = getelementptr inbounds [4 x i8], ptr %buf.i.i.i, i32 0, i32 3
  %50 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %buf13.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %51 = getelementptr inbounds [4 x i8], ptr %buf.i7.i.i, i32 0, i32 1
  %52 = getelementptr inbounds [4 x i8], ptr %buf.i7.i.i, i32 0, i32 2
  %53 = getelementptr inbounds [4 x i8], ptr %buf.i7.i.i, i32 0, i32 3
  %54 = getelementptr inbounds i8, ptr %msg.i8.i.i, i32 4
  %flags.i11.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8.i.i, i32 0, i32 1
  %buf13.i13.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8.i.i, i32 0, i32 3
  %55 = getelementptr inbounds [4 x i8], ptr %buf.i22.i.i, i32 0, i32 1
  %56 = getelementptr inbounds [4 x i8], ptr %buf.i22.i.i, i32 0, i32 2
  %57 = getelementptr inbounds [4 x i8], ptr %buf.i22.i.i, i32 0, i32 3
  %58 = getelementptr inbounds i8, ptr %msg.i23.i.i, i32 4
  %flags.i26.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23.i.i, i32 0, i32 1
  %buf13.i28.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23.i.i, i32 0, i32 3
  %59 = getelementptr inbounds [2 x i8], ptr %b0.i.i.i, i32 0, i32 1
  %60 = getelementptr inbounds i8, ptr %msg.i37.i.i, i32 4
  %flags.i39.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i37.i.i, i32 0, i32 1
  %buf.i41.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i37.i.i, i32 0, i32 3
  %arrayinit.element6.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i37.i.i, i32 1
  %flags11.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i37.i.i, i32 1, i32 1
  %len12.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i37.i.i, i32 1, i32 2
  %buf13.i42.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i37.i.i, i32 1, i32 3
  %61 = getelementptr inbounds [2 x i8], ptr %b0.i.i82, i32 0, i32 1
  %62 = getelementptr inbounds i8, ptr %msg.i.i84, i32 4
  %config.i.i85 = getelementptr inbounds %struct.sp8870_state, ptr %1, i32 0, i32 1
  %flags.i.i87 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i84, i32 0, i32 1
  %buf.i.i88 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i84, i32 0, i32 3
  %arrayinit.element6.i.i89 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i84, i32 1
  %flags11.i.i91 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i84, i32 1, i32 1
  %len12.i.i92 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i84, i32 1, i32 2
  %buf13.i.i93 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i84, i32 1, i32 3
  %arrayidx24.i.i = getelementptr inbounds [2 x i8], ptr %b1.i.i83, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc29.for.body_crit_edge, %do.end3
  %trials.0117 = phi i32 [ 1, %do.end3 ], [ %inc30, %for.inc29.for.body_crit_edge ]
  %63 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %demodulator_priv, align 4
  %65 = ptrtoint ptr %modulation.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %modulation.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %66)
  %67 = icmp ult i32 %66, 7
  br i1 %67, label %switch.hole_check, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.hole_check:                                ; preds = %for.body
  %switch.maskindex = trunc i32 %66 to i8
  %switch.shifted = lshr i8 75, %switch.maskindex
  %68 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %switch.lobit.not = icmp eq i8 %68, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [7 x i16], ptr @switch.table.sp8870_set_frontend, i32 0, i32 %66
  %69 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %69)
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.gep137 = getelementptr inbounds [7 x i32], ptr @switch.table.sp8870_set_frontend.48, i32 0, i32 %66
  %70 = ptrtoint ptr %switch.gep137 to i32
  call void @__asan_load4_noabort(i32 %70)
  %switch.load138 = load i32, ptr %switch.gep137, align 4
  %71 = ptrtoint ptr %hierarchy.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %hierarchy.i.i, align 4
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values)
  switch i32 %72, label %switch.lookup.cleanup_crit_edge [
    i32 0, label %switch.lookup.sw.epilog21.i.i_crit_edge
    i32 1, label %sw.bb7.i.i
    i32 2, label %sw.bb11.i.i
    i32 3, label %sw.bb15.i.i
    i32 4, label %sw.bb19.i.i
  ]

switch.lookup.sw.epilog21.i.i_crit_edge:          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog21.i.i

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb7.i.i:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %74 = or i16 %switch.load, 128
  br label %sw.epilog21.i.i

sw.bb11.i.i:                                      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %75 = or i16 %switch.load, 256
  br label %sw.epilog21.i.i

sw.bb15.i.i:                                      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %76 = or i16 %switch.load, 384
  br label %sw.epilog21.i.i

sw.bb19.i.i:                                      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog21.i.i

sw.epilog21.i.i:                                  ; preds = %sw.bb19.i.i, %sw.bb15.i.i, %sw.bb11.i.i, %sw.bb7.i.i, %switch.lookup.sw.epilog21.i.i_crit_edge
  %reg0xc05.1.i = phi i16 [ %switch.load, %sw.bb19.i.i ], [ %76, %sw.bb15.i.i ], [ %75, %sw.bb11.i.i ], [ %74, %sw.bb7.i.i ], [ %switch.load, %switch.lookup.sw.epilog21.i.i_crit_edge ]
  %known_parameters.1.i.i = phi i32 [ 0, %sw.bb19.i.i ], [ %switch.load138, %sw.bb15.i.i ], [ %switch.load138, %sw.bb11.i.i ], [ %switch.load138, %sw.bb7.i.i ], [ %switch.load138, %switch.lookup.sw.epilog21.i.i_crit_edge ]
  %77 = ptrtoint ptr %code_rate_HP.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %code_rate_HP.i.i, align 4
  %79 = zext i32 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %78, label %sw.epilog21.i.i.cleanup_crit_edge [
    i32 1, label %sw.epilog21.i.i.sw.epilog40.i.i_crit_edge
    i32 2, label %sw.epilog21.i.i.sw.epilog40.sink.split.i.i_crit_edge
    i32 3, label %sw.bb26.i.i
    i32 5, label %sw.bb30.i.i
    i32 7, label %sw.bb34.i.i
    i32 9, label %sw.epilog21.i.i.if.else.i.i_crit_edge
  ]

sw.epilog21.i.i.if.else.i.i_crit_edge:            ; preds = %sw.epilog21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i

sw.epilog21.i.i.sw.epilog40.sink.split.i.i_crit_edge: ; preds = %sw.epilog21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog40.sink.split.i.i

sw.epilog21.i.i.sw.epilog40.i.i_crit_edge:        ; preds = %sw.epilog21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog40.i.i

sw.epilog21.i.i.cleanup_crit_edge:                ; preds = %sw.epilog21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb26.i.i:                                      ; preds = %sw.epilog21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog40.sink.split.i.i

sw.bb30.i.i:                                      ; preds = %sw.epilog21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog40.sink.split.i.i

sw.bb34.i.i:                                      ; preds = %sw.epilog21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog40.sink.split.i.i

sw.epilog40.sink.split.i.i:                       ; preds = %sw.bb34.i.i, %sw.bb30.i.i, %sw.bb26.i.i, %sw.epilog21.i.i.sw.epilog40.sink.split.i.i_crit_edge
  %.sink63.i.i = phi i16 [ 32, %sw.bb34.i.i ], [ 24, %sw.bb30.i.i ], [ 16, %sw.bb26.i.i ], [ 8, %sw.epilog21.i.i.sw.epilog40.sink.split.i.i_crit_edge ]
  %80 = or i16 %.sink63.i.i, %reg0xc05.1.i
  br label %sw.epilog40.i.i

sw.epilog40.i.i:                                  ; preds = %sw.epilog40.sink.split.i.i, %sw.epilog21.i.i.sw.epilog40.i.i_crit_edge
  %reg0xc05.2.i = phi i16 [ %80, %sw.epilog40.sink.split.i.i ], [ %reg0xc05.1.i, %sw.epilog21.i.i.sw.epilog40.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %known_parameters.1.i.i)
  %tobool.not.i.i = icmp eq i32 %known_parameters.1.i.i, 0
  br i1 %tobool.not.i.i, label %sw.epilog40.i.i.if.else.i.i_crit_edge, label %sw.epilog40.i.i.if.end.i_crit_edge

sw.epilog40.i.i.if.end.i_crit_edge:               ; preds = %sw.epilog40.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

sw.epilog40.i.i.if.else.i.i_crit_edge:            ; preds = %sw.epilog40.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %sw.epilog40.i.i.if.else.i.i_crit_edge, %sw.epilog21.i.i.if.else.i.i_crit_edge
  %reg0xc05.3.i = phi i16 [ %reg0xc05.1.i, %sw.epilog21.i.i.if.else.i.i_crit_edge ], [ %reg0xc05.2.i, %sw.epilog40.i.i.if.else.i.i_crit_edge ]
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i.i, %sw.epilog40.i.i.if.end.i_crit_edge
  %reg0xc05.4.i = phi i16 [ %reg0xc05.3.i, %if.else.i.i ], [ %reg0xc05.2.i, %sw.epilog40.i.i.if.end.i_crit_edge ]
  %.sink64.i.i = phi i16 [ 2, %if.else.i.i ], [ 4, %sw.epilog40.i.i.if.end.i_crit_edge ]
  %81 = or i16 %.sink64.i.i, %reg0xc05.4.i
  call fastcc void @sp8870_microcontroller_stop(ptr noundef %64) #6
  %82 = ptrtoint ptr %set_params.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %set_params.i, align 4
  %tobool1.not.i = icmp eq ptr %83, null
  br i1 %tobool1.not.i, label %if.end.i.if.end14.i_crit_edge, label %if.then2.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.then2.i:                                       ; preds = %if.end.i
  %call6.i = call i32 %83(ptr noundef %fe) #6
  %84 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool8.not.i = icmp eq ptr %85, null
  br i1 %tobool8.not.i, label %if.then2.i.if.end14.i_crit_edge, label %if.then9.i

if.then2.i.if.end14.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  %call12.i = call i32 %85(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then9.i, %if.then2.i.if.end14.i_crit_edge, %if.end.i.if.end14.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #6
  %86 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 3, ptr %buf.i.i, align 1
  %87 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 25, ptr %5, align 1
  %88 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %6, align 1
  %89 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 10, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %90 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -1, ptr %8, align 4
  %config.i.i = getelementptr inbounds %struct.sp8870_state, ptr %64, i32 0, i32 1
  %91 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %config.i.i, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %92, align 4
  %conv12.i.i = zext i8 %94 to i16
  %95 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv12.i.i, ptr %msg.i.i, align 4
  %96 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 0, ptr %flags.i.i, align 2
  store i16 4, ptr %8, align 4
  %97 = ptrtoint ptr %buf13.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %buf.i.i, ptr %buf13.i.i, align 4
  %98 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %64, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %99, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %if.end14.i.sp8870_writereg.exit.i_crit_edge, label %do.body.i.i

if.end14.i.sp8870_writereg.exit.i_crit_edge:      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit.i

do.body.i.i:                                      ; preds = %if.end14.i
  %100 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.i69.i = icmp eq i32 %100, 0
  br i1 %tobool.not.i69.i, label %do.body.i.i.sp8870_writereg.exit.i_crit_edge, label %do.end.i.i

do.body.i.i.sp8870_writereg.exit.i_crit_edge:     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %call.i.i, i32 noundef 793, i32 noundef 10) #10
  br label %sp8870_writereg.exit.i

sp8870_writereg.exit.i:                           ; preds = %do.end.i.i, %do.body.i.i.sp8870_writereg.exit.i_crit_edge, %if.end14.i.sp8870_writereg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i71.i) #6
  %101 = ptrtoint ptr %buf.i71.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 3, ptr %buf.i71.i, align 1
  %102 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 26, ptr %9, align 1
  %103 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 10, ptr %10, align 1
  %104 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 -85, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i72.i) #6
  %105 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 -1, ptr %12, align 4
  %106 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %config.i.i, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %107, align 4
  %conv12.i74.i = zext i8 %109 to i16
  %110 = ptrtoint ptr %msg.i72.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %conv12.i74.i, ptr %msg.i72.i, align 4
  %111 = ptrtoint ptr %flags.i75.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 0, ptr %flags.i75.i, align 2
  store i16 4, ptr %12, align 4
  %112 = ptrtoint ptr %buf13.i77.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %buf.i71.i, ptr %buf13.i77.i, align 4
  %113 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %64, align 4
  %call.i78.i = call i32 @i2c_transfer(ptr noundef %114, ptr noundef nonnull %msg.i72.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i78.i)
  %cmp.not.i79.i = icmp eq i32 %call.i78.i, 1
  br i1 %cmp.not.i79.i, label %sp8870_writereg.exit.i.sp8870_writereg.exit85.i_crit_edge, label %do.body.i81.i

sp8870_writereg.exit.i.sp8870_writereg.exit85.i_crit_edge: ; preds = %sp8870_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit85.i

do.body.i81.i:                                    ; preds = %sp8870_writereg.exit.i
  %115 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool.not.i80.i = icmp eq i32 %115, 0
  br i1 %tobool.not.i80.i, label %do.body.i81.i.sp8870_writereg.exit85.i_crit_edge, label %do.end.i83.i

do.body.i81.i.sp8870_writereg.exit85.i_crit_edge: ; preds = %do.body.i81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit85.i

do.end.i83.i:                                     ; preds = %do.body.i81.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i82.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %call.i78.i, i32 noundef 794, i32 noundef 2731) #10
  br label %sp8870_writereg.exit85.i

sp8870_writereg.exit85.i:                         ; preds = %do.end.i83.i, %do.body.i81.i.sp8870_writereg.exit85.i_crit_edge, %sp8870_writereg.exit.i.sp8870_writereg.exit85.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i72.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i71.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i86.i) #6
  %116 = ptrtoint ptr %buf.i86.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 3, ptr %buf.i86.i, align 1
  %117 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 9, ptr %13, align 1
  %118 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 4, ptr %14, align 1
  %119 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i87.i) #6
  %120 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 -1, ptr %16, align 4
  %121 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %config.i.i, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %122, align 4
  %conv12.i89.i = zext i8 %124 to i16
  %125 = ptrtoint ptr %msg.i87.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %conv12.i89.i, ptr %msg.i87.i, align 4
  %126 = ptrtoint ptr %flags.i90.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 0, ptr %flags.i90.i, align 2
  store i16 4, ptr %16, align 4
  %127 = ptrtoint ptr %buf13.i92.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %buf.i86.i, ptr %buf13.i92.i, align 4
  %128 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %64, align 4
  %call.i93.i = call i32 @i2c_transfer(ptr noundef %129, ptr noundef nonnull %msg.i87.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i93.i)
  %cmp.not.i94.i = icmp eq i32 %call.i93.i, 1
  br i1 %cmp.not.i94.i, label %sp8870_writereg.exit85.i.sp8870_writereg.exit100.i_crit_edge, label %do.body.i96.i

sp8870_writereg.exit85.i.sp8870_writereg.exit100.i_crit_edge: ; preds = %sp8870_writereg.exit85.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit100.i

do.body.i96.i:                                    ; preds = %sp8870_writereg.exit85.i
  %130 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool.not.i95.i = icmp eq i32 %130, 0
  br i1 %tobool.not.i95.i, label %do.body.i96.i.sp8870_writereg.exit100.i_crit_edge, label %do.end.i98.i

do.body.i96.i.sp8870_writereg.exit100.i_crit_edge: ; preds = %do.body.i96.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit100.i

do.end.i98.i:                                     ; preds = %do.body.i96.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i97.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %call.i93.i, i32 noundef 777, i32 noundef 1024) #10
  br label %sp8870_writereg.exit100.i

sp8870_writereg.exit100.i:                        ; preds = %do.end.i98.i, %do.body.i96.i.sp8870_writereg.exit100.i_crit_edge, %sp8870_writereg.exit85.i.sp8870_writereg.exit100.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i87.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i86.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i101.i) #6
  %131 = ptrtoint ptr %buf.i101.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 3, ptr %buf.i101.i, align 1
  %132 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 10, ptr %17, align 1
  %133 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 0, ptr %18, align 1
  %134 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i102.i) #6
  %135 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 -1, ptr %20, align 4
  %136 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %config.i.i, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %137, align 4
  %conv12.i104.i = zext i8 %139 to i16
  %140 = ptrtoint ptr %msg.i102.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %conv12.i104.i, ptr %msg.i102.i, align 4
  %141 = ptrtoint ptr %flags.i105.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 0, ptr %flags.i105.i, align 2
  store i16 4, ptr %20, align 4
  %142 = ptrtoint ptr %buf13.i107.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %buf.i101.i, ptr %buf13.i107.i, align 4
  %143 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %64, align 4
  %call.i108.i = call i32 @i2c_transfer(ptr noundef %144, ptr noundef nonnull %msg.i102.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i108.i)
  %cmp.not.i109.i = icmp eq i32 %call.i108.i, 1
  br i1 %cmp.not.i109.i, label %sp8870_writereg.exit100.i.sp8870_writereg.exit115.i_crit_edge, label %do.body.i111.i

sp8870_writereg.exit100.i.sp8870_writereg.exit115.i_crit_edge: ; preds = %sp8870_writereg.exit100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit115.i

do.body.i111.i:                                   ; preds = %sp8870_writereg.exit100.i
  %145 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool.not.i110.i = icmp eq i32 %145, 0
  br i1 %tobool.not.i110.i, label %do.body.i111.i.sp8870_writereg.exit115.i_crit_edge, label %do.end.i113.i

do.body.i111.i.sp8870_writereg.exit115.i_crit_edge: ; preds = %do.body.i111.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit115.i

do.end.i113.i:                                    ; preds = %do.body.i111.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i112.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %call.i108.i, i32 noundef 778, i32 noundef 0) #10
  br label %sp8870_writereg.exit115.i

sp8870_writereg.exit115.i:                        ; preds = %do.end.i113.i, %do.body.i111.i.sp8870_writereg.exit115.i_crit_edge, %sp8870_writereg.exit100.i.sp8870_writereg.exit115.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i102.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i101.i) #6
  %146 = ptrtoint ptr %bandwidth_hz.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %bandwidth_hz.i, align 4
  %148 = zext i32 %147 to i64
  call void @__sanitizer_cov_trace_switch(i64 %148, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %147, label %if.else25.i [
    i32 6000000, label %if.then19.i
    i32 7000000, label %if.then23.i
  ]

if.then19.i:                                      ; preds = %sp8870_writereg.exit115.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i116.i) #6
  %149 = ptrtoint ptr %buf.i116.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 3, ptr %buf.i116.i, align 1
  %150 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 17, ptr %25, align 1
  %151 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 0, ptr %26, align 1
  %152 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 2, ptr %27, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i117.i) #6
  %153 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 -1, ptr %28, align 4
  %154 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %config.i.i, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %155, align 4
  %conv12.i119.i = zext i8 %157 to i16
  %158 = ptrtoint ptr %msg.i117.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %conv12.i119.i, ptr %msg.i117.i, align 4
  %159 = ptrtoint ptr %flags.i120.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 0, ptr %flags.i120.i, align 2
  store i16 4, ptr %28, align 4
  %160 = ptrtoint ptr %buf13.i122.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %buf.i116.i, ptr %buf13.i122.i, align 4
  %161 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %64, align 4
  %call.i123.i = call i32 @i2c_transfer(ptr noundef %162, ptr noundef nonnull %msg.i117.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i123.i)
  %cmp.not.i124.i = icmp eq i32 %call.i123.i, 1
  br i1 %cmp.not.i124.i, label %if.then19.i.sp8870_writereg.exit130.i_crit_edge, label %do.body.i126.i

if.then19.i.sp8870_writereg.exit130.i_crit_edge:  ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit130.i

do.body.i126.i:                                   ; preds = %if.then19.i
  %163 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool.not.i125.i = icmp eq i32 %163, 0
  br i1 %tobool.not.i125.i, label %do.body.i126.i.sp8870_writereg.exit130.i_crit_edge, label %do.end.i128.i

do.body.i126.i.sp8870_writereg.exit130.i_crit_edge: ; preds = %do.body.i126.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit130.i

do.end.i128.i:                                    ; preds = %do.body.i126.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i127.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %call.i123.i, i32 noundef 785, i32 noundef 2) #10
  br label %sp8870_writereg.exit130.i

sp8870_writereg.exit130.i:                        ; preds = %do.end.i128.i, %do.body.i126.i.sp8870_writereg.exit130.i_crit_edge, %if.then19.i.sp8870_writereg.exit130.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i117.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i116.i) #6
  br label %if.end28.i

if.then23.i:                                      ; preds = %sp8870_writereg.exit115.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i131.i) #6
  %164 = ptrtoint ptr %buf.i131.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 3, ptr %buf.i131.i, align 1
  %165 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 17, ptr %21, align 1
  %166 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 0, ptr %22, align 1
  %167 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 1, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i132.i) #6
  %168 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 -1, ptr %24, align 4
  %169 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %config.i.i, align 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %170, align 4
  %conv12.i134.i = zext i8 %172 to i16
  %173 = ptrtoint ptr %msg.i132.i to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 %conv12.i134.i, ptr %msg.i132.i, align 4
  %174 = ptrtoint ptr %flags.i135.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 0, ptr %flags.i135.i, align 2
  store i16 4, ptr %24, align 4
  %175 = ptrtoint ptr %buf13.i137.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %buf.i131.i, ptr %buf13.i137.i, align 4
  %176 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %64, align 4
  %call.i138.i = call i32 @i2c_transfer(ptr noundef %177, ptr noundef nonnull %msg.i132.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i138.i)
  %cmp.not.i139.i = icmp eq i32 %call.i138.i, 1
  br i1 %cmp.not.i139.i, label %if.then23.i.sp8870_writereg.exit145.i_crit_edge, label %do.body.i141.i

if.then23.i.sp8870_writereg.exit145.i_crit_edge:  ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit145.i

do.body.i141.i:                                   ; preds = %if.then23.i
  %178 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %tobool.not.i140.i = icmp eq i32 %178, 0
  br i1 %tobool.not.i140.i, label %do.body.i141.i.sp8870_writereg.exit145.i_crit_edge, label %do.end.i143.i

do.body.i141.i.sp8870_writereg.exit145.i_crit_edge: ; preds = %do.body.i141.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit145.i

do.end.i143.i:                                    ; preds = %do.body.i141.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i142.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %call.i138.i, i32 noundef 785, i32 noundef 1) #10
  br label %sp8870_writereg.exit145.i

sp8870_writereg.exit145.i:                        ; preds = %do.end.i143.i, %do.body.i141.i.sp8870_writereg.exit145.i_crit_edge, %if.then23.i.sp8870_writereg.exit145.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i132.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i131.i) #6
  br label %if.end28.i

if.else25.i:                                      ; preds = %sp8870_writereg.exit115.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i146.i) #6
  %179 = ptrtoint ptr %buf.i146.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 3, ptr %buf.i146.i, align 1
  %180 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 17, ptr %29, align 1
  %181 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 0, ptr %30, align 1
  %182 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 0, ptr %31, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i147.i) #6
  %183 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 -1, ptr %32, align 4
  %184 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %config.i.i, align 4
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %185, align 4
  %conv12.i149.i = zext i8 %187 to i16
  %188 = ptrtoint ptr %msg.i147.i to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 %conv12.i149.i, ptr %msg.i147.i, align 4
  %189 = ptrtoint ptr %flags.i150.i to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 0, ptr %flags.i150.i, align 2
  store i16 4, ptr %32, align 4
  %190 = ptrtoint ptr %buf13.i152.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %buf.i146.i, ptr %buf13.i152.i, align 4
  %191 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %64, align 4
  %call.i153.i = call i32 @i2c_transfer(ptr noundef %192, ptr noundef nonnull %msg.i147.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i153.i)
  %cmp.not.i154.i = icmp eq i32 %call.i153.i, 1
  br i1 %cmp.not.i154.i, label %if.else25.i.sp8870_writereg.exit160.i_crit_edge, label %do.body.i156.i

if.else25.i.sp8870_writereg.exit160.i_crit_edge:  ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit160.i

do.body.i156.i:                                   ; preds = %if.else25.i
  %193 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool.not.i155.i = icmp eq i32 %193, 0
  br i1 %tobool.not.i155.i, label %do.body.i156.i.sp8870_writereg.exit160.i_crit_edge, label %do.end.i158.i

do.body.i156.i.sp8870_writereg.exit160.i_crit_edge: ; preds = %do.body.i156.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit160.i

do.end.i158.i:                                    ; preds = %do.body.i156.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i157.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %call.i153.i, i32 noundef 785, i32 noundef 0) #10
  br label %sp8870_writereg.exit160.i

sp8870_writereg.exit160.i:                        ; preds = %do.end.i158.i, %do.body.i156.i.sp8870_writereg.exit160.i_crit_edge, %if.else25.i.sp8870_writereg.exit160.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i147.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i146.i) #6
  br label %if.end28.i

if.end28.i:                                       ; preds = %sp8870_writereg.exit160.i, %sp8870_writereg.exit145.i, %sp8870_writereg.exit130.i
  %194 = ptrtoint ptr %transmission_mode.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %transmission_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %cmp29.i = icmp eq i32 %195, 0
  br i1 %cmp29.i, label %if.then30.i, label %if.else32.i

if.then30.i:                                      ; preds = %if.end28.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i161.i) #6
  %196 = ptrtoint ptr %buf.i161.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 3, ptr %buf.i161.i, align 1
  %197 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 56, ptr %37, align 1
  %198 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 0, ptr %38, align 1
  %199 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 0, ptr %39, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i162.i) #6
  %200 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 327679, ptr %40, align 4
  %201 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %config.i.i, align 4
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %202, align 4
  %conv12.i164.i = zext i8 %204 to i16
  %205 = ptrtoint ptr %msg.i162.i to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 %conv12.i164.i, ptr %msg.i162.i, align 4
  %206 = ptrtoint ptr %flags.i165.i to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 0, ptr %flags.i165.i, align 2
  %207 = ptrtoint ptr %buf13.i167.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %buf.i161.i, ptr %buf13.i167.i, align 4
  %208 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %64, align 4
  %call.i168.i = call i32 @i2c_transfer(ptr noundef %209, ptr noundef nonnull %msg.i162.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i168.i)
  %cmp.not.i169.i = icmp eq i32 %call.i168.i, 1
  br i1 %cmp.not.i169.i, label %if.then30.i.sp8870_writereg.exit175.i_crit_edge, label %do.body.i171.i

if.then30.i.sp8870_writereg.exit175.i_crit_edge:  ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit175.i

do.body.i171.i:                                   ; preds = %if.then30.i
  %210 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %tobool.not.i170.i = icmp eq i32 %210, 0
  br i1 %tobool.not.i170.i, label %do.body.i171.i.sp8870_writereg.exit175.i_crit_edge, label %do.end.i173.i

do.body.i171.i.sp8870_writereg.exit175.i_crit_edge: ; preds = %do.body.i171.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit175.i

do.end.i173.i:                                    ; preds = %do.body.i171.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i172.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %call.i168.i, i32 noundef 824, i32 noundef 0) #10
  br label %sp8870_writereg.exit175.i

sp8870_writereg.exit175.i:                        ; preds = %do.end.i173.i, %do.body.i171.i.sp8870_writereg.exit175.i_crit_edge, %if.then30.i.sp8870_writereg.exit175.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i162.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i161.i) #6
  br label %if.end34.i

if.else32.i:                                      ; preds = %if.end28.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i176.i) #6
  %211 = ptrtoint ptr %buf.i176.i to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 3, ptr %buf.i176.i, align 1
  %212 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 56, ptr %33, align 1
  %213 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 0, ptr %34, align 1
  %214 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 1, ptr %35, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i177.i) #6
  %215 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 327679, ptr %36, align 4
  %216 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %config.i.i, align 4
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %217, align 4
  %conv12.i179.i = zext i8 %219 to i16
  %220 = ptrtoint ptr %msg.i177.i to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 %conv12.i179.i, ptr %msg.i177.i, align 4
  %221 = ptrtoint ptr %flags.i180.i to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 0, ptr %flags.i180.i, align 2
  %222 = ptrtoint ptr %buf13.i182.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %buf.i176.i, ptr %buf13.i182.i, align 4
  %223 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %64, align 4
  %call.i183.i = call i32 @i2c_transfer(ptr noundef %224, ptr noundef nonnull %msg.i177.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i183.i)
  %cmp.not.i184.i = icmp eq i32 %call.i183.i, 1
  br i1 %cmp.not.i184.i, label %if.else32.i.sp8870_writereg.exit190.i_crit_edge, label %do.body.i186.i

if.else32.i.sp8870_writereg.exit190.i_crit_edge:  ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit190.i

do.body.i186.i:                                   ; preds = %if.else32.i
  %225 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %tobool.not.i185.i = icmp eq i32 %225, 0
  br i1 %tobool.not.i185.i, label %do.body.i186.i.sp8870_writereg.exit190.i_crit_edge, label %do.end.i188.i

do.body.i186.i.sp8870_writereg.exit190.i_crit_edge: ; preds = %do.body.i186.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit190.i

do.end.i188.i:                                    ; preds = %do.body.i186.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i187.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %call.i183.i, i32 noundef 824, i32 noundef 1) #10
  br label %sp8870_writereg.exit190.i

sp8870_writereg.exit190.i:                        ; preds = %do.end.i188.i, %do.body.i186.i.sp8870_writereg.exit190.i_crit_edge, %if.else32.i.sp8870_writereg.exit190.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i177.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i176.i) #6
  br label %if.end34.i

if.end34.i:                                       ; preds = %sp8870_writereg.exit190.i, %sp8870_writereg.exit175.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i191.i) #6
  %226 = ptrtoint ptr %buf.i191.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 12, ptr %buf.i191.i, align 1
  %227 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 5, ptr %41, align 1
  %conv5.i.i = zext i16 %81 to i32
  %228 = lshr i16 %reg0xc05.4.i, 8
  %conv7.i.i = trunc i16 %228 to i8
  %229 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %conv7.i.i, ptr %42, align 1
  %conv11.i.i = trunc i16 %81 to i8
  %230 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %conv11.i.i, ptr %43, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i192.i) #6
  %231 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 327679, ptr %44, align 4
  %232 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %config.i.i, align 4
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %233, align 4
  %conv12.i194.i = zext i8 %235 to i16
  %236 = ptrtoint ptr %msg.i192.i to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 %conv12.i194.i, ptr %msg.i192.i, align 4
  %237 = ptrtoint ptr %flags.i195.i to i32
  call void @__asan_store2_noabort(i32 %237)
  store i16 0, ptr %flags.i195.i, align 2
  %238 = ptrtoint ptr %buf13.i197.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %buf.i191.i, ptr %buf13.i197.i, align 4
  %239 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %64, align 4
  %call.i198.i = call i32 @i2c_transfer(ptr noundef %240, ptr noundef nonnull %msg.i192.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i198.i)
  %cmp.not.i199.i = icmp eq i32 %call.i198.i, 1
  br i1 %cmp.not.i199.i, label %if.end34.i.sp8870_writereg.exit205.i_crit_edge, label %do.body.i201.i

if.end34.i.sp8870_writereg.exit205.i_crit_edge:   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit205.i

do.body.i201.i:                                   ; preds = %if.end34.i
  %241 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %tobool.not.i200.i = icmp eq i32 %241, 0
  br i1 %tobool.not.i200.i, label %do.body.i201.i.sp8870_writereg.exit205.i_crit_edge, label %do.end.i203.i

do.body.i201.i.sp8870_writereg.exit205.i_crit_edge: ; preds = %do.body.i201.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit205.i

do.end.i203.i:                                    ; preds = %do.body.i201.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i202.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %call.i198.i, i32 noundef 3077, i32 noundef %conv5.i.i) #10
  br label %sp8870_writereg.exit205.i

sp8870_writereg.exit205.i:                        ; preds = %do.end.i203.i, %do.body.i201.i.sp8870_writereg.exit205.i_crit_edge, %if.end34.i.sp8870_writereg.exit205.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i192.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i191.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i.i) #6
  %242 = ptrtoint ptr %b0.i.i to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 2, ptr %b0.i.i, align 1
  %243 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 0, ptr %45, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i.i) #6
  %244 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_store2_noabort(i32 %244)
  store i16 0, ptr %b1.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i206.i) #6
  %245 = call ptr @memset(ptr %46, i32 255, i32 16)
  %246 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %config.i.i, align 4
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %247, align 4
  %conv5.i208.i = zext i8 %249 to i16
  %250 = ptrtoint ptr %msg.i206.i to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 %conv5.i208.i, ptr %msg.i206.i, align 4
  %251 = ptrtoint ptr %flags.i209.i to i32
  call void @__asan_store2_noabort(i32 %251)
  store i16 0, ptr %flags.i209.i, align 2
  %252 = ptrtoint ptr %46 to i32
  call void @__asan_store2_noabort(i32 %252)
  store i16 2, ptr %46, align 4
  %253 = ptrtoint ptr %buf.i211.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %b0.i.i, ptr %buf.i211.i, align 4
  %254 = load i8, ptr %247, align 4
  %conv10.i.i = zext i8 %254 to i16
  %255 = ptrtoint ptr %arrayinit.element6.i.i to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 %conv10.i.i, ptr %arrayinit.element6.i.i, align 4
  %256 = ptrtoint ptr %flags11.i.i to i32
  call void @__asan_store2_noabort(i32 %256)
  store i16 1, ptr %flags11.i.i, align 2
  %257 = ptrtoint ptr %len12.i.i to i32
  call void @__asan_store2_noabort(i32 %257)
  store i16 2, ptr %len12.i.i, align 4
  %258 = ptrtoint ptr %buf13.i212.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %b1.i.i, ptr %buf13.i212.i, align 4
  %259 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %64, align 4
  %call.i213.i = call i32 @i2c_transfer(ptr noundef %260, ptr noundef nonnull %msg.i206.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i213.i)
  %cmp.not.i214.i = icmp eq i32 %call.i213.i, 2
  br i1 %cmp.not.i214.i, label %sp8870_readreg.exit.i, label %do.body.i216.i

do.body.i216.i:                                   ; preds = %sp8870_writereg.exit205.i
  %261 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %261)
  %tobool.not.i215.i = icmp eq i32 %261, 0
  br i1 %tobool.not.i215.i, label %do.body.i216.i.sp8870_readreg.exit.thread.i_crit_edge, label %do.end.i218.i

do.body.i216.i.sp8870_readreg.exit.thread.i_crit_edge: ; preds = %do.body.i216.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_readreg.exit.thread.i

do.end.i218.i:                                    ; preds = %do.body.i216.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i217.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i213.i) #10
  br label %sp8870_readreg.exit.thread.i

sp8870_readreg.exit.thread.i:                     ; preds = %do.end.i218.i, %do.body.i216.i.sp8870_readreg.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i206.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i.i) #6
  br label %cleanup

sp8870_readreg.exit.i:                            ; preds = %sp8870_writereg.exit205.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i206.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i) #6
  %262 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 15, ptr %buf.i.i.i, align 1
  %263 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 8, ptr %47, align 1
  %264 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 0, ptr %48, align 1
  %265 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 0, ptr %49, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #6
  %266 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 327679, ptr %50, align 4
  %267 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %config.i.i, align 4
  %269 = ptrtoint ptr %268 to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %268, align 4
  %conv12.i.i.i = zext i8 %270 to i16
  %271 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %271)
  store i16 %conv12.i.i.i, ptr %msg.i.i.i, align 4
  %272 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %272)
  store i16 0, ptr %flags.i.i.i, align 2
  %273 = ptrtoint ptr %buf13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr %buf.i.i.i, ptr %buf13.i.i.i, align 4
  %274 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %64, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %275, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp.not.i.i.i, label %sp8870_readreg.exit.i.sp8870_writereg.exit.i.i_crit_edge, label %do.body.i.i.i

sp8870_readreg.exit.i.sp8870_writereg.exit.i.i_crit_edge: ; preds = %sp8870_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit.i.i

do.body.i.i.i:                                    ; preds = %sp8870_readreg.exit.i
  %276 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %276)
  %tobool.not.i.i.i = icmp eq i32 %276, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.sp8870_writereg.exit.i.i_crit_edge, label %do.end.i.i.i

do.body.i.i.i.sp8870_writereg.exit.i.i_crit_edge: ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit.i.i

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %call.i.i.i, i32 noundef 3848, i32 noundef 0) #10
  br label %sp8870_writereg.exit.i.i

sp8870_writereg.exit.i.i:                         ; preds = %do.end.i.i.i, %do.body.i.i.i.sp8870_writereg.exit.i.i_crit_edge, %sp8870_readreg.exit.i.sp8870_writereg.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i7.i.i) #6
  %277 = ptrtoint ptr %buf.i7.i.i to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 15, ptr %buf.i7.i.i, align 1
  %278 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 9, ptr %51, align 1
  %279 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 0, ptr %52, align 1
  %280 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 0, ptr %53, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i8.i.i) #6
  %281 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 327679, ptr %54, align 4
  %282 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %config.i.i, align 4
  %284 = ptrtoint ptr %283 to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %283, align 4
  %conv12.i10.i.i = zext i8 %285 to i16
  %286 = ptrtoint ptr %msg.i8.i.i to i32
  call void @__asan_store2_noabort(i32 %286)
  store i16 %conv12.i10.i.i, ptr %msg.i8.i.i, align 4
  %287 = ptrtoint ptr %flags.i11.i.i to i32
  call void @__asan_store2_noabort(i32 %287)
  store i16 0, ptr %flags.i11.i.i, align 2
  %288 = ptrtoint ptr %buf13.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr %buf.i7.i.i, ptr %buf13.i13.i.i, align 4
  %289 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %64, align 4
  %call.i14.i.i = call i32 @i2c_transfer(ptr noundef %290, ptr noundef nonnull %msg.i8.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i14.i.i)
  %cmp.not.i15.i.i = icmp eq i32 %call.i14.i.i, 1
  br i1 %cmp.not.i15.i.i, label %sp8870_writereg.exit.i.i.sp8870_writereg.exit21.i.i_crit_edge, label %do.body.i17.i.i

sp8870_writereg.exit.i.i.sp8870_writereg.exit21.i.i_crit_edge: ; preds = %sp8870_writereg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit21.i.i

do.body.i17.i.i:                                  ; preds = %sp8870_writereg.exit.i.i
  %291 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %291)
  %tobool.not.i16.i.i = icmp eq i32 %291, 0
  br i1 %tobool.not.i16.i.i, label %do.body.i17.i.i.sp8870_writereg.exit21.i.i_crit_edge, label %do.end.i19.i.i

do.body.i17.i.i.sp8870_writereg.exit21.i.i_crit_edge: ; preds = %do.body.i17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit21.i.i

do.end.i19.i.i:                                   ; preds = %do.body.i17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i18.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %call.i14.i.i, i32 noundef 3849, i32 noundef 0) #10
  br label %sp8870_writereg.exit21.i.i

sp8870_writereg.exit21.i.i:                       ; preds = %do.end.i19.i.i, %do.body.i17.i.i.sp8870_writereg.exit21.i.i_crit_edge, %sp8870_writereg.exit.i.i.sp8870_writereg.exit21.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i8.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i7.i.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i22.i.i) #6
  %292 = ptrtoint ptr %buf.i22.i.i to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 15, ptr %buf.i22.i.i, align 1
  %293 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 0, ptr %55, align 1
  %294 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 0, ptr %56, align 1
  %295 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 1, ptr %57, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i23.i.i) #6
  %296 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 327679, ptr %58, align 4
  %297 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %config.i.i, align 4
  %299 = ptrtoint ptr %298 to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %298, align 4
  %conv12.i25.i.i = zext i8 %300 to i16
  %301 = ptrtoint ptr %msg.i23.i.i to i32
  call void @__asan_store2_noabort(i32 %301)
  store i16 %conv12.i25.i.i, ptr %msg.i23.i.i, align 4
  %302 = ptrtoint ptr %flags.i26.i.i to i32
  call void @__asan_store2_noabort(i32 %302)
  store i16 0, ptr %flags.i26.i.i, align 2
  %303 = ptrtoint ptr %buf13.i28.i.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %buf.i22.i.i, ptr %buf13.i28.i.i, align 4
  %304 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %64, align 4
  %call.i29.i.i = call i32 @i2c_transfer(ptr noundef %305, ptr noundef nonnull %msg.i23.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i29.i.i)
  %cmp.not.i30.i.i = icmp eq i32 %call.i29.i.i, 1
  br i1 %cmp.not.i30.i.i, label %sp8870_writereg.exit21.i.i.sp8870_writereg.exit36.i.i_crit_edge, label %do.body.i32.i.i

sp8870_writereg.exit21.i.i.sp8870_writereg.exit36.i.i_crit_edge: ; preds = %sp8870_writereg.exit21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit36.i.i

do.body.i32.i.i:                                  ; preds = %sp8870_writereg.exit21.i.i
  %306 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %306)
  %tobool.not.i31.i.i = icmp eq i32 %306, 0
  br i1 %tobool.not.i31.i.i, label %do.body.i32.i.i.sp8870_writereg.exit36.i.i_crit_edge, label %do.end.i34.i.i

do.body.i32.i.i.sp8870_writereg.exit36.i.i_crit_edge: ; preds = %do.body.i32.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit36.i.i

do.end.i34.i.i:                                   ; preds = %do.body.i32.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i33.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %call.i29.i.i, i32 noundef 3840, i32 noundef 1) #10
  br label %sp8870_writereg.exit36.i.i

sp8870_writereg.exit36.i.i:                       ; preds = %do.end.i34.i.i, %do.body.i32.i.i.sp8870_writereg.exit36.i.i_crit_edge, %sp8870_writereg.exit21.i.i.sp8870_writereg.exit36.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i23.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i22.i.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i.i.i) #6
  %307 = ptrtoint ptr %b0.i.i.i to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 13, ptr %b0.i.i.i, align 1
  %308 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 1, ptr %59, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i.i.i) #6
  %309 = ptrtoint ptr %b1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %309)
  store i16 0, ptr %b1.i.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i37.i.i) #6
  %310 = call ptr @memset(ptr %60, i32 255, i32 16)
  %311 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %config.i.i, align 4
  %313 = ptrtoint ptr %312 to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %312, align 4
  %conv5.i.i.i = zext i8 %314 to i16
  %315 = ptrtoint ptr %msg.i37.i.i to i32
  call void @__asan_store2_noabort(i32 %315)
  store i16 %conv5.i.i.i, ptr %msg.i37.i.i, align 4
  %316 = ptrtoint ptr %flags.i39.i.i to i32
  call void @__asan_store2_noabort(i32 %316)
  store i16 0, ptr %flags.i39.i.i, align 2
  %317 = ptrtoint ptr %60 to i32
  call void @__asan_store2_noabort(i32 %317)
  store i16 2, ptr %60, align 4
  %318 = ptrtoint ptr %buf.i41.i.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store ptr %b0.i.i.i, ptr %buf.i41.i.i, align 4
  %319 = load i8, ptr %312, align 4
  %conv10.i.i.i = zext i8 %319 to i16
  %320 = ptrtoint ptr %arrayinit.element6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %320)
  store i16 %conv10.i.i.i, ptr %arrayinit.element6.i.i.i, align 4
  %321 = ptrtoint ptr %flags11.i.i.i to i32
  call void @__asan_store2_noabort(i32 %321)
  store i16 1, ptr %flags11.i.i.i, align 2
  %322 = ptrtoint ptr %len12.i.i.i to i32
  call void @__asan_store2_noabort(i32 %322)
  store i16 2, ptr %len12.i.i.i, align 4
  %323 = ptrtoint ptr %buf13.i42.i.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr %b1.i.i.i, ptr %buf13.i42.i.i, align 4
  %324 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %64, align 4
  %call.i43.i.i = call i32 @i2c_transfer(ptr noundef %325, ptr noundef nonnull %msg.i37.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i43.i.i)
  %cmp.not.i44.i.i = icmp eq i32 %call.i43.i.i, 2
  br i1 %cmp.not.i44.i.i, label %sp8870_writereg.exit36.i.i.sp8870_set_frontend_parameters.exit_crit_edge, label %do.body.i46.i.i

sp8870_writereg.exit36.i.i.sp8870_set_frontend_parameters.exit_crit_edge: ; preds = %sp8870_writereg.exit36.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_set_frontend_parameters.exit

do.body.i46.i.i:                                  ; preds = %sp8870_writereg.exit36.i.i
  %326 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %326)
  %tobool.not.i45.i.i = icmp eq i32 %326, 0
  br i1 %tobool.not.i45.i.i, label %do.body.i46.i.i.sp8870_set_frontend_parameters.exit_crit_edge, label %do.end.i48.i.i

do.body.i46.i.i.sp8870_set_frontend_parameters.exit_crit_edge: ; preds = %do.body.i46.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_set_frontend_parameters.exit

do.end.i48.i.i:                                   ; preds = %do.body.i46.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i47.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i43.i.i) #10
  br label %sp8870_set_frontend_parameters.exit

sp8870_set_frontend_parameters.exit:              ; preds = %do.end.i48.i.i, %do.body.i46.i.i.sp8870_set_frontend_parameters.exit_crit_edge, %sp8870_writereg.exit36.i.i.sp8870_set_frontend_parameters.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i37.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i.i.i) #6
  br label %for.body10

for.body10:                                       ; preds = %if.end25.for.body10_crit_edge, %sp8870_set_frontend_parameters.exit
  %check_count.0115 = phi i32 [ 0, %sp8870_set_frontend_parameters.exit ], [ %inc, %if.end25.for.body10_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i.i82) #6
  %327 = ptrtoint ptr %b0.i.i82 to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 13, ptr %b0.i.i82, align 1
  %328 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 2, ptr %61, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i.i83) #6
  %329 = ptrtoint ptr %b1.i.i83 to i32
  call void @__asan_store2_noabort(i32 %329)
  store i16 0, ptr %b1.i.i83, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i84) #6
  %330 = call ptr @memset(ptr %62, i32 255, i32 16)
  %331 = ptrtoint ptr %config.i.i85 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %config.i.i85, align 4
  %333 = ptrtoint ptr %332 to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %332, align 4
  %conv5.i.i86 = zext i8 %334 to i16
  %335 = ptrtoint ptr %msg.i.i84 to i32
  call void @__asan_store2_noabort(i32 %335)
  store i16 %conv5.i.i86, ptr %msg.i.i84, align 4
  %336 = ptrtoint ptr %flags.i.i87 to i32
  call void @__asan_store2_noabort(i32 %336)
  store i16 0, ptr %flags.i.i87, align 2
  %337 = ptrtoint ptr %62 to i32
  call void @__asan_store2_noabort(i32 %337)
  store i16 2, ptr %62, align 4
  %338 = ptrtoint ptr %buf.i.i88 to i32
  call void @__asan_store4_noabort(i32 %338)
  store ptr %b0.i.i82, ptr %buf.i.i88, align 4
  %339 = load i8, ptr %332, align 4
  %conv10.i.i90 = zext i8 %339 to i16
  %340 = ptrtoint ptr %arrayinit.element6.i.i89 to i32
  call void @__asan_store2_noabort(i32 %340)
  store i16 %conv10.i.i90, ptr %arrayinit.element6.i.i89, align 4
  %341 = ptrtoint ptr %flags11.i.i91 to i32
  call void @__asan_store2_noabort(i32 %341)
  store i16 1, ptr %flags11.i.i91, align 2
  %342 = ptrtoint ptr %len12.i.i92 to i32
  call void @__asan_store2_noabort(i32 %342)
  store i16 2, ptr %len12.i.i92, align 4
  %343 = ptrtoint ptr %buf13.i.i93 to i32
  call void @__asan_store4_noabort(i32 %343)
  store ptr %b1.i.i83, ptr %buf13.i.i93, align 4
  %344 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %1, align 4
  %call.i.i94 = call i32 @i2c_transfer(ptr noundef %345, ptr noundef nonnull %msg.i.i84, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i94)
  %cmp.not.i.i95 = icmp eq i32 %call.i.i94, 2
  br i1 %cmp.not.i.i95, label %sp8870_read_data_valid_signal.exit, label %do.body.i.i97

do.body.i.i97:                                    ; preds = %for.body10
  %346 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %346)
  %tobool.not.i.i96 = icmp eq i32 %346, 0
  br i1 %tobool.not.i.i96, label %do.body.i.i97.sp8870_read_data_valid_signal.exit.thread_crit_edge, label %do.end.i.i99

do.body.i.i97.sp8870_read_data_valid_signal.exit.thread_crit_edge: ; preds = %do.body.i.i97
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_read_data_valid_signal.exit.thread

do.end.i.i99:                                     ; preds = %do.body.i.i97
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i.i98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i.i94) #10
  br label %sp8870_read_data_valid_signal.exit.thread

sp8870_read_data_valid_signal.exit.thread:        ; preds = %do.end.i.i99, %do.body.i.i97.sp8870_read_data_valid_signal.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i84) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i.i83) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i.i82) #6
  br label %if.end25

sp8870_read_data_valid_signal.exit:               ; preds = %for.body10
  %347 = ptrtoint ptr %b1.i.i83 to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %b1.i.i83, align 2
  %conv23.i.i = zext i8 %348 to i32
  %shl.i.i = shl nuw nsw i32 %conv23.i.i, 8
  %349 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %arrayidx24.i.i, align 1
  %conv25.i.i = zext i8 %350 to i32
  %or.i.i = or i32 %shl.i.i, %conv25.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %phi.cmp.i.not = icmp eq i32 %or.i.i, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i84) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i.i83) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i.i82) #6
  br i1 %phi.cmp.i.not, label %sp8870_read_data_valid_signal.exit.if.end25_crit_edge, label %do.body14

sp8870_read_data_valid_signal.exit.if.end25_crit_edge: ; preds = %sp8870_read_data_valid_signal.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

do.body14:                                        ; preds = %sp8870_read_data_valid_signal.exit
  %351 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %351)
  %tobool15.not = icmp eq i32 %351, 0
  br i1 %tobool15.not, label %do.body14.cleanup_crit_edge, label %if.end39

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %sp8870_read_data_valid_signal.exit.if.end25_crit_edge, %sp8870_read_data_valid_signal.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %352 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %352(i32 noundef 2147480) #6
  %inc = add nuw nsw i32 %check_count.0115, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %for.inc29, label %if.end25.for.body10_crit_edge

if.end25.for.body10_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body10

for.inc29:                                        ; preds = %if.end25
  %inc30 = add nuw nsw i32 %trials.0117, 1
  %exitcond124.not = icmp eq i32 %inc30, 6
  br i1 %exitcond124.not, label %do.end36, label %for.inc29.for.body_crit_edge

for.inc29.for.body_crit_edge:                     ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.end36:                                         ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #8
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.32) #10
  br label %cleanup

if.end39:                                         ; preds = %do.body14
  %mul = mul i32 %check_count.0115, 10
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32, i32 noundef %mul) #10
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool40.not = icmp eq i32 %.pr, 0
  br i1 %tobool40.not, label %if.end39.cleanup_crit_edge, label %if.then43

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %trials.0117)
  %cmp44 = icmp ugt i32 %trials.0117, 1
  br i1 %cmp44, label %do.end48, label %if.then43.if.end58_crit_edge

if.then43.if.end58_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

do.end48:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #8
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.32) #10
  %sub = add nsw i32 %trials.0117, -1
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.32, i32 noundef %sub) #10
  %353 = load i32, ptr @lockups, align 4
  %inc56 = add i32 %353, 1
  store i32 %inc56, ptr @lockups, align 4
  br label %if.end58

if.end58:                                         ; preds = %do.end48, %if.then43.if.end58_crit_edge
  %354 = load i32, ptr @switches, align 4
  %inc59 = add i32 %354, 1
  store i32 %inc59, ptr @switches, align 4
  %355 = load i32, ptr @lockups, align 4
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.32, i32 noundef %inc59, i32 noundef %355) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.end39.cleanup_crit_edge, %do.end36, %do.body14.cleanup_crit_edge, %sp8870_readreg.exit.thread.i, %sw.epilog21.i.i.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end36 ], [ 0, %if.end58 ], [ 0, %if.end39.cleanup_crit_edge ], [ -1, %sp8870_readreg.exit.thread.i ], [ 0, %do.body14.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ], [ -22, %sw.epilog21.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sp8870_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %fesettings) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fesettings to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 350, ptr %fesettings, align 4
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
define internal i32 @sp8870_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %fe_status) #0 align 64 {
entry:
  %b0.i25 = alloca [2 x i8], align 1
  %b1.i26 = alloca [2 x i8], align 2
  %msg.i27 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [2 x i8], align 1
  %b1.i = alloca [2 x i8], align 2
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %fe_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %fe_status, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i) #6
  %3 = getelementptr inbounds [2 x i8], ptr %b0.i, i32 0, i32 1
  %4 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %b0.i, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i) #6
  %6 = ptrtoint ptr %b1.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %b1.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.sp8870_state, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4
  %conv5.i = zext i8 %12 to i16
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv5.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %7, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %17 = load i8, ptr %10, align 4
  %conv10.i = zext i8 %17 to i16
  %18 = ptrtoint ptr %arrayinit.element6.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv10.i, ptr %arrayinit.element6.i, align 4
  %flags11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %19 = ptrtoint ptr %flags11.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flags11.i, align 2
  %len12.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %20 = ptrtoint ptr %len12.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %len12.i, align 4
  %buf13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %21 = ptrtoint ptr %buf13.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %b1.i, ptr %buf13.i, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %sp8870_readreg.exit, label %do.body.i

do.body.i:                                        ; preds = %entry
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %do.body.i.sp8870_readreg.exit.thread_crit_edge, label %do.end.i

do.body.i.sp8870_readreg.exit.thread_crit_edge:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_readreg.exit.thread

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i) #10
  br label %sp8870_readreg.exit.thread

sp8870_readreg.exit.thread:                       ; preds = %do.end.i, %do.body.i.sp8870_readreg.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #6
  br label %cleanup

sp8870_readreg.exit:                              ; preds = %entry
  %arrayidx24.i = getelementptr inbounds [2 x i8], ptr %b1.i, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx24.i, align 1
  %conv25.i = zext i8 %26 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i25) #6
  %27 = getelementptr inbounds [2 x i8], ptr %b0.i25, i32 0, i32 1
  %28 = ptrtoint ptr %b0.i25 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 3, ptr %b0.i25, align 1
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 3, ptr %27, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i26) #6
  %30 = ptrtoint ptr %b1.i26 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %b1.i26, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i27) #6
  %31 = getelementptr inbounds i8, ptr %msg.i27, i32 4
  %32 = call ptr @memset(ptr %31, i32 255, i32 16)
  %33 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %config.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 4
  %conv5.i29 = zext i8 %36 to i16
  %37 = ptrtoint ptr %msg.i27 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv5.i29, ptr %msg.i27, align 4
  %flags.i30 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i27, i32 0, i32 1
  %38 = ptrtoint ptr %flags.i30 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %flags.i30, align 2
  %39 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 2, ptr %31, align 4
  %buf.i32 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i27, i32 0, i32 3
  %40 = ptrtoint ptr %buf.i32 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %b0.i25, ptr %buf.i32, align 4
  %arrayinit.element6.i33 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i27, i32 1
  %41 = load i8, ptr %34, align 4
  %conv10.i34 = zext i8 %41 to i16
  %42 = ptrtoint ptr %arrayinit.element6.i33 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv10.i34, ptr %arrayinit.element6.i33, align 4
  %flags11.i35 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i27, i32 1, i32 1
  %43 = ptrtoint ptr %flags11.i35 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 1, ptr %flags11.i35, align 2
  %len12.i36 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i27, i32 1, i32 2
  %44 = ptrtoint ptr %len12.i36 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 2, ptr %len12.i36, align 4
  %buf13.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i27, i32 1, i32 3
  %45 = ptrtoint ptr %buf13.i37 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %b1.i26, ptr %buf13.i37, align 4
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %call.i38 = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %msg.i27, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i38)
  %cmp.not.i39 = icmp eq i32 %call.i38, 2
  br i1 %cmp.not.i39, label %sp8870_readreg.exit51, label %do.body.i41

do.body.i41:                                      ; preds = %sp8870_readreg.exit
  %48 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i40 = icmp eq i32 %48, 0
  br i1 %tobool.not.i40, label %do.body.i41.sp8870_readreg.exit51.thread_crit_edge, label %do.end.i43

do.body.i41.sp8870_readreg.exit51.thread_crit_edge: ; preds = %do.body.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_readreg.exit51.thread

do.end.i43:                                       ; preds = %do.body.i41
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i38) #10
  br label %sp8870_readreg.exit51.thread

sp8870_readreg.exit51.thread:                     ; preds = %do.end.i43, %do.body.i41.sp8870_readreg.exit51.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i27) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i26) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i25) #6
  br label %cleanup

sp8870_readreg.exit51:                            ; preds = %sp8870_readreg.exit
  %49 = ptrtoint ptr %b1.i26 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %b1.i26, align 2
  %arrayidx24.i46 = getelementptr inbounds [2 x i8], ptr %b1.i26, i32 0, i32 1
  %51 = ptrtoint ptr %arrayidx24.i46 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx24.i46, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i27) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i26) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i25) #6
  %conv23.i44 = zext i8 %50 to i32
  %shl.i45 = shl nuw nsw i32 %conv23.i44, 8
  %conv25.i47 = zext i8 %52 to i32
  %or.i48 = or i32 %shl.i45, %conv25.i47
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %or.i48)
  %cmp5 = icmp ugt i32 %or.i48, 15
  br i1 %cmp5, label %if.then6, label %sp8870_readreg.exit51.if.end7_crit_edge

sp8870_readreg.exit51.if.end7_crit_edge:          ; preds = %sp8870_readreg.exit51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %sp8870_readreg.exit51
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fe_status, align 4
  %or = or i32 %54, 1
  store i32 %or, ptr %fe_status, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %sp8870_readreg.exit51.if.end7_crit_edge
  %and = and i32 %conv25.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7.if.end10_crit_edge, label %if.then8

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fe_status, align 4
  %or9 = or i32 %56, 8
  store i32 %or9, ptr %fe_status, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end7.if.end10_crit_edge
  %and11 = and i32 %conv25.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.then13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fe_status, align 4
  %or14 = or i32 %58, 22
  store i32 %or14, ptr %fe_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end10.cleanup_crit_edge, %sp8870_readreg.exit51.thread, %sp8870_readreg.exit.thread
  %retval.0 = phi i32 [ 0, %if.then13 ], [ 0, %if.end10.cleanup_crit_edge ], [ -5, %sp8870_readreg.exit.thread ], [ -5, %sp8870_readreg.exit51.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sp8870_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  %b0.i16 = alloca [2 x i8], align 1
  %b1.i17 = alloca [2 x i8], align 2
  %msg.i18 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [2 x i8], align 1
  %b1.i = alloca [2 x i8], align 2
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ber, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i) #6
  %3 = getelementptr inbounds [2 x i8], ptr %b0.i, i32 0, i32 1
  %4 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 12, ptr %b0.i, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 8, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i) #6
  %6 = ptrtoint ptr %b1.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %b1.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.sp8870_state, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4
  %conv5.i = zext i8 %12 to i16
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv5.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %7, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %17 = load i8, ptr %10, align 4
  %conv10.i = zext i8 %17 to i16
  %18 = ptrtoint ptr %arrayinit.element6.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv10.i, ptr %arrayinit.element6.i, align 4
  %flags11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %19 = ptrtoint ptr %flags11.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flags11.i, align 2
  %len12.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %20 = ptrtoint ptr %len12.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %len12.i, align 4
  %buf13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %21 = ptrtoint ptr %buf13.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %b1.i, ptr %buf13.i, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %sp8870_readreg.exit, label %do.body.i

do.body.i:                                        ; preds = %entry
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %do.body.i.sp8870_readreg.exit.thread_crit_edge, label %do.end.i

do.body.i.sp8870_readreg.exit.thread_crit_edge:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_readreg.exit.thread

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i) #10
  br label %sp8870_readreg.exit.thread

sp8870_readreg.exit.thread:                       ; preds = %do.end.i, %do.body.i.sp8870_readreg.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #6
  br label %cleanup

sp8870_readreg.exit:                              ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i16) #6
  %25 = getelementptr inbounds [2 x i8], ptr %b0.i16, i32 0, i32 1
  %26 = ptrtoint ptr %b0.i16 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 12, ptr %b0.i16, align 1
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 7, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i17) #6
  %28 = ptrtoint ptr %b1.i17 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %b1.i17, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i18) #6
  %29 = getelementptr inbounds i8, ptr %msg.i18, i32 4
  %30 = call ptr @memset(ptr %29, i32 255, i32 16)
  %31 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %config.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 4
  %conv5.i20 = zext i8 %34 to i16
  %35 = ptrtoint ptr %msg.i18 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv5.i20, ptr %msg.i18, align 4
  %flags.i21 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i21 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i21, align 2
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 2, ptr %29, align 4
  %buf.i23 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18, i32 0, i32 3
  %38 = ptrtoint ptr %buf.i23 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %b0.i16, ptr %buf.i23, align 4
  %arrayinit.element6.i24 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18, i32 1
  %39 = load i8, ptr %32, align 4
  %conv10.i25 = zext i8 %39 to i16
  %40 = ptrtoint ptr %arrayinit.element6.i24 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv10.i25, ptr %arrayinit.element6.i24, align 4
  %flags11.i26 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18, i32 1, i32 1
  %41 = ptrtoint ptr %flags11.i26 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %flags11.i26, align 2
  %len12.i27 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18, i32 1, i32 2
  %42 = ptrtoint ptr %len12.i27 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 2, ptr %len12.i27, align 4
  %buf13.i28 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18, i32 1, i32 3
  %43 = ptrtoint ptr %buf13.i28 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %b1.i17, ptr %buf13.i28, align 4
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %call.i29 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %msg.i18, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i29)
  %cmp.not.i30 = icmp eq i32 %call.i29, 2
  br i1 %cmp.not.i30, label %sp8870_readreg.exit42, label %do.body.i32

do.body.i32:                                      ; preds = %sp8870_readreg.exit
  %46 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i31 = icmp eq i32 %46, 0
  br i1 %tobool.not.i31, label %do.body.i32.sp8870_readreg.exit42.thread_crit_edge, label %do.end.i34

do.body.i32.sp8870_readreg.exit42.thread_crit_edge: ; preds = %do.body.i32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_readreg.exit42.thread

do.end.i34:                                       ; preds = %do.body.i32
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i29) #10
  br label %sp8870_readreg.exit42.thread

sp8870_readreg.exit42.thread:                     ; preds = %do.end.i34, %do.body.i32.sp8870_readreg.exit42.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i18) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i17) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i16) #6
  br label %cleanup

sp8870_readreg.exit42:                            ; preds = %sp8870_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %b1.i17 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %b1.i17, align 2
  %arrayidx24.i37 = getelementptr inbounds [2 x i8], ptr %b1.i17, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx24.i37 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx24.i37, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i18) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i17) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i16) #6
  %conv23.i35 = zext i8 %48 to i32
  %conv25.i38 = zext i8 %50 to i32
  %51 = shl nuw nsw i32 %conv23.i35, 14
  %52 = shl nuw nsw i32 %conv25.i38, 6
  %shl = or i32 %52, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 262127, i32 %shl)
  %cmp5 = icmp ugt i32 %shl, 262127
  %spec.store.select = select i1 %cmp5, i32 -1, i32 %shl
  %53 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %spec.store.select, ptr %ber, align 4
  br label %cleanup

cleanup:                                          ; preds = %sp8870_readreg.exit42, %sp8870_readreg.exit42.thread, %sp8870_readreg.exit.thread
  %retval.0 = phi i32 [ 0, %sp8870_readreg.exit42 ], [ -5, %sp8870_readreg.exit.thread ], [ -5, %sp8870_readreg.exit42.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sp8870_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %signal) #0 align 64 {
entry:
  %b0.i21 = alloca [2 x i8], align 1
  %b1.i22 = alloca [2 x i8], align 2
  %msg.i23 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [2 x i8], align 1
  %b1.i = alloca [2 x i8], align 2
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %signal to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %signal, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i) #6
  %3 = getelementptr inbounds [2 x i8], ptr %b0.i, i32 0, i32 1
  %4 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %b0.i, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 6, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i) #6
  %6 = ptrtoint ptr %b1.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %b1.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.sp8870_state, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4
  %conv5.i = zext i8 %12 to i16
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv5.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %7, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %17 = load i8, ptr %10, align 4
  %conv10.i = zext i8 %17 to i16
  %18 = ptrtoint ptr %arrayinit.element6.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv10.i, ptr %arrayinit.element6.i, align 4
  %flags11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %19 = ptrtoint ptr %flags11.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flags11.i, align 2
  %len12.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %20 = ptrtoint ptr %len12.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %len12.i, align 4
  %buf13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %21 = ptrtoint ptr %buf13.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %b1.i, ptr %buf13.i, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %sp8870_readreg.exit, label %do.body.i

do.body.i:                                        ; preds = %entry
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %do.body.i.sp8870_readreg.exit.thread_crit_edge, label %do.end.i

do.body.i.sp8870_readreg.exit.thread_crit_edge:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_readreg.exit.thread

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i) #10
  br label %sp8870_readreg.exit.thread

sp8870_readreg.exit.thread:                       ; preds = %do.end.i, %do.body.i.sp8870_readreg.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #6
  br label %cleanup

sp8870_readreg.exit:                              ; preds = %entry
  %arrayidx24.i = getelementptr inbounds [2 x i8], ptr %b1.i, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx24.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i21) #6
  %27 = getelementptr inbounds [2 x i8], ptr %b0.i21, i32 0, i32 1
  %28 = ptrtoint ptr %b0.i21 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 3, ptr %b0.i21, align 1
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 3, ptr %27, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i22) #6
  %30 = ptrtoint ptr %b1.i22 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %b1.i22, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i23) #6
  %31 = getelementptr inbounds i8, ptr %msg.i23, i32 4
  %32 = call ptr @memset(ptr %31, i32 255, i32 16)
  %33 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %config.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 4
  %conv5.i25 = zext i8 %36 to i16
  %37 = ptrtoint ptr %msg.i23 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv5.i25, ptr %msg.i23, align 4
  %flags.i26 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 0, i32 1
  %38 = ptrtoint ptr %flags.i26 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %flags.i26, align 2
  %39 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 2, ptr %31, align 4
  %buf.i28 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 0, i32 3
  %40 = ptrtoint ptr %buf.i28 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %b0.i21, ptr %buf.i28, align 4
  %arrayinit.element6.i29 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 1
  %41 = load i8, ptr %34, align 4
  %conv10.i30 = zext i8 %41 to i16
  %42 = ptrtoint ptr %arrayinit.element6.i29 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv10.i30, ptr %arrayinit.element6.i29, align 4
  %flags11.i31 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 1, i32 1
  %43 = ptrtoint ptr %flags11.i31 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 1, ptr %flags11.i31, align 2
  %len12.i32 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 1, i32 2
  %44 = ptrtoint ptr %len12.i32 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 2, ptr %len12.i32, align 4
  %buf13.i33 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 1, i32 3
  %45 = ptrtoint ptr %buf13.i33 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %b1.i22, ptr %buf13.i33, align 4
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %call.i34 = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %msg.i23, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i34)
  %cmp.not.i35 = icmp eq i32 %call.i34, 2
  br i1 %cmp.not.i35, label %sp8870_readreg.exit47, label %do.body.i37

do.body.i37:                                      ; preds = %sp8870_readreg.exit
  %48 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i36 = icmp eq i32 %48, 0
  br i1 %tobool.not.i36, label %do.body.i37.sp8870_readreg.exit47.thread_crit_edge, label %do.end.i39

do.body.i37.sp8870_readreg.exit47.thread_crit_edge: ; preds = %do.body.i37
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_readreg.exit47.thread

do.end.i39:                                       ; preds = %do.body.i37
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i34) #10
  br label %sp8870_readreg.exit47.thread

sp8870_readreg.exit47.thread:                     ; preds = %do.end.i39, %do.body.i37.sp8870_readreg.exit47.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i23) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i22) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i21) #6
  br label %cleanup

sp8870_readreg.exit47:                            ; preds = %sp8870_readreg.exit
  %conv25.i = zext i8 %26 to i16
  %49 = ptrtoint ptr %b1.i22 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %b1.i22, align 2
  %arrayidx24.i42 = getelementptr inbounds [2 x i8], ptr %b1.i22, i32 0, i32 1
  %51 = ptrtoint ptr %arrayidx24.i42 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx24.i42, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i23) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i22) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i21) #6
  %conv23.i40 = zext i8 %50 to i16
  %shl.i41 = shl nuw i16 %conv23.i40, 8
  %conv25.i43 = zext i8 %52 to i16
  %53 = shl nuw i16 %conv25.i, 8
  %or.i44 = or i16 %53, %conv25.i43
  %or = or i16 %or.i44, %shl.i41
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or)
  %tobool.not = icmp eq i16 %or, 0
  br i1 %tobool.not, label %sp8870_readreg.exit47.cleanup_crit_edge, label %if.then8

sp8870_readreg.exit47.cleanup_crit_edge:          ; preds = %sp8870_readreg.exit47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8:                                         ; preds = %sp8870_readreg.exit47
  call void @__sanitizer_cov_trace_pc() #8
  %conv10 = xor i16 %or, -1
  %54 = ptrtoint ptr %signal to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv10, ptr %signal, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %sp8870_readreg.exit47.cleanup_crit_edge, %sp8870_readreg.exit47.thread, %sp8870_readreg.exit.thread
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %sp8870_readreg.exit47.cleanup_crit_edge ], [ -5, %sp8870_readreg.exit.thread ], [ -5, %sp8870_readreg.exit47.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sp8870_read_uncorrected_blocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ublocks) #0 align 64 {
entry:
  %b0.i = alloca [2 x i8], align 1
  %b1.i = alloca [2 x i8], align 2
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %ublocks to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ublocks, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i) #6
  %3 = getelementptr inbounds [2 x i8], ptr %b0.i, i32 0, i32 1
  %4 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 12, ptr %b0.i, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 12, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i) #6
  %6 = ptrtoint ptr %b1.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %b1.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.sp8870_state, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4
  %conv5.i = zext i8 %12 to i16
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv5.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %7, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %17 = load i8, ptr %10, align 4
  %conv10.i = zext i8 %17 to i16
  %18 = ptrtoint ptr %arrayinit.element6.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv10.i, ptr %arrayinit.element6.i, align 4
  %flags11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %19 = ptrtoint ptr %flags11.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flags11.i, align 2
  %len12.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %20 = ptrtoint ptr %len12.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %len12.i, align 4
  %buf13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %21 = ptrtoint ptr %buf13.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %b1.i, ptr %buf13.i, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %sp8870_readreg.exit, label %do.body.i

do.body.i:                                        ; preds = %entry
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %do.body.i.sp8870_readreg.exit.thread_crit_edge, label %do.end.i

do.body.i.sp8870_readreg.exit.thread_crit_edge:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_readreg.exit.thread

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i) #10
  br label %sp8870_readreg.exit.thread

sp8870_readreg.exit.thread:                       ; preds = %do.end.i, %do.body.i.sp8870_readreg.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #6
  br label %cleanup

sp8870_readreg.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %b1.i, align 2
  %arrayidx24.i = getelementptr inbounds [2 x i8], ptr %b1.i, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx24.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #6
  %conv23.i = zext i8 %26 to i32
  %shl.i = shl nuw nsw i32 %conv23.i, 8
  %conv25.i = zext i8 %28 to i32
  %or.i = or i32 %shl.i, %conv25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %or.i)
  %cmp1 = icmp eq i32 %or.i, 65535
  %spec.store.select = select i1 %cmp1, i32 -1, i32 %or.i
  %29 = ptrtoint ptr %ublocks to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %spec.store.select, ptr %ublocks, align 4
  br label %cleanup

cleanup:                                          ; preds = %sp8870_readreg.exit, %sp8870_readreg.exit.thread
  %retval.0 = phi i32 [ 0, %sp8870_readreg.exit ], [ -5, %sp8870_readreg.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sp8870_i2c_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #0 align 64 {
entry:
  %buf.i3 = alloca [4 x i8], align 1
  %msg.i4 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [4 x i8], align 1
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #6
  %2 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 3
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %buf.i, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 6, ptr %2, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %3, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 327679, ptr %9, align 4
  %config.i = getelementptr inbounds %struct.sp8870_state, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 4
  %conv12.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv12.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i, align 2
  %buf13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf13.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf.i, ptr %buf13.i, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.then.sp8870_writereg.exit_crit_edge, label %do.body.i

if.then.sp8870_writereg.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit

do.body.i:                                        ; preds = %if.then
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %do.body.i.sp8870_writereg.exit_crit_edge, label %do.end.i

do.body.i.sp8870_writereg.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %call.i, i32 noundef 518, i32 noundef 1) #10
  br label %sp8870_writereg.exit

sp8870_writereg.exit:                             ; preds = %do.end.i, %do.body.i.sp8870_writereg.exit_crit_edge, %if.then.sp8870_writereg.exit_crit_edge
  %retval.0.i = phi i32 [ -121, %do.end.i ], [ -121, %do.body.i.sp8870_writereg.exit_crit_edge ], [ 0, %if.then.sp8870_writereg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #6
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i3) #6
  %21 = getelementptr inbounds [4 x i8], ptr %buf.i3, i32 0, i32 1
  %22 = getelementptr inbounds [4 x i8], ptr %buf.i3, i32 0, i32 2
  %23 = getelementptr inbounds [4 x i8], ptr %buf.i3, i32 0, i32 3
  %24 = ptrtoint ptr %buf.i3 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 2, ptr %buf.i3, align 1
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 6, ptr %21, align 1
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %22, align 1
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4) #6
  %28 = getelementptr inbounds i8, ptr %msg.i4, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 327679, ptr %28, align 4
  %config.i5 = getelementptr inbounds %struct.sp8870_state, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %config.i5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config.i5, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 4
  %conv12.i6 = zext i8 %33 to i16
  %34 = ptrtoint ptr %msg.i4 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv12.i6, ptr %msg.i4, align 4
  %flags.i7 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4, i32 0, i32 1
  %35 = ptrtoint ptr %flags.i7 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags.i7, align 2
  %buf13.i9 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4, i32 0, i32 3
  %36 = ptrtoint ptr %buf13.i9 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %buf.i3, ptr %buf13.i9, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %call.i10 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %msg.i4, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i10)
  %cmp.not.i11 = icmp eq i32 %call.i10, 1
  br i1 %cmp.not.i11, label %if.else.sp8870_writereg.exit17_crit_edge, label %do.body.i13

if.else.sp8870_writereg.exit17_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit17

do.body.i13:                                      ; preds = %if.else
  %39 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i12 = icmp eq i32 %39, 0
  br i1 %tobool.not.i12, label %do.body.i13.sp8870_writereg.exit17_crit_edge, label %do.end.i15

do.body.i13.sp8870_writereg.exit17_crit_edge:     ; preds = %do.body.i13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit17

do.end.i15:                                       ; preds = %do.body.i13
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %call.i10, i32 noundef 518, i32 noundef 0) #10
  br label %sp8870_writereg.exit17

sp8870_writereg.exit17:                           ; preds = %do.end.i15, %do.body.i13.sp8870_writereg.exit17_crit_edge, %if.else.sp8870_writereg.exit17_crit_edge
  %retval.0.i16 = phi i32 [ -121, %do.end.i15 ], [ -121, %do.body.i13.sp8870_writereg.exit17_crit_edge ], [ 0, %if.else.sp8870_writereg.exit17_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i3) #6
  br label %cleanup

cleanup:                                          ; preds = %sp8870_writereg.exit17, %sp8870_writereg.exit
  %retval.0 = phi i32 [ %retval.0.i, %sp8870_writereg.exit ], [ %retval.0.i16, %sp8870_writereg.exit17 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sp8870_writereg(ptr nocapture noundef readonly %state, i16 noundef zeroext %reg, i16 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [4 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #6
  %0 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %conv = zext i16 %reg to i32
  %3 = lshr i16 %reg, 8
  %conv1 = trunc i16 %3 to i8
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv1, ptr %buf, align 1
  %conv3 = trunc i16 %reg to i8
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv3, ptr %0, align 1
  %conv5 = zext i16 %data to i32
  %6 = lshr i16 %data, 8
  %conv7 = trunc i16 %6 to i8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv7, ptr %1, align 1
  %conv11 = trunc i16 %data to i8
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv11, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #6
  %9 = getelementptr inbounds i8, ptr %msg, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4
  %config = getelementptr inbounds %struct.sp8870_state, ptr %state, i32 0, i32 1
  %11 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 4
  %conv12 = zext i8 %14 to i16
  %15 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv12, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %17 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 4, ptr %len, align 4
  %buf13 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %18 = ptrtoint ptr %buf13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %buf, ptr %buf13, align 4
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %state, align 4
  %call = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %call, i32 noundef %conv, i32 noundef %conv5) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -121, %do.end ], [ -121, %do.body.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sp8870_microcontroller_stop(ptr nocapture noundef readonly %state) unnamed_addr #0 align 64 {
entry:
  %buf.i20 = alloca [4 x i8], align 1
  %msg.i21 = alloca %struct.i2c_msg, align 4
  %buf.i5 = alloca [4 x i8], align 1
  %msg.i6 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [4 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #6
  %0 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 3
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 15, ptr %buf.i, align 1
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 8, ptr %0, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %1, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 327679, ptr %7, align 4
  %config.i = getelementptr inbounds %struct.sp8870_state, ptr %state, i32 0, i32 1
  %9 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4
  %conv12.i = zext i8 %12 to i16
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv12.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  %buf13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf13.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf.i, ptr %buf13.i, align 4
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %entry.sp8870_writereg.exit_crit_edge, label %do.body.i

entry.sp8870_writereg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit

do.body.i:                                        ; preds = %entry
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %do.body.i.sp8870_writereg.exit_crit_edge, label %do.end.i

do.body.i.sp8870_writereg.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %call.i, i32 noundef 3848, i32 noundef 0) #10
  br label %sp8870_writereg.exit

sp8870_writereg.exit:                             ; preds = %do.end.i, %do.body.i.sp8870_writereg.exit_crit_edge, %entry.sp8870_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i5) #6
  %19 = getelementptr inbounds [4 x i8], ptr %buf.i5, i32 0, i32 1
  %20 = getelementptr inbounds [4 x i8], ptr %buf.i5, i32 0, i32 2
  %21 = getelementptr inbounds [4 x i8], ptr %buf.i5, i32 0, i32 3
  %22 = ptrtoint ptr %buf.i5 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 15, ptr %buf.i5, align 1
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 9, ptr %19, align 1
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %20, align 1
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i6) #6
  %26 = getelementptr inbounds i8, ptr %msg.i6, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 327679, ptr %26, align 4
  %28 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %config.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 4
  %conv12.i8 = zext i8 %31 to i16
  %32 = ptrtoint ptr %msg.i6 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv12.i8, ptr %msg.i6, align 4
  %flags.i9 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i6, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i9 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i9, align 2
  %buf13.i11 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i6, i32 0, i32 3
  %34 = ptrtoint ptr %buf13.i11 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %buf.i5, ptr %buf13.i11, align 4
  %35 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %state, align 4
  %call.i12 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %msg.i6, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i12)
  %cmp.not.i13 = icmp eq i32 %call.i12, 1
  br i1 %cmp.not.i13, label %sp8870_writereg.exit.sp8870_writereg.exit19_crit_edge, label %do.body.i15

sp8870_writereg.exit.sp8870_writereg.exit19_crit_edge: ; preds = %sp8870_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit19

do.body.i15:                                      ; preds = %sp8870_writereg.exit
  %37 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i14 = icmp eq i32 %37, 0
  br i1 %tobool.not.i14, label %do.body.i15.sp8870_writereg.exit19_crit_edge, label %do.end.i17

do.body.i15.sp8870_writereg.exit19_crit_edge:     ; preds = %do.body.i15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit19

do.end.i17:                                       ; preds = %do.body.i15
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %call.i12, i32 noundef 3849, i32 noundef 0) #10
  br label %sp8870_writereg.exit19

sp8870_writereg.exit19:                           ; preds = %do.end.i17, %do.body.i15.sp8870_writereg.exit19_crit_edge, %sp8870_writereg.exit.sp8870_writereg.exit19_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i5) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i20) #6
  %38 = getelementptr inbounds [4 x i8], ptr %buf.i20, i32 0, i32 1
  %39 = getelementptr inbounds [4 x i8], ptr %buf.i20, i32 0, i32 2
  %40 = getelementptr inbounds [4 x i8], ptr %buf.i20, i32 0, i32 3
  %41 = ptrtoint ptr %buf.i20 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 15, ptr %buf.i20, align 1
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %38, align 1
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %39, align 1
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %40, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i21) #6
  %45 = getelementptr inbounds i8, ptr %msg.i21, i32 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 327679, ptr %45, align 4
  %47 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %config.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 4
  %conv12.i23 = zext i8 %50 to i16
  %51 = ptrtoint ptr %msg.i21 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv12.i23, ptr %msg.i21, align 4
  %flags.i24 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21, i32 0, i32 1
  %52 = ptrtoint ptr %flags.i24 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %flags.i24, align 2
  %buf13.i26 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21, i32 0, i32 3
  %53 = ptrtoint ptr %buf13.i26 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %buf.i20, ptr %buf13.i26, align 4
  %54 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %state, align 4
  %call.i27 = call i32 @i2c_transfer(ptr noundef %55, ptr noundef nonnull %msg.i21, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i27)
  %cmp.not.i28 = icmp eq i32 %call.i27, 1
  br i1 %cmp.not.i28, label %sp8870_writereg.exit19.sp8870_writereg.exit34_crit_edge, label %do.body.i30

sp8870_writereg.exit19.sp8870_writereg.exit34_crit_edge: ; preds = %sp8870_writereg.exit19
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit34

do.body.i30:                                      ; preds = %sp8870_writereg.exit19
  %56 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i29 = icmp eq i32 %56, 0
  br i1 %tobool.not.i29, label %do.body.i30.sp8870_writereg.exit34_crit_edge, label %do.end.i32

do.body.i30.sp8870_writereg.exit34_crit_edge:     ; preds = %do.body.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp8870_writereg.exit34

do.end.i32:                                       ; preds = %do.body.i30
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %call.i27, i32 noundef 3840, i32 noundef 0) #10
  br label %sp8870_writereg.exit34

sp8870_writereg.exit34:                           ; preds = %do.end.i32, %do.body.i30.sp8870_writereg.exit34_crit_edge, %sp8870_writereg.exit19.sp8870_writereg.exit34_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i21) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i20) #6
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !97}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/av7110/sp8870.c", i32 602, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/staging/media/av7110/sp8870.c", i32 603, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/staging/media/av7110/sp8870.c", i32 605, i32 1}
!7 = !{ptr @__UNIQUE_ID_author293, !8, !"__UNIQUE_ID_author293", i1 false, i1 false}
!8 = !{!"../drivers/staging/media/av7110/sp8870.c", i32 606, i32 1}
!9 = !{ptr @__UNIQUE_ID_file294, !10, !"__UNIQUE_ID_file294", i1 false, i1 false}
!10 = !{!"../drivers/staging/media/av7110/sp8870.c", i32 607, i32 1}
!11 = !{ptr @__UNIQUE_ID_license295, !10, !"__UNIQUE_ID_license295", i1 false, i1 false}
!12 = !{ptr @__ksymtab_sp8870_attach, !13, !"__ksymtab_sp8870_attach", i1 false, i1 false}
!13 = !{!"../drivers/staging/media/av7110/sp8870.c", i32 609, i32 1}
!14 = !{ptr @debug, !15, !"debug", i1 false, i1 false}
!15 = !{!"../drivers/staging/media/av7110/sp8870.c", i32 41, i32 12}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/media/av7110/sp8870.c", i32 78, i32 3}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sp8870_readreg._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @sp8870_readreg._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @sp8870_ops, !23, !"sp8870_ops", i1 false, i1 false}
!23 = !{!"../drivers/staging/media/av7110/sp8870.c", i32 572, i32 38}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/media/av7110/sp8870.c", i32 302, i32 2}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @sp8870_init._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @sp8870_init._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/media/av7110/sp8870.c", i32 306, i32 2}
!31 = !{ptr @sp8870_init._entry.5, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @sp8870_init._entry_ptr.7, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/media/av7110/sp8870.c", i32 308, i32 3}
!36 = !{ptr @sp8870_init._entry.9, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @sp8870_init._entry_ptr.11, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/media/av7110/sp8870.c", i32 313, i32 3}
!40 = !{ptr @sp8870_init._entry.12, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @sp8870_init._entry_ptr.14, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/media/av7110/sp8870.c", i32 318, i32 2}
!44 = !{ptr @sp8870_init._entry.15, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @sp8870_init._entry_ptr.17, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/media/av7110/sp8870.c", i32 94, i32 2}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @sp8870_firmware_upload._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @sp8870_firmware_upload._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/media/av7110/sp8870.c", i32 121, i32 4}
!53 = !{ptr @sp8870_firmware_upload._entry.20, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @sp8870_firmware_upload._entry_ptr.22, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/media/av7110/sp8870.c", i32 122, i32 4}
!57 = !{ptr @sp8870_firmware_upload._entry.23, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @sp8870_firmware_upload._entry_ptr.25, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/staging/media/av7110/sp8870.c", i32 128, i32 2}
!61 = !{ptr @sp8870_firmware_upload._entry.26, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @sp8870_firmware_upload._entry_ptr.28, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/staging/media/av7110/sp8870.c", i32 60, i32 3}
!65 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @sp8870_writereg._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @sp8870_writereg._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/media/av7110/sp8870.c", i32 468, i32 2}
!70 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @sp8870_set_frontend._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @sp8870_set_frontend._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/staging/media/av7110/sp8870.c", i32 480, i32 5}
!75 = !{ptr @sp8870_set_frontend._entry.33, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @sp8870_set_frontend._entry_ptr.35, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/staging/media/av7110/sp8870.c", i32 491, i32 3}
!79 = !{ptr @sp8870_set_frontend._entry.36, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @sp8870_set_frontend._entry_ptr.38, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/staging/media/av7110/sp8870.c", i32 498, i32 5}
!83 = !{ptr @sp8870_set_frontend._entry.39, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @sp8870_set_frontend._entry_ptr.41, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/staging/media/av7110/sp8870.c", i32 499, i32 5}
!87 = !{ptr @sp8870_set_frontend._entry.42, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @sp8870_set_frontend._entry_ptr.44, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/staging/media/av7110/sp8870.c", i32 504, i32 3}
!91 = !{ptr @sp8870_set_frontend._entry.45, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @sp8870_set_frontend._entry_ptr.47, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @lockups, !94, !"lockups", i1 false, i1 false}
!94 = !{!"../drivers/staging/media/av7110/sp8870.c", i32 447, i32 12}
!95 = !{ptr @switches, !96, !"switches", i1 false, i1 false}
!96 = !{!"../drivers/staging/media/av7110/sp8870.c", i32 449, i32 12}
!97 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
