; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/or51211.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/or51211.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+or51211_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_or51211_attach\09\09\09\09"
module asm "\09.long\09__crc_or51211_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_or51211_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22or51211_attach\22\09\09\09\09\09"
module asm "__kstrtabns_or51211_attach:\09\09\09\09\09"
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
%struct.atomic_t = type { i32 }
%struct.or51211_state = type { ptr, ptr, %struct.dvb_frontend, ptr, i8, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.or51211_config = type { i8, ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }

@or51211_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Oren OR51211 VSB Frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 44000000, i32 958000000, i32 166666, i32 0, i32 0, i32 0, i32 0, i32 2097838 }, [8 x i8] c"\0B\02\00\00\00\00\00\00", ptr null, ptr @or51211_release, ptr null, ptr @or51211_init, ptr @or51211_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @or51211_set_parameters, ptr @or51211_get_tune_settings, ptr null, ptr @or51211_read_status, ptr @or51211_read_ber, ptr @or51211_read_signal_strength, ptr @or51211_read_snr, ptr @or51211_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__param_str_debug = internal constant [14 x i8] c"or51211.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype295 = internal constant [27 x i8] c"or51211.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug296 = internal constant [65 x i8] c"or51211.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description297 = internal constant [73 x i8] c"or51211.description=Oren OR51211 VSB [pcHDTV HD-2000] Demodulator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author298 = internal constant [27 x i8] c"or51211.author=Kirk Lapray\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [49 x i8] c"or51211.file=drivers/media/dvb-frontends/or51211\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [20 x i8] c"or51211.license=GPL\00", section ".modinfo", align 1
@__kstrtab_or51211_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_or51211_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_or51211_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @or51211_attach to i32), ptr @__kstrtab_or51211_attach, ptr @__kstrtabns_or51211_attach }, section "___ksymtab+or51211_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__const.or51211_init.get_ver_buf = private unnamed_addr constant [5 x i8] c"\04\000\00\00", align 1
@or51211_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016or51211: %s: Waiting for firmware upload (%s)...\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"or51211_init\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/or51211.c\00", [58 x i8] zeroinitializer }, align 32
@or51211_init._entry_ptr = internal global ptr @or51211_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dvb-fe-or51211.fw\00", [46 x i8] zeroinitializer }, align 32
@or51211_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016or51211: %s: Got Hotplug firmware\0A\00", [59 x i8] zeroinitializer }, align 32
@or51211_init._entry_ptr.6 = internal global ptr @or51211_init._entry.4, section ".printk_index", align 4
@or51211_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014or51211: %s: No firmware uploaded (timeout or file not found?)\0A\00", [62 x i8] zeroinitializer }, align 32
@or51211_init._entry_ptr.9 = internal global ptr @or51211_init._entry.7, section ".printk_index", align 4
@or51211_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014or51211: %s: Writing firmware to device failed!\0A\00", [45 x i8] zeroinitializer }, align 32
@or51211_init._entry_ptr.12 = internal global ptr @or51211_init._entry.10, section ".printk_index", align 4
@or51211_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016or51211: %s: Firmware upload complete.\0A\00", [54 x i8] zeroinitializer }, align 32
@or51211_init._entry_ptr.15 = internal global ptr @or51211_init._entry.13, section ".printk_index", align 4
@cmd_buf = internal global { [5 x i8], [27 x i8] } { [5 x i8] c"\04\01P\80\06", [27 x i8] zeroinitializer }, align 32
@or51211_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014or51211: %s: Load DVR Error 5\0A\00", [63 x i8] zeroinitializer }, align 32
@or51211_init._entry_ptr.18 = internal global ptr @or51211_init._entry.16, section ".printk_index", align 4
@or51211_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014or51211: %s: Load DVR Error A\0A\00", [63 x i8] zeroinitializer }, align 32
@or51211_init._entry_ptr.21 = internal global ptr @or51211_init._entry.19, section ".printk_index", align 4
@or51211_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.1, ptr @.str.2, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014or51211: %s: Load DVR Error B\0A\00", [63 x i8] zeroinitializer }, align 32
@or51211_init._entry_ptr.24 = internal global ptr @or51211_init._entry.22, section ".printk_index", align 4
@or51211_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.1, ptr @.str.2, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014or51211: %s: Load DVR Error C\0A\00", [63 x i8] zeroinitializer }, align 32
@or51211_init._entry_ptr.27 = internal global ptr @or51211_init._entry.25, section ".printk_index", align 4
@or51211_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.1, ptr @.str.2, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014or51211: %s: Load DVR Error D\0A\00", [63 x i8] zeroinitializer }, align 32
@or51211_init._entry_ptr.30 = internal global ptr @or51211_init._entry.28, section ".printk_index", align 4
@or51211_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.1, ptr @.str.2, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014or51211: %s: Load DVR Error 6 - %d\0A\00", [58 x i8] zeroinitializer }, align 32
@or51211_init._entry_ptr.33 = internal global ptr @or51211_init._entry.31, section ".printk_index", align 4
@or51211_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.1, ptr @.str.2, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014or51211: %s: Load DVR Error 7 - %d\0A\00", [58 x i8] zeroinitializer }, align 32
@or51211_init._entry_ptr.36 = internal global ptr @or51211_init._entry.34, section ".printk_index", align 4
@or51211_init.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.1, ptr @.str.2, ptr @.str.38, i8 0, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"or51211\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"read_fwbits %10ph\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"or51211: %s: read_fwbits %10ph\0A\00", [32 x i8] zeroinitializer }, align 32
@or51211_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.1, ptr @.str.2, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016or51211: %s: ver TU%02x%02x%02x VSB mode %02x Status %02x\0A\00", [35 x i8] zeroinitializer }, align 32
@or51211_init._entry_ptr.42 = internal global ptr @or51211_init._entry.40, section ".printk_index", align 4
@or51211_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.1, ptr @.str.2, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014or51211: %s: Load DVR Error 8\0A\00", [63 x i8] zeroinitializer }, align 32
@or51211_init._entry_ptr.45 = internal global ptr @or51211_init._entry.43, section ".printk_index", align 4
@or51211_init._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.1, ptr @.str.2, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014or51211: %s: Load DVR Error 9\0A\00", [63 x i8] zeroinitializer }, align 32
@or51211_init._entry_ptr.48 = internal global ptr @or51211_init._entry.46, section ".printk_index", align 4
@or51211_load_firmware.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 0, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"or51211_load_firmware\00", [42 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Firmware is %zu bytes\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"or51211: %s: Firmware is %zu bytes\0A\00", [60 x i8] zeroinitializer }, align 32
@or51211_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.49, ptr @.str.2, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014or51211: %s: error eprom addr\0A\00", [63 x i8] zeroinitializer }, align 32
@or51211_load_firmware._entry_ptr = internal global ptr @or51211_load_firmware._entry, section ".printk_index", align 4
@or51211_load_firmware._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str.2, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014or51211: %s: error eprom\0A\00", [36 x i8] zeroinitializer }, align 32
@or51211_load_firmware._entry_ptr.55 = internal global ptr @or51211_load_firmware._entry.53, section ".printk_index", align 4
@or51211_load_firmware._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.49, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\014or51211: %s: error 1\0A\00", [40 x i8] zeroinitializer }, align 32
@or51211_load_firmware._entry_ptr.58 = internal global ptr @or51211_load_firmware._entry.56, section ".printk_index", align 4
@or51211_load_firmware._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.49, ptr @.str.2, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\014or51211: %s: error 2\0A\00", [40 x i8] zeroinitializer }, align 32
@or51211_load_firmware._entry_ptr.61 = internal global ptr @or51211_load_firmware._entry.59, section ".printk_index", align 4
@run_buf = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\7F\01", [30 x i8] zeroinitializer }, align 32
@or51211_load_firmware._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.49, ptr @.str.2, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\014or51211: %s: error 3\0A\00", [40 x i8] zeroinitializer }, align 32
@or51211_load_firmware._entry_ptr.64 = internal global ptr @or51211_load_firmware._entry.62, section ".printk_index", align 4
@or51211_load_firmware._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.49, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\014or51211: %s: error 4\0A\00", [40 x i8] zeroinitializer }, align 32
@or51211_load_firmware._entry_ptr.67 = internal global ptr @or51211_load_firmware._entry.65, section ".printk_index", align 4
@or51211_load_firmware._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.49, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016or51211: %s: Done.\0A\00", [42 x i8] zeroinitializer }, align 32
@or51211_load_firmware._entry_ptr.70 = internal global ptr @or51211_load_firmware._entry.68, section ".printk_index", align 4
@i2c_writebytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014or51211: %s: error (addr %02x, err == %i)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"i2c_writebytes\00", [17 x i8] zeroinitializer }, align 32
@i2c_writebytes._entry_ptr = internal global ptr @i2c_writebytes._entry, section ".printk_index", align 4
@i2c_readbytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.73, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c_readbytes\00", [18 x i8] zeroinitializer }, align 32
@i2c_readbytes._entry_ptr = internal global ptr @i2c_readbytes._entry, section ".printk_index", align 4
@or51211_setmode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.74, ptr @.str.2, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"or51211_setmode\00", [16 x i8] zeroinitializer }, align 32
@or51211_setmode._entry_ptr = internal global ptr @or51211_setmode._entry, section ".printk_index", align 4
@or51211_setmode._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.74, ptr @.str.2, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@or51211_setmode._entry_ptr.76 = internal global ptr @or51211_setmode._entry.75, section ".printk_index", align 4
@or51211_setmode._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.74, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@or51211_setmode._entry_ptr.78 = internal global ptr @or51211_setmode._entry.77, section ".printk_index", align 4
@or51211_setmode._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.74, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\014or51211: %s: error 5\0A\00", [40 x i8] zeroinitializer }, align 32
@or51211_setmode._entry_ptr.81 = internal global ptr @or51211_setmode._entry.79, section ".printk_index", align 4
@or51211_setmode._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.74, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\014or51211: %s: error 6\0A\00", [40 x i8] zeroinitializer }, align 32
@or51211_setmode._entry_ptr.84 = internal global ptr @or51211_setmode._entry.82, section ".printk_index", align 4
@or51211_setmode.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.74, ptr @.str.2, ptr @.str.85, i8 0, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rec status %02x %02x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"or51211: %s: rec status %02x %02x\0A\00", [61 x i8] zeroinitializer }, align 32
@or51211_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014or51211: %s: write error\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"or51211_read_status\00", [44 x i8] zeroinitializer }, align 32
@or51211_read_status._entry_ptr = internal global ptr @or51211_read_status._entry, section ".printk_index", align 4
@or51211_read_status._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014or51211: %s: read error\0A\00", [37 x i8] zeroinitializer }, align 32
@or51211_read_status._entry_ptr.91 = internal global ptr @or51211_read_status._entry.89, section ".printk_index", align 4
@or51211_read_status.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.88, ptr @.str.2, ptr @.str.92, i8 0, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%x %x\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"or51211: %s: %x %x\0A\00", [44 x i8] zeroinitializer }, align 32
@or51211_read_snr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014or51211: %s: error writing snr reg\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"or51211_read_snr\00", [47 x i8] zeroinitializer }, align 32
@or51211_read_snr._entry_ptr = internal global ptr @or51211_read_snr._entry, section ".printk_index", align 4
@or51211_read_snr._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014or51211: %s: read_status read error\0A\00", [57 x i8] zeroinitializer }, align 32
@or51211_read_snr._entry_ptr.98 = internal global ptr @or51211_read_snr._entry.96, section ".printk_index", align 4
@or51211_read_snr.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.95, ptr @.str.2, ptr @.str.99, i8 0, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"noise = 0x%02x, snr = %d.%02d dB\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"or51211: %s: noise = 0x%02x, snr = %d.%02d dB\0A\00", [49 x i8] zeroinitializer }, align 32
@___asan_gen_.101 = private unnamed_addr constant [12 x i8] c"or51211_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 520, i32 38 }
@___asan_gen_.104 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 33, i32 12 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 360, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 364, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 366, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 373, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 376, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [8 x i8] c"cmd_buf\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 38, i32 11 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 389, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 402, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 408, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 419, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 425, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 437, i32 5 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 444, i32 5 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 452, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 454, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 465, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 471, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 100, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 105, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 109, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 123, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 130, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant [8 x i8] c"run_buf\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 37, i32 11 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 136, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 143, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 148, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 69, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 86, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 160, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 167, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 183, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 193, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 197, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 200, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 235, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 240, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 243, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 293, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 297, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.357 = private constant [41 x i8] c"../drivers/media/dvb-frontends/or51211.c\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 304, i32 2 }
@llvm.compiler.used = appending global [127 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_debug296, ptr @__UNIQUE_ID_debugtype295, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__ksymtab_or51211_attach, ptr @__param_debug, ptr @i2c_readbytes._entry, ptr @i2c_readbytes._entry_ptr, ptr @i2c_writebytes._entry, ptr @i2c_writebytes._entry_ptr, ptr @or51211_init._entry, ptr @or51211_init._entry.10, ptr @or51211_init._entry.13, ptr @or51211_init._entry.16, ptr @or51211_init._entry.19, ptr @or51211_init._entry.22, ptr @or51211_init._entry.25, ptr @or51211_init._entry.28, ptr @or51211_init._entry.31, ptr @or51211_init._entry.34, ptr @or51211_init._entry.4, ptr @or51211_init._entry.40, ptr @or51211_init._entry.43, ptr @or51211_init._entry.46, ptr @or51211_init._entry.7, ptr @or51211_init._entry_ptr, ptr @or51211_init._entry_ptr.12, ptr @or51211_init._entry_ptr.15, ptr @or51211_init._entry_ptr.18, ptr @or51211_init._entry_ptr.21, ptr @or51211_init._entry_ptr.24, ptr @or51211_init._entry_ptr.27, ptr @or51211_init._entry_ptr.30, ptr @or51211_init._entry_ptr.33, ptr @or51211_init._entry_ptr.36, ptr @or51211_init._entry_ptr.42, ptr @or51211_init._entry_ptr.45, ptr @or51211_init._entry_ptr.48, ptr @or51211_init._entry_ptr.6, ptr @or51211_init._entry_ptr.9, ptr @or51211_load_firmware._entry, ptr @or51211_load_firmware._entry.53, ptr @or51211_load_firmware._entry.56, ptr @or51211_load_firmware._entry.59, ptr @or51211_load_firmware._entry.62, ptr @or51211_load_firmware._entry.65, ptr @or51211_load_firmware._entry.68, ptr @or51211_load_firmware._entry_ptr, ptr @or51211_load_firmware._entry_ptr.55, ptr @or51211_load_firmware._entry_ptr.58, ptr @or51211_load_firmware._entry_ptr.61, ptr @or51211_load_firmware._entry_ptr.64, ptr @or51211_load_firmware._entry_ptr.67, ptr @or51211_load_firmware._entry_ptr.70, ptr @or51211_read_snr._entry, ptr @or51211_read_snr._entry.96, ptr @or51211_read_snr._entry_ptr, ptr @or51211_read_snr._entry_ptr.98, ptr @or51211_read_status._entry, ptr @or51211_read_status._entry.89, ptr @or51211_read_status._entry_ptr, ptr @or51211_read_status._entry_ptr.91, ptr @or51211_setmode._entry, ptr @or51211_setmode._entry.75, ptr @or51211_setmode._entry.77, ptr @or51211_setmode._entry.79, ptr @or51211_setmode._entry.82, ptr @or51211_setmode._entry_ptr, ptr @or51211_setmode._entry_ptr.76, ptr @or51211_setmode._entry_ptr.78, ptr @or51211_setmode._entry_ptr.81, ptr @or51211_setmode._entry_ptr.84, ptr @or51211_ops, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @cmd_buf, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @run_buf, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.80, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.99, ptr @.str.100], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51211_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51211_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51211_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51211_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51211_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51211_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd_buf to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51211_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51211_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51211_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51211_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51211_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51211_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51211_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51211_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51211_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51211_init._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51211_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51211_load_firmware._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51211_load_firmware._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51211_load_firmware._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_buf to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51211_load_firmware._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51211_load_firmware._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51211_load_firmware._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_writebytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_readbytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51211_setmode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51211_setmode._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51211_setmode._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51211_setmode._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51211_setmode._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51211_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51211_read_status._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51211_read_snr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51211_read_snr._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @or51211_attach(ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1064) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %config1 = getelementptr inbounds %struct.or51211_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %config, ptr %config1, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %call7.i.i, align 8
  %initialized = getelementptr inbounds %struct.or51211_state, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %initialized, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %initialized, align 4
  %current_frequency = getelementptr inbounds %struct.or51211_state, ptr %call7.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %current_frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %current_frequency, align 4
  %frontend = getelementptr inbounds %struct.or51211_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.or51211_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %5 = call ptr @memcpy(ptr %ops, ptr @or51211_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.or51211_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %frontend, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @or51211_release(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %config = getelementptr inbounds %struct.or51211_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %sleep = getelementptr inbounds %struct.or51211_config, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sleep, align 4
  tail call void %5(ptr noundef %fe) #7
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @or51211_init(ptr noundef %fe) #0 align 64 {
entry:
  %msg.i240 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  %fw = alloca ptr, align 4
  %get_ver_buf = alloca [5 x i8], align 1
  %rec_buf = alloca [14 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %config1 = getelementptr inbounds %struct.or51211_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #7
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %get_ver_buf) #7
  %5 = call ptr @memcpy(ptr %get_ver_buf, ptr @__const.or51211_init.get_ver_buf, i32 5)
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %rec_buf) #7
  %6 = getelementptr inbounds [14 x i8], ptr %rec_buf, i32 0, i32 1
  %7 = getelementptr inbounds [14 x i8], ptr %rec_buf, i32 0, i32 2
  %8 = getelementptr inbounds [14 x i8], ptr %rec_buf, i32 0, i32 3
  %9 = getelementptr inbounds [14 x i8], ptr %rec_buf, i32 0, i32 4
  %10 = getelementptr inbounds [14 x i8], ptr %rec_buf, i32 0, i32 6
  %11 = getelementptr inbounds [14 x i8], ptr %rec_buf, i32 0, i32 8
  %12 = getelementptr inbounds [14 x i8], ptr %rec_buf, i32 0, i32 10
  %13 = getelementptr inbounds [14 x i8], ptr %rec_buf, i32 0, i32 12
  %initialized = getelementptr inbounds %struct.or51211_state, ptr %1, i32 0, i32 4
  %14 = call ptr @memset(ptr %rec_buf, i32 255, i32 14)
  %15 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #11
  %request_firmware = getelementptr inbounds %struct.or51211_config, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %request_firmware to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %request_firmware, align 4
  %call2 = call i32 %17(ptr noundef %fe, ptr noundef nonnull %fw, ptr noundef nonnull @.str.3) #7
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool8.not = icmp eq i32 %call2, 0
  br i1 %tobool8.not, label %if.end, label %do.end12

do.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %do.end
  %18 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fw, align 4
  %call15 = call fastcc i32 @or51211_load_firmware(ptr noundef %fe, ptr noundef %19)
  %20 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.end26, label %do.end20

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1) #11
  br label %cleanup

do.end26:                                         ; preds = %if.end
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1) #11
  %22 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %config1, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 4
  %call30 = call fastcc i32 @i2c_writebytes(ptr noundef %1, i8 noundef zeroext %25, ptr noundef nonnull @cmd_buf, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end38, label %do.end35

do.end35:                                         ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #9
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end38:                                         ; preds = %do.end26
  %26 = ptrtoint ptr %rec_buf to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 4, ptr %rec_buf, align 8
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %6, align 1
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 3, ptr %7, align 2
  %29 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %8, align 1
  call void @msleep(i32 noundef 30) #7
  %30 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config1, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 4
  %call44 = call fastcc i32 @i2c_writebytes(ptr noundef %1, i8 noundef zeroext %33, ptr noundef nonnull %rec_buf, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end52, label %do.end49

do.end49:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end52:                                         ; preds = %if.end38
  call void @msleep(i32 noundef 3) #7
  %34 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %config1, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 4
  %call56 = call fastcc i32 @i2c_readbytes(ptr noundef %1, i8 noundef zeroext %37, ptr noundef %12, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end64, label %do.end61

do.end61:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end64:                                         ; preds = %if.end52
  %38 = ptrtoint ptr %rec_buf to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 4, ptr %rec_buf, align 8
  %39 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %6, align 1
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %7, align 2
  %41 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %8, align 1
  call void @msleep(i32 noundef 20) #7
  %42 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %config1, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 4
  %call72 = call fastcc i32 @i2c_writebytes(ptr noundef %1, i8 noundef zeroext %45, ptr noundef nonnull %rec_buf, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end80, label %do.end77

do.end77:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end80:                                         ; preds = %if.end64
  call void @msleep(i32 noundef 3) #7
  %46 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %config1, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %47, align 4
  %call84 = call fastcc i32 @i2c_readbytes(ptr noundef %1, i8 noundef zeroext %49, ptr noundef %13, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %for.body.preheader, label %do.end89

for.body.preheader:                               ; preds = %if.end80
  %50 = ptrtoint ptr %rec_buf to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 -1302123111085380115, ptr %rec_buf, align 8
  %arrayidx97 = getelementptr inbounds [5 x i8], ptr %get_ver_buf, i32 0, i32 4
  %51 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %52 = getelementptr inbounds i8, ptr %msg.i240, i32 4
  %flags.i242 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i240, i32 0, i32 1
  %buf3.i244 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i240, i32 0, i32 3
  br label %for.body96

do.end89:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  %call91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1) #11
  br label %cleanup

for.body96:                                       ; preds = %if.end121.for.body96_crit_edge, %for.body.preheader
  %i.1262 = phi i32 [ 0, %for.body.preheader ], [ %inc132, %if.end121.for.body96_crit_edge ]
  call void @msleep(i32 noundef 30) #7
  %add = add nsw i32 %i.1262, 1
  %conv = trunc i32 %add to i8
  %53 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv, ptr %arrayidx97, align 1
  %54 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %config1, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %55, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %58 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 393215, ptr %51, align 4
  %conv.i = zext i8 %57 to i16
  %59 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv.i, ptr %msg.i, align 4
  %60 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 0, ptr %flags.i, align 2
  %61 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %get_ver_buf, ptr %buf3.i, align 4
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %63, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end109, label %do.end106

do.end106:                                        ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i = zext i8 %57 to i32
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef %conv5.i, i32 noundef %call.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %call108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef %i.1262) #11
  br label %cleanup

if.end109:                                        ; preds = %for.body96
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @msleep(i32 noundef 3) #7
  %64 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %config1, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %65, align 4
  %mul = shl i32 %i.1262, 1
  %arrayidx112 = getelementptr [14 x i8], ptr %rec_buf, i32 0, i32 %mul
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i240) #7
  %68 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 196607, ptr %52, align 4
  %conv.i241 = zext i8 %67 to i16
  %69 = ptrtoint ptr %msg.i240 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv.i241, ptr %msg.i240, align 4
  %70 = ptrtoint ptr %flags.i242 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 1, ptr %flags.i242, align 2
  %71 = ptrtoint ptr %buf3.i244 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %arrayidx112, ptr %buf3.i244, align 4
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 4
  %call.i245 = call i32 @i2c_transfer(ptr noundef %73, ptr noundef nonnull %msg.i240, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i245)
  %cmp.not.i246 = icmp eq i32 %call.i245, 1
  br i1 %cmp.not.i246, label %if.end121, label %do.end118

do.end118:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i247 = zext i8 %67 to i32
  %call6.i248 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.73, i32 noundef %conv5.i247, i32 noundef %call.i245) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i240) #7
  %call120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1, i32 noundef %i.1262) #11
  br label %cleanup

if.end121:                                        ; preds = %if.end109
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i240) #7
  %add123 = or i32 %mul, 1
  %arrayidx124 = getelementptr [14 x i8], ptr %rec_buf, i32 0, i32 %add123
  %74 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx124, align 1
  %conv125 = zext i8 %75 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv125)
  %cmp127.not = icmp ne i32 %add, %conv125
  %dec = sext i1 %cmp127.not to i32
  %inc132 = add nsw i32 %add, %dec
  %cmp95 = icmp slt i32 %inc132, 5
  br i1 %cmp95, label %if.end121.for.body96_crit_edge, label %do.body134

if.end121.for.body96_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body96

do.body134:                                       ; preds = %if.end121
  %76 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool135.not = icmp eq i32 %76, 0
  br i1 %tobool135.not, label %do.body134.do.end153_crit_edge, label %do.body137

do.body134.do.end153_crit_edge:                   ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end153

do.body137:                                       ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @or51211_init.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@or51211_init, %if.then143)) #7
          to label %do.end153 [label %if.then143], !srcloc !191

if.then143:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @or51211_init.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.1, ptr noundef nonnull %rec_buf) #7
  br label %do.end153

do.end153:                                        ; preds = %if.then143, %do.body137, %do.body134.do.end153_crit_edge
  %77 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %7, align 2
  %conv156 = zext i8 %78 to i32
  %79 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %9, align 4
  %conv158 = zext i8 %80 to i32
  %81 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %10, align 2
  %conv160 = zext i8 %82 to i32
  %83 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %13, align 4
  %conv162 = zext i8 %84 to i32
  %85 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %12, align 2
  %conv164 = zext i8 %86 to i32
  %call165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.1, i32 noundef %conv156, i32 noundef %conv158, i32 noundef %conv160, i32 noundef %conv162, i32 noundef %conv164) #11
  %87 = ptrtoint ptr %rec_buf to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 4, ptr %rec_buf, align 8
  %88 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %6, align 1
  %89 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 3, ptr %7, align 2
  %90 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %8, align 1
  call void @msleep(i32 noundef 20) #7
  %91 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %config1, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %92, align 4
  %call173 = call fastcc i32 @i2c_writebytes(ptr noundef %1, i8 noundef zeroext %94, ptr noundef nonnull %rec_buf, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %if.end181, label %do.end178

do.end178:                                        ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #9
  %call180 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end181:                                        ; preds = %do.end153
  call void @msleep(i32 noundef 20) #7
  %95 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %config1, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %96, align 4
  %call185 = call fastcc i32 @i2c_readbytes(ptr noundef %1, i8 noundef zeroext %98, ptr noundef %11, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %if.end193, label %do.end190

do.end190:                                        ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #9
  %call192 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end193:                                        ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %99)
  %bf.load195 = load i8, ptr %initialized, align 4
  %bf.set = or i8 %bf.load195, -128
  store i8 %bf.set, ptr %initialized, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end193, %do.end190, %do.end178, %do.end118, %do.end106, %do.end89, %do.end77, %do.end61, %do.end49, %do.end35, %do.end20, %do.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end12 ], [ %call15, %do.end20 ], [ -1, %do.end35 ], [ -1, %do.end49 ], [ -1, %do.end61 ], [ -1, %do.end77 ], [ -1, %do.end89 ], [ -1, %do.end106 ], [ -1, %do.end118 ], [ -1, %do.end178 ], [ -1, %do.end190 ], [ 0, %if.end193 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %rec_buf) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %get_ver_buf) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @or51211_sleep(ptr nocapture noundef readnone %fe) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @or51211_set_parameters(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %current_frequency = getelementptr inbounds %struct.or51211_state, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %current_frequency to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_frequency, align 4
  %4 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then:                                          ; preds = %entry
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %6 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_params, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then.if.end11_crit_edge, label %if.then1

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then1:                                         ; preds = %if.then
  %call = tail call i32 %7(ptr noundef %fe) #7
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %8 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %if.then1.if.end11_crit_edge, label %if.then7

if.then1.if.end11_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then7:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 %9(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.then1.if.end11_crit_edge, %if.then.if.end11_crit_edge
  tail call fastcc void @or51211_setmode(ptr noundef %fe)
  %10 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dtv_property_cache, align 4
  %12 = ptrtoint ptr %current_frequency to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %current_frequency, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end11, %entry.if.end15_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @or51211_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %fesettings) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fesettings to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 500, ptr %fesettings, align 4
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
define internal i32 @or51211_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %msg.i52 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  %rec_buf = alloca [2 x i8], align 1
  %snd_buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec_buf) #7
  %2 = ptrtoint ptr %rec_buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %rec_buf, align 1, !annotation !190
  %3 = getelementptr inbounds [2 x i8], ptr %rec_buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %snd_buf) #7
  %5 = ptrtoint ptr %snd_buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 67109632, ptr %snd_buf, align 4
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %status, align 4
  %config = getelementptr inbounds %struct.or51211_state, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %11 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 262143, ptr %11, align 4
  %conv.i = zext i8 %10 to i16
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %snd_buf, ptr %buf3.i, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i = zext i8 %10 to i32
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef %conv5.i, i32 noundef %call.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @msleep(i32 noundef 3) #7
  %18 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %config, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i52) #7
  %22 = getelementptr inbounds i8, ptr %msg.i52, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 196607, ptr %22, align 4
  %conv.i53 = zext i8 %21 to i16
  %24 = ptrtoint ptr %msg.i52 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i53, ptr %msg.i52, align 4
  %flags.i54 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52, i32 0, i32 1
  %25 = ptrtoint ptr %flags.i54 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1, ptr %flags.i54, align 2
  %buf3.i56 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52, i32 0, i32 3
  %26 = ptrtoint ptr %buf3.i56 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %rec_buf, ptr %buf3.i56, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %call.i57 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %msg.i52, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i57)
  %cmp.not.i58 = icmp eq i32 %call.i57, 1
  br i1 %cmp.not.i58, label %do.body14, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i59 = zext i8 %21 to i32
  %call6.i60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.73, i32 noundef %conv5.i59, i32 noundef %call.i57) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i52) #7
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.88) #11
  br label %cleanup

do.body14:                                        ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i52) #7
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool15.not = icmp eq i32 %29, 0
  br i1 %tobool15.not, label %do.body14.do.end31_crit_edge, label %do.body17

do.body14.do.end31_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31

do.body17:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @or51211_read_status.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@or51211_read_status, %if.then23)) #7
          to label %do.end31 [label %if.then23], !srcloc !191

if.then23:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %rec_buf to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rec_buf, align 1
  %conv = zext i8 %31 to i32
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %3, align 1
  %conv25 = zext i8 %33 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @or51211_read_status.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.88, i32 noundef %conv, i32 noundef %conv25) #7
  br label %do.end31

do.end31:                                         ; preds = %if.then23, %do.body17, %do.body14.do.end31_crit_edge
  %34 = ptrtoint ptr %rec_buf to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %rec_buf, align 1
  %36 = and i8 %35, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool34.not = icmp eq i8 %36, 0
  br i1 %tobool34.not, label %do.end31.cleanup_crit_edge, label %if.then35

do.end31.cleanup_crit_edge:                       ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then35:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %status, align 4
  %or39 = or i32 %38, 31
  store i32 %or39, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %do.end31.cleanup_crit_edge, %do.end10, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %do.end10 ], [ 0, %if.then35 ], [ 0, %do.end31.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %snd_buf) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec_buf) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @or51211_read_ber(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %ber) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -38, ptr %ber, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @or51211_read_signal_strength(ptr noundef %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
  %snr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %snr) #7
  %2 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %snr, align 2, !annotation !190
  %read_snr = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 18
  %3 = ptrtoint ptr %read_snr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_snr, align 4
  %call = call i32 %4(ptr noundef %fe, ptr noundef nonnull %snr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %snr1 = getelementptr inbounds %struct.or51211_state, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %snr1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %snr1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 587202559, i32 %6)
  %cmp2 = icmp ugt i32 %6, 587202559
  %div = udiv i32 %6, 8960
  %conv = trunc i32 %div to i16
  %storemerge = select i1 %cmp2, i16 -1, i16 %conv
  %7 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %storemerge, ptr %strength, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %snr) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @or51211_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
  %msg.i54 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  %rec_buf = alloca [2 x i8], align 1
  %snd_buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec_buf) #7
  %2 = ptrtoint ptr %rec_buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %rec_buf, align 1, !annotation !190
  %3 = getelementptr inbounds [2 x i8], ptr %rec_buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !190
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %snd_buf) #7
  %5 = getelementptr inbounds [3 x i8], ptr %snd_buf, i32 0, i32 1
  %6 = getelementptr inbounds [3 x i8], ptr %snd_buf, i32 0, i32 2
  %7 = ptrtoint ptr %snd_buf to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 4, ptr %snd_buf, align 1
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %5, align 1
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %6, align 1
  %config = getelementptr inbounds %struct.or51211_state, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %14 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 262143, ptr %14, align 4
  %conv.i = zext i8 %13 to i16
  %16 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %flags.i, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %18 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %snd_buf, ptr %buf3.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i = zext i8 %13 to i32
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef %conv5.i, i32 noundef %call.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %21 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %config, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i54) #7
  %25 = getelementptr inbounds i8, ptr %msg.i54, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 196607, ptr %25, align 4
  %conv.i55 = zext i8 %24 to i16
  %27 = ptrtoint ptr %msg.i54 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i55, ptr %msg.i54, align 4
  %flags.i56 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i54, i32 0, i32 1
  %28 = ptrtoint ptr %flags.i56 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %flags.i56, align 2
  %buf3.i58 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i54, i32 0, i32 3
  %29 = ptrtoint ptr %buf3.i58 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %rec_buf, ptr %buf3.i58, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call.i59 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %msg.i54, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i59)
  %cmp.not.i60 = icmp eq i32 %call.i59, 1
  br i1 %cmp.not.i60, label %if.end15, label %do.end12

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i61 = zext i8 %24 to i32
  %call6.i62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.73, i32 noundef %conv5.i61, i32 noundef %call.i59) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i54) #7
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.95) #11
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i54) #7
  %32 = ptrtoint ptr %rec_buf to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %rec_buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp.i = icmp eq i8 %33, 0
  br i1 %cmp.i, label %if.end15.calculate_snr.exit_crit_edge, label %if.end.i

if.end15.calculate_snr.exit_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %calculate_snr.exit

if.end.i:                                         ; preds = %if.end15
  %conv = zext i8 %33 to i32
  %call.i65 = call i32 @intlog10(i32 noundef %conv) #7
  %mul.i = shl i32 %call.i65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 89599047, i32 %mul.i)
  %cmp1.i = icmp ugt i32 %mul.i, 89599047
  br i1 %cmp1.i, label %if.end.i.calculate_snr.exit_crit_edge, label %if.end3.i

if.end.i.calculate_snr.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %calculate_snr.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub nuw nsw i32 89599047, %mul.i
  %mul4.i = mul nuw nsw i32 %sub.i, 10
  br label %calculate_snr.exit

calculate_snr.exit:                               ; preds = %if.end3.i, %if.end.i.calculate_snr.exit_crit_edge, %if.end15.calculate_snr.exit_crit_edge
  %retval.0.i66 = phi i32 [ %mul4.i, %if.end3.i ], [ 0, %if.end15.calculate_snr.exit_crit_edge ], [ 0, %if.end.i.calculate_snr.exit_crit_edge ]
  %snr18 = getelementptr inbounds %struct.or51211_state, ptr %1, i32 0, i32 5
  %34 = ptrtoint ptr %snr18 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %retval.0.i66, ptr %snr18, align 4
  %shr = lshr i32 %retval.0.i66, 16
  %conv20 = trunc i32 %shr to i16
  %35 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv20, ptr %snr, align 2
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool22.not = icmp eq i32 %36, 0
  br i1 %tobool22.not, label %calculate_snr.exit.cleanup_crit_edge, label %do.body24

calculate_snr.exit.cleanup_crit_edge:             ; preds = %calculate_snr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body24:                                        ; preds = %calculate_snr.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @or51211_read_snr.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@or51211_read_snr, %if.then30)) #7
          to label %cleanup [label %if.then30], !srcloc !191

if.then30:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %rec_buf to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %rec_buf, align 1
  %conv32 = zext i8 %38 to i32
  %39 = ptrtoint ptr %snr18 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %snr18, align 4
  %shr34 = lshr i32 %40, 24
  %shr36 = lshr i32 %40, 8
  %and = and i32 %shr36, 65535
  %mul = mul nuw nsw i32 %and, 100
  %shr37 = lshr i32 %mul, 16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @or51211_read_snr.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.95, i32 noundef %conv32, i32 noundef %shr34, i32 noundef %shr37) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %do.body24, %calculate_snr.exit.cleanup_crit_edge, %do.end12, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %do.end12 ], [ 0, %if.then30 ], [ 0, %calculate_snr.exit.cleanup_crit_edge ], [ 0, %do.body24 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %snd_buf) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec_buf) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @or51211_read_ucblocks(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %ucblocks) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -38, ptr %ucblocks, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @or51211_load_firmware(ptr noundef %fe, ptr nocapture noundef readonly %fw) unnamed_addr #0 align 64 {
entry:
  %msg.i158 = alloca %struct.i2c_msg, align 4
  %msg.i146 = alloca %struct.i2c_msg, align 4
  %msg.i134 = alloca %struct.i2c_msg, align 4
  %msg.i124 = alloca %struct.i2c_msg, align 4
  %msg.i115 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  %tudata = alloca [585 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 585, ptr nonnull %tudata) #7
  %2 = getelementptr inbounds i8, ptr %tudata, i32 1
  %3 = call ptr @memset(ptr %2, i32 255, i32 584)
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @or51211_load_firmware.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@or51211_load_firmware, %if.then5)) #7
          to label %do.end8 [label %if.then5], !srcloc !191

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @or51211_load_firmware.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.49, i32 noundef %6) #7
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  %7 = ptrtoint ptr %tudata to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 17, ptr %tudata, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 131071, ptr %8, align 4
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 80, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %tudata, ptr %buf3.i, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end17, label %do.end14

do.end14:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef 80, i32 noundef %call.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  br label %cleanup

if.end17:                                         ; preds = %do.end8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %arrayidx18 = getelementptr inbounds [585 x i8], ptr %tudata, i32 0, i32 145
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i115) #7
  %15 = getelementptr inbounds i8, ptr %msg.i115, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 12648447, ptr %15, align 4
  %17 = ptrtoint ptr %msg.i115 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 80, ptr %msg.i115, align 4
  %flags.i116 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i115, i32 0, i32 1
  %18 = ptrtoint ptr %flags.i116 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %flags.i116, align 2
  %buf3.i118 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i115, i32 0, i32 3
  %19 = ptrtoint ptr %buf3.i118 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx18, ptr %buf3.i118, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i119 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i115, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i119)
  %cmp.not.i120 = icmp eq i32 %call.i119, 1
  br i1 %cmp.not.i120, label %i2c_readbytes.exit, label %do.end24

i2c_readbytes.exit:                               ; preds = %if.end17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i115) #7
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  br label %for.body

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.73, i32 noundef 80, i32 noundef %call.i119) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i115) #7
  br label %cleanup

for.cond30.preheader:                             ; preds = %for.body
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  br label %for.body32

for.body:                                         ; preds = %for.body.for.body_crit_edge, %i2c_readbytes.exit
  %i.0183 = phi i32 [ 0, %i2c_readbytes.exit ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx28 = getelementptr i8, ptr %23, i32 %i.0183
  %26 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx28, align 1
  %arrayidx29 = getelementptr [585 x i8], ptr %tudata, i32 0, i32 %i.0183
  %28 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx29, align 1
  %inc = add nuw nsw i32 %i.0183, 1
  %exitcond.not = icmp eq i32 %inc, 145
  br i1 %exitcond.not, label %for.cond30.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body32:                                       ; preds = %for.body32.for.body32_crit_edge, %for.cond30.preheader
  %i.1184 = phi i32 [ 0, %for.cond30.preheader ], [ %inc38, %for.body32.for.body32_crit_edge ]
  %add = add nuw nsw i32 %i.1184, 145
  %arrayidx34 = getelementptr i8, ptr %25, i32 %add
  %29 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx34, align 1
  %add35 = add nuw nsw i32 %i.1184, 337
  %arrayidx36 = getelementptr [585 x i8], ptr %tudata, i32 0, i32 %add35
  %31 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx36, align 1
  %inc38 = add nuw nsw i32 %i.1184, 1
  %exitcond186.not = icmp eq i32 %inc38, 248
  br i1 %exitcond186.not, label %for.end39, label %for.body32.for.body32_crit_edge

for.body32.for.body32_crit_edge:                  ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body32

for.end39:                                        ; preds = %for.body32
  %config = getelementptr inbounds %struct.or51211_state, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %config, align 4
  %reset = getelementptr inbounds %struct.or51211_config, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reset, align 4
  call void %35(ptr noundef %fe) #7
  %36 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %config, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %37, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i124) #7
  %40 = getelementptr inbounds i8, ptr %msg.i124, i32 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 38404095, ptr %40, align 4
  %conv.i = zext i8 %39 to i16
  %42 = ptrtoint ptr %msg.i124 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i, ptr %msg.i124, align 4
  %flags.i125 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i124, i32 0, i32 1
  %43 = ptrtoint ptr %flags.i125 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %flags.i125, align 2
  %buf3.i127 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i124, i32 0, i32 3
  %44 = ptrtoint ptr %buf3.i127 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %tudata, ptr %buf3.i127, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %call.i128 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %msg.i124, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i128)
  %cmp.not.i129 = icmp eq i32 %call.i128, 1
  br i1 %cmp.not.i129, label %if.end50, label %do.end47

do.end47:                                         ; preds = %for.end39
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i = zext i8 %39 to i32
  %call6.i130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef %conv5.i, i32 noundef %call.i128) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i124) #7
  br label %cleanup

if.end50:                                         ; preds = %for.end39
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i124) #7
  call void @msleep(i32 noundef 1) #7
  %47 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %config, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 4
  %51 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data, align 4
  %arrayidx54 = getelementptr i8, ptr %52, i32 393
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i134) #7
  %53 = getelementptr inbounds i8, ptr %msg.i134, i32 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 532545535, ptr %53, align 4
  %conv.i135 = zext i8 %50 to i16
  %55 = ptrtoint ptr %msg.i134 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i135, ptr %msg.i134, align 4
  %flags.i136 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i134, i32 0, i32 1
  %56 = ptrtoint ptr %flags.i136 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %flags.i136, align 2
  %buf3.i138 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i134, i32 0, i32 3
  %57 = ptrtoint ptr %buf3.i138 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %arrayidx54, ptr %buf3.i138, align 4
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %call.i139 = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %msg.i134, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i139)
  %cmp.not.i140 = icmp eq i32 %call.i139, 1
  br i1 %cmp.not.i140, label %if.end63, label %do.end60

do.end60:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i141 = zext i8 %50 to i32
  %call6.i142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef %conv5.i141, i32 noundef %call.i139) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i134) #7
  br label %cleanup

if.end63:                                         ; preds = %if.end50
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i134) #7
  call void @msleep(i32 noundef 1) #7
  %60 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %config, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i146) #7
  %64 = getelementptr inbounds i8, ptr %msg.i146, i32 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 196607, ptr %64, align 4
  %conv.i147 = zext i8 %63 to i16
  %66 = ptrtoint ptr %msg.i146 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv.i147, ptr %msg.i146, align 4
  %flags.i148 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i146, i32 0, i32 1
  %67 = ptrtoint ptr %flags.i148 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 0, ptr %flags.i148, align 2
  %buf3.i150 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i146, i32 0, i32 3
  %68 = ptrtoint ptr %buf3.i150 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @run_buf, ptr %buf3.i150, align 4
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %call.i151 = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %msg.i146, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i151)
  %cmp.not.i152 = icmp eq i32 %call.i151, 1
  br i1 %cmp.not.i152, label %if.end74, label %do.end71

do.end71:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i153 = zext i8 %63 to i32
  %call6.i154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef %conv5.i153, i32 noundef %call.i151) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i146) #7
  br label %cleanup

if.end74:                                         ; preds = %if.end63
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i146) #7
  call void @msleep(i32 noundef 10) #7
  %71 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %config, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %72, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i158) #7
  %75 = getelementptr inbounds i8, ptr %msg.i158, i32 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 196607, ptr %75, align 4
  %conv.i159 = zext i8 %74 to i16
  %77 = ptrtoint ptr %msg.i158 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv.i159, ptr %msg.i158, align 4
  %flags.i160 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i158, i32 0, i32 1
  %78 = ptrtoint ptr %flags.i160 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 0, ptr %flags.i160, align 2
  %buf3.i162 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i158, i32 0, i32 3
  %79 = ptrtoint ptr %buf3.i162 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @run_buf, ptr %buf3.i162, align 4
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %1, align 4
  %call.i163 = call i32 @i2c_transfer(ptr noundef %81, ptr noundef nonnull %msg.i158, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i163)
  %cmp.not.i164 = icmp eq i32 %call.i163, 1
  br i1 %cmp.not.i164, label %if.end85, label %do.end82

do.end82:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i165 = zext i8 %74 to i32
  %call6.i166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef %conv5.i165, i32 noundef %call.i163) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i158) #7
  br label %cleanup

if.end85:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i158) #7
  call void @msleep(i32 noundef 10) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %do.end82, %do.end71, %do.end60, %do.end47, %do.end24, %do.end14
  %.str.69.sink = phi ptr [ @.str.69, %if.end85 ], [ @.str.66, %do.end82 ], [ @.str.63, %do.end71 ], [ @.str.60, %do.end60 ], [ @.str.57, %do.end47 ], [ @.str.54, %do.end24 ], [ @.str.52, %do.end14 ]
  %retval.0 = phi i32 [ 0, %if.end85 ], [ -1, %do.end82 ], [ -1, %do.end71 ], [ -1, %do.end60 ], [ -1, %do.end47 ], [ -1, %do.end24 ], [ -1, %do.end14 ]
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.69.sink, ptr noundef nonnull @.str.49) #11
  call void @llvm.lifetime.end.p0(i64 585, ptr nonnull %tudata) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_writebytes(ptr nocapture noundef readonly %state, i8 noundef zeroext %reg, ptr noundef %buf, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %0 = getelementptr inbounds i8, ptr %msg, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %conv = zext i8 %reg to i16
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %flags, align 2
  %conv1 = trunc i32 %len to i16
  %len2 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %4 = ptrtoint ptr %len2 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv1, ptr %len2, align 4
  %buf3 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %5 = ptrtoint ptr %buf3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %buf, ptr %buf3, align 4
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state, align 4
  %call = call i32 @i2c_transfer(ptr noundef %7, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv5 = zext i8 %reg to i32
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef %conv5, i32 noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -121, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_readbytes(ptr nocapture noundef readonly %state, i8 noundef zeroext %reg, ptr noundef %buf, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %0 = getelementptr inbounds i8, ptr %msg, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %conv = zext i8 %reg to i16
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 1, ptr %flags, align 2
  %conv1 = trunc i32 %len to i16
  %len2 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %4 = ptrtoint ptr %len2 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv1, ptr %len2, align 4
  %buf3 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %5 = ptrtoint ptr %buf3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %buf, ptr %buf3, align 4
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state, align 4
  %call = call i32 @i2c_transfer(ptr noundef %7, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv5 = zext i8 %reg to i32
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.73, i32 noundef %conv5, i32 noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -121, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @or51211_setmode(ptr noundef %fe) unnamed_addr #0 align 64 {
entry:
  %msg.i38 = alloca %struct.i2c_msg, align 4
  %msg.i26 = alloca %struct.i2c_msg, align 4
  %msg.i14 = alloca %struct.i2c_msg, align 4
  %msg.i2 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  %rec_buf = alloca [14 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %rec_buf) #7
  %2 = getelementptr inbounds [14 x i8], ptr %rec_buf, i32 0, i32 1
  %3 = getelementptr inbounds [14 x i8], ptr %rec_buf, i32 0, i32 2
  %4 = getelementptr inbounds [14 x i8], ptr %rec_buf, i32 0, i32 3
  %5 = getelementptr inbounds [14 x i8], ptr %rec_buf, i32 0, i32 10
  %6 = getelementptr inbounds [14 x i8], ptr %rec_buf, i32 0, i32 11
  %config = getelementptr inbounds %struct.or51211_state, ptr %1, i32 0, i32 1
  %7 = call ptr @memset(ptr %rec_buf, i32 255, i32 14)
  %8 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config, align 4
  %setmode = getelementptr inbounds %struct.or51211_config, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %setmode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %setmode, align 4
  tail call void %11(ptr noundef %fe, i32 noundef 0) #7
  %12 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %config, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %16 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 196607, ptr %16, align 4
  %conv.i = zext i8 %15 to i16
  %18 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %flags.i, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %20 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @run_buf, ptr %buf3.i, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i = zext i8 %15 to i32
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef %conv5.i, i32 noundef %call.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.74) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @msleep(i32 noundef 10) #7
  %23 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %config, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2) #7
  %27 = getelementptr inbounds i8, ptr %msg.i2, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 196607, ptr %27, align 4
  %conv.i3 = zext i8 %26 to i16
  %29 = ptrtoint ptr %msg.i2 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i3, ptr %msg.i2, align 4
  %flags.i4 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2, i32 0, i32 1
  %30 = ptrtoint ptr %flags.i4 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %flags.i4, align 2
  %buf3.i6 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2, i32 0, i32 3
  %31 = ptrtoint ptr %buf3.i6 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @run_buf, ptr %buf3.i6, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %call.i7 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %msg.i2, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i7)
  %cmp.not.i8 = icmp eq i32 %call.i7, 1
  br i1 %cmp.not.i8, label %if.end13, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i9 = zext i8 %26 to i32
  %call6.i10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef %conv5.i9, i32 noundef %call.i7) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2) #7
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.74) #11
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2) #7
  call void @msleep(i32 noundef 10) #7
  %34 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %config, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i14) #7
  %38 = getelementptr inbounds i8, ptr %msg.i14, i32 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 262143, ptr %38, align 4
  %conv.i15 = zext i8 %37 to i16
  %40 = ptrtoint ptr %msg.i14 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i15, ptr %msg.i14, align 4
  %flags.i16 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 0, i32 1
  %41 = ptrtoint ptr %flags.i16 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %flags.i16, align 2
  %buf3.i18 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 0, i32 3
  %42 = ptrtoint ptr %buf3.i18 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @cmd_buf, ptr %buf3.i18, align 4
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %call.i19 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %msg.i14, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i19)
  %cmp.not.i20 = icmp eq i32 %call.i19, 1
  br i1 %cmp.not.i20, label %if.end24, label %do.end21

do.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i21 = zext i8 %37 to i32
  %call6.i22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef %conv5.i21, i32 noundef %call.i19) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i14) #7
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.74) #11
  br label %cleanup

if.end24:                                         ; preds = %if.end13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i14) #7
  %45 = ptrtoint ptr %rec_buf to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 4, ptr %rec_buf, align 1
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %2, align 1
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 3, ptr %3, align 1
  %48 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %4, align 1
  call void @msleep(i32 noundef 20) #7
  %49 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %config, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %50, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i26) #7
  %53 = getelementptr inbounds i8, ptr %msg.i26, i32 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 262143, ptr %53, align 4
  %conv.i27 = zext i8 %52 to i16
  %55 = ptrtoint ptr %msg.i26 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i27, ptr %msg.i26, align 4
  %flags.i28 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i26, i32 0, i32 1
  %56 = ptrtoint ptr %flags.i28 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %flags.i28, align 2
  %buf3.i30 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i26, i32 0, i32 3
  %57 = ptrtoint ptr %buf3.i30 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %rec_buf, ptr %buf3.i30, align 4
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %call.i31 = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %msg.i26, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i31)
  %cmp.not.i32 = icmp eq i32 %call.i31, 1
  br i1 %cmp.not.i32, label %i2c_writebytes.exit37.thread, label %do.end35

i2c_writebytes.exit37.thread:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i26) #7
  br label %if.end38

do.end35:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i33 = zext i8 %52 to i32
  %call6.i34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef %conv5.i33, i32 noundef %call.i31) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i26) #7
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.74) #11
  br label %if.end38

if.end38:                                         ; preds = %do.end35, %i2c_writebytes.exit37.thread
  call void @msleep(i32 noundef 3) #7
  %60 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %config, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i38) #7
  %64 = getelementptr inbounds i8, ptr %msg.i38, i32 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 196607, ptr %64, align 4
  %conv.i39 = zext i8 %63 to i16
  %66 = ptrtoint ptr %msg.i38 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv.i39, ptr %msg.i38, align 4
  %flags.i40 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 0, i32 1
  %67 = ptrtoint ptr %flags.i40 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 1, ptr %flags.i40, align 2
  %buf3.i42 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 0, i32 3
  %68 = ptrtoint ptr %buf3.i42 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %5, ptr %buf3.i42, align 4
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %call.i43 = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %msg.i38, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i43)
  %cmp.not.i44 = icmp eq i32 %call.i43, 1
  br i1 %cmp.not.i44, label %do.body51, label %do.end47

do.end47:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i45 = zext i8 %63 to i32
  %call6.i46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.73, i32 noundef %conv5.i45, i32 noundef %call.i43) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i38) #7
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.74) #11
  br label %cleanup

do.body51:                                        ; preds = %if.end38
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i38) #7
  %71 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool52.not = icmp eq i32 %71, 0
  br i1 %tobool52.not, label %do.body51.cleanup_crit_edge, label %do.body54

do.body51.cleanup_crit_edge:                      ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body54:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @or51211_setmode.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@or51211_setmode, %if.then60)) #7
          to label %cleanup [label %if.then60], !srcloc !191

if.then60:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %5, align 1
  %conv = zext i8 %73 to i32
  %74 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %6, align 1
  %conv63 = zext i8 %75 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @or51211_setmode.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.74, i32 noundef %conv, i32 noundef %conv63) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %do.body54, %do.body51.cleanup_crit_edge, %do.end47, %do.end21, %do.end10, %do.end
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %rec_buf) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !123, !124, !125, !126, !128, !130, !131, !132, !134, !135, !136, !138, !139, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !172, !174, !175, !176, !178, !179, !180}
!llvm.module.flags = !{!181, !182, !183, !184, !185, !186, !187, !188}
!llvm.ident = !{!189}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 547, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype295, !1, !"__UNIQUE_ID_debugtype295", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug296, !4, !"__UNIQUE_ID_debug296", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 548, i32 1}
!5 = !{ptr @__UNIQUE_ID_description297, !6, !"__UNIQUE_ID_description297", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 550, i32 1}
!7 = !{ptr @__UNIQUE_ID_author298, !8, !"__UNIQUE_ID_author298", i1 false, i1 false}
!8 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 551, i32 1}
!9 = !{ptr @__UNIQUE_ID_file299, !10, !"__UNIQUE_ID_file299", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 552, i32 1}
!11 = !{ptr @__UNIQUE_ID_license300, !10, !"__UNIQUE_ID_license300", i1 false, i1 false}
!12 = !{ptr @__ksymtab_or51211_attach, !13, !"__ksymtab_or51211_attach", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 554, i32 1}
!14 = !{ptr @debug, !15, !"debug", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 33, i32 12}
!16 = !{ptr @or51211_ops, !17, !"or51211_ops", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 520, i32 38}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 360, i32 3}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @or51211_init._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @or51211_init._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 364, i32 3}
!27 = !{ptr @or51211_init._entry.4, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @or51211_init._entry_ptr.6, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 366, i32 4}
!31 = !{ptr @or51211_init._entry.7, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @or51211_init._entry_ptr.9, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 373, i32 4}
!35 = !{ptr @or51211_init._entry.10, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @or51211_init._entry_ptr.12, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 376, i32 3}
!39 = !{ptr @or51211_init._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @or51211_init._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 389, i32 4}
!43 = !{ptr @or51211_init._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @or51211_init._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 402, i32 4}
!47 = !{ptr @or51211_init._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @or51211_init._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 408, i32 4}
!51 = !{ptr @or51211_init._entry.22, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @or51211_init._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 419, i32 4}
!55 = !{ptr @or51211_init._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @or51211_init._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 425, i32 4}
!59 = !{ptr @or51211_init._entry.28, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @or51211_init._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 437, i32 5}
!63 = !{ptr @or51211_init._entry.31, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @or51211_init._entry_ptr.33, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 444, i32 5}
!67 = !{ptr @or51211_init._entry.34, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @or51211_init._entry_ptr.36, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 452, i32 3}
!71 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @or51211_init.__UNIQUE_ID_ddebug294, !70, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!73 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 454, i32 3}
!76 = !{ptr @or51211_init._entry.40, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @or51211_init._entry_ptr.42, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 465, i32 4}
!80 = !{ptr @or51211_init._entry.43, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @or51211_init._entry_ptr.45, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.47, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 471, i32 4}
!84 = !{ptr @or51211_init._entry.46, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @or51211_init._entry_ptr.48, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.49, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 100, i32 2}
!88 = !{ptr @.str.50, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @or51211_load_firmware.__UNIQUE_ID_ddebug290, !87, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!90 = !{ptr @.str.51, !87, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.52, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 105, i32 3}
!93 = !{ptr @or51211_load_firmware._entry, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @or51211_load_firmware._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.54, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 109, i32 3}
!97 = !{ptr @or51211_load_firmware._entry.53, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @or51211_load_firmware._entry_ptr.55, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.57, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 123, i32 3}
!101 = !{ptr @or51211_load_firmware._entry.56, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @or51211_load_firmware._entry_ptr.58, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.60, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 130, i32 3}
!105 = !{ptr @or51211_load_firmware._entry.59, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @or51211_load_firmware._entry_ptr.61, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.63, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 136, i32 3}
!109 = !{ptr @or51211_load_firmware._entry.62, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @or51211_load_firmware._entry_ptr.64, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.66, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 143, i32 3}
!113 = !{ptr @or51211_load_firmware._entry.65, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @or51211_load_firmware._entry_ptr.67, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.69, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 148, i32 2}
!117 = !{ptr @or51211_load_firmware._entry.68, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @or51211_load_firmware._entry_ptr.70, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @run_buf, !120, !"run_buf", i1 false, i1 false}
!120 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 37, i32 11}
!121 = !{ptr @.str.71, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 69, i32 3}
!123 = !{ptr @.str.72, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @i2c_writebytes._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @i2c_writebytes._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @cmd_buf, !127, !"cmd_buf", i1 false, i1 false}
!127 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 38, i32 11}
!128 = !{ptr @.str.73, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 86, i32 3}
!130 = !{ptr @i2c_readbytes._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @i2c_readbytes._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.74, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 160, i32 3}
!134 = !{ptr @or51211_setmode._entry, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @or51211_setmode._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @or51211_setmode._entry.75, !137, !"_entry", i1 false, i1 false}
!137 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 167, i32 3}
!138 = !{ptr @or51211_setmode._entry_ptr.76, !137, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @or51211_setmode._entry.77, !140, !"_entry", i1 false, i1 false}
!140 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 183, i32 3}
!141 = !{ptr @or51211_setmode._entry_ptr.78, !140, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.80, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 193, i32 3}
!144 = !{ptr @or51211_setmode._entry.79, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @or51211_setmode._entry_ptr.81, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.83, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 197, i32 3}
!148 = !{ptr @or51211_setmode._entry.82, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @or51211_setmode._entry_ptr.84, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.85, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 200, i32 2}
!152 = !{ptr @or51211_setmode.__UNIQUE_ID_ddebug291, !151, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!153 = !{ptr @.str.86, !151, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.87, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 235, i32 3}
!156 = !{ptr @.str.88, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @or51211_read_status._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @or51211_read_status._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.90, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 240, i32 3}
!161 = !{ptr @or51211_read_status._entry.89, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @or51211_read_status._entry_ptr.91, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.92, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 243, i32 2}
!165 = !{ptr @or51211_read_status.__UNIQUE_ID_ddebug292, !164, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!166 = !{ptr @.str.93, !164, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.94, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 293, i32 3}
!169 = !{ptr @.str.95, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @or51211_read_snr._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @or51211_read_snr._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.97, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 297, i32 3}
!174 = !{ptr @or51211_read_snr._entry.96, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @or51211_read_snr._entry_ptr.98, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.99, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/dvb-frontends/or51211.c", i32 304, i32 2}
!178 = !{ptr @or51211_read_snr.__UNIQUE_ID_ddebug293, !177, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!179 = !{ptr @.str.100, !177, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!181 = !{i32 1, !"wchar_size", i32 2}
!182 = !{i32 1, !"min_enum_size", i32 4}
!183 = !{i32 8, !"branch-target-enforcement", i32 0}
!184 = !{i32 8, !"sign-return-address", i32 0}
!185 = !{i32 8, !"sign-return-address-all", i32 0}
!186 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!187 = !{i32 7, !"uwtable", i32 1}
!188 = !{i32 7, !"frame-pointer", i32 2}
!189 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!190 = !{!"auto-init"}
!191 = !{i64 2148703187, i64 2148703192, i64 2148703205, i64 2148703249, i64 2148703283, i64 2148703304}
