; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/s5h1409.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/s5h1409.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+s5h1409_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_s5h1409_attach\09\09\09\09"
module asm "\09.long\09__crc_s5h1409_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s5h1409_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22s5h1409_attach\22\09\09\09\09\09"
module asm "__kstrtabns_s5h1409_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.init_tab = type { i8, i16 }
%struct.qam64_snr_tab = type { i16, i16 }
%struct.qam256_snr_tab = type { i16, i16 }
%struct.vsb_snr_tab = type { i16, i16 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.s5h1409_state = type { ptr, ptr, %struct.dvb_frontend, i32, i32, i32, i32, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.s5h1409_config = type { i8, i8, i8, i16, i8, i8, i16, i8 }

@__param_str_debug = internal constant [14 x i8] c"s5h1409.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [27 x i8] c"s5h1409.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [49 x i8] c"s5h1409.parm=debug:Enable verbose debug messages\00", section ".modinfo", align 1
@s5h1409_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Samsung S5H1409 QAM/8VSB Frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 54000000, i32 858000000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 2138112 }, [8 x i8] c"\0B\02\00\00\00\00\00\00", ptr null, ptr @s5h1409_release, ptr null, ptr @s5h1409_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5h1409_set_frontend, ptr @s5h1409_get_tune_settings, ptr @s5h1409_get_frontend, ptr @s5h1409_read_status, ptr @s5h1409_read_ber, ptr @s5h1409_read_signal_strength, ptr @s5h1409_read_snr, ptr @s5h1409_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5h1409_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@s5h1409_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 971, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Failed to initialize correctly\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s5h1409_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/s5h1409.c\00", [58 x i8] zeroinitializer }, align 32
@s5h1409_attach._entry_ptr = internal global ptr @s5h1409_attach._entry, section ".printk_index", align 4
@__kstrtab_s5h1409_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_s5h1409_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_s5h1409_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s5h1409_attach to i32), ptr @__kstrtab_s5h1409_attach, ptr @__kstrtabns_s5h1409_attach }, section "___ksymtab+s5h1409_attach", align 4
@__UNIQUE_ID_description292 = internal constant [66 x i8] c"s5h1409.description=Samsung S5H1409 QAM-B/ATSC Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [27 x i8] c"s5h1409.author=Steven Toth\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [49 x i8] c"s5h1409.file=drivers/media/dvb-frontends/s5h1409\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"s5h1409.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@s5h1409_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: readreg error (ret == %i)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s5h1409_readreg\00", [16 x i8] zeroinitializer }, align 32
@s5h1409_readreg._entry_ptr = internal global ptr @s5h1409_readreg._entry, section ".printk_index", align 4
@s5h1409_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"s5h1409_init\00", [19 x i8] zeroinitializer }, align 32
@s5h1409_init._entry_ptr = internal global ptr @s5h1409_init._entry, section ".printk_index", align 4
@init_tab = internal constant { [45 x %struct.init_tab], [44 x i8] } { [45 x %struct.init_tab] [%struct.init_tab { i8 0, i16 113 }, %struct.init_tab { i8 1, i16 12819 }, %struct.init_tab { i8 9, i16 37 }, %struct.init_tab { i8 28, i16 29 }, %struct.init_tab { i8 31, i16 45 }, %struct.init_tab { i8 32, i16 29 }, %struct.init_tab { i8 34, i16 34 }, %struct.init_tab { i8 35, i16 32 }, %struct.init_tab { i8 41, i16 4367 }, %struct.init_tab { i8 42, i16 4276 }, %struct.init_tab { i8 43, i16 4270 }, %struct.init_tab { i8 44, i16 49 }, %struct.init_tab { i8 49, i16 269 }, %struct.init_tab { i8 50, i16 256 }, %struct.init_tab { i8 68, i16 1296 }, %struct.init_tab { i8 84, i16 260 }, %struct.init_tab { i8 88, i16 8738 }, %struct.init_tab { i8 89, i16 4450 }, %struct.init_tab { i8 90, i16 12817 }, %struct.init_tab { i8 93, i16 880 }, %struct.init_tab { i8 94, i16 662 }, %struct.init_tab { i8 97, i16 16 }, %struct.init_tab { i8 99, i16 18944 }, %struct.init_tab { i8 101, i16 2048 }, %struct.init_tab { i8 113, i16 3 }, %struct.init_tab { i8 114, i16 1136 }, %struct.init_tab { i8 -127, i16 2 }, %struct.init_tab { i8 -126, i16 1536 }, %struct.init_tab { i8 -122, i16 2 }, %struct.init_tab { i8 -118, i16 11320 }, %struct.init_tab { i8 -117, i16 10807 }, %struct.init_tab { i8 -110, i16 12335 }, %struct.init_tab { i8 -109, i16 13106 }, %struct.init_tab { i8 -106, i16 12 }, %struct.init_tab { i8 -103, i16 257 }, %struct.init_tab { i8 -100, i16 11831 }, %struct.init_tab { i8 -99, i16 11319 }, %struct.init_tab { i8 -98, i16 11319 }, %struct.init_tab { i8 -85, i16 256 }, %struct.init_tab { i8 -84, i16 4099 }, %struct.init_tab { i8 -83, i16 4159 }, %struct.init_tab { i8 -30, i16 256 }, %struct.init_tab { i8 -29, i16 4096 }, %struct.init_tab { i8 40, i16 4112 }, %struct.init_tab { i8 -79, i16 14 }], [44 x i8] zeroinitializer }, align 32
@s5h1409_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s(%d)\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s5h1409_sleep\00", [18 x i8] zeroinitializer }, align 32
@s5h1409_sleep._entry_ptr = internal global ptr @s5h1409_sleep._entry, section ".printk_index", align 4
@s5h1409_register_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.9, ptr @.str.2, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s5h1409_register_reset\00", [41 x i8] zeroinitializer }, align 32
@s5h1409_register_reset._entry_ptr = internal global ptr @s5h1409_register_reset._entry, section ".printk_index", align 4
@s5h1409_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: error (reg == 0x%02x, val == 0x%04x, ret == %i)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s5h1409_writereg\00", [47 x i8] zeroinitializer }, align 32
@s5h1409_writereg._entry_ptr = internal global ptr @s5h1409_writereg._entry, section ".printk_index", align 4
@s5h1409_set_spectralinversion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.12, ptr @.str.2, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"s5h1409_set_spectralinversion\00", [34 x i8] zeroinitializer }, align 32
@s5h1409_set_spectralinversion._entry_ptr = internal global ptr @s5h1409_set_spectralinversion._entry, section ".printk_index", align 4
@s5h1409_set_if_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s(%d KHz)\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s5h1409_set_if_freq\00", [44 x i8] zeroinitializer }, align 32
@s5h1409_set_if_freq._entry_ptr = internal global ptr @s5h1409_set_if_freq._entry, section ".printk_index", align 4
@s5h1409_set_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.15, ptr @.str.2, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s5h1409_set_gpio\00", [47 x i8] zeroinitializer }, align 32
@s5h1409_set_gpio._entry_ptr = internal global ptr @s5h1409_set_gpio._entry, section ".printk_index", align 4
@s5h1409_set_mpeg_timing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.16, ptr @.str.2, i32 669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"s5h1409_set_mpeg_timing\00", [40 x i8] zeroinitializer }, align 32
@s5h1409_set_mpeg_timing._entry_ptr = internal global ptr @s5h1409_set_mpeg_timing._entry, section ".printk_index", align 4
@s5h1409_set_mpeg_timing._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s(%d) Mode1 or Defaulting\0A\00", [36 x i8] zeroinitializer }, align 32
@s5h1409_set_mpeg_timing._entry_ptr.19 = internal global ptr @s5h1409_set_mpeg_timing._entry.17, section ".printk_index", align 4
@s5h1409_softreset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.20, ptr @.str.2, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s5h1409_softreset\00", [46 x i8] zeroinitializer }, align 32
@s5h1409_softreset._entry_ptr = internal global ptr @s5h1409_softreset._entry, section ".printk_index", align 4
@s5h1409_i2c_gate_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.21, ptr @.str.2, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s5h1409_i2c_gate_ctrl\00", [42 x i8] zeroinitializer }, align 32
@s5h1409_i2c_gate_ctrl._entry_ptr = internal global ptr @s5h1409_i2c_gate_ctrl._entry, section ".printk_index", align 4
@s5h1409_set_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s(frequency=%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s5h1409_set_frontend\00", [43 x i8] zeroinitializer }, align 32
@s5h1409_set_frontend._entry_ptr = internal global ptr @s5h1409_set_frontend._entry, section ".printk_index", align 4
@s5h1409_enable_modulation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s(0x%08x)\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"s5h1409_enable_modulation\00", [38 x i8] zeroinitializer }, align 32
@s5h1409_enable_modulation._entry_ptr = internal global ptr @s5h1409_enable_modulation._entry, section ".printk_index", align 4
@s5h1409_enable_modulation._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s() VSB_8\0A\00", [20 x i8] zeroinitializer }, align 32
@s5h1409_enable_modulation._entry_ptr.28 = internal global ptr @s5h1409_enable_modulation._entry.26, section ".printk_index", align 4
@s5h1409_enable_modulation._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s() QAM_AUTO (64/256)\0A\00", [40 x i8] zeroinitializer }, align 32
@s5h1409_enable_modulation._entry_ptr.31 = internal global ptr @s5h1409_enable_modulation._entry.29, section ".printk_index", align 4
@s5h1409_enable_modulation._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.25, ptr @.str.2, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s() Invalid modulation\0A\00", [39 x i8] zeroinitializer }, align 32
@s5h1409_enable_modulation._entry_ptr.34 = internal global ptr @s5h1409_enable_modulation._entry.32, section ".printk_index", align 4
@s5h1409_set_qam_interleave_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s() setting QAM state to INTERLEAVE_SET\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"s5h1409_set_qam_interleave_mode\00", [32 x i8] zeroinitializer }, align 32
@s5h1409_set_qam_interleave_mode._entry_ptr = internal global ptr @s5h1409_set_qam_interleave_mode._entry, section ".printk_index", align 4
@s5h1409_set_qam_interleave_mode._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s() setting QAM state to TUNING_STARTED\0A\00", [54 x i8] zeroinitializer }, align 32
@s5h1409_set_qam_interleave_mode._entry_ptr.39 = internal global ptr @s5h1409_set_qam_interleave_mode._entry.37, section ".printk_index", align 4
@s5h1409_set_qam_amhum_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s() setting QAM state to OPT_L3\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"s5h1409_set_qam_amhum_mode\00", [37 x i8] zeroinitializer }, align 32
@s5h1409_set_qam_amhum_mode._entry_ptr = internal global ptr @s5h1409_set_qam_amhum_mode._entry, section ".printk_index", align 4
@s5h1409_set_qam_amhum_mode._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 503, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s() setting QAM state to OPT_L2\0A\00", [62 x i8] zeroinitializer }, align 32
@s5h1409_set_qam_amhum_mode._entry_ptr.44 = internal global ptr @s5h1409_set_qam_amhum_mode._entry.42, section ".printk_index", align 4
@s5h1409_set_qam_amhum_mode._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.2, i32 512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s() setting QAM state to OPT_L1\0A\00", [62 x i8] zeroinitializer }, align 32
@s5h1409_set_qam_amhum_mode._entry_ptr.47 = internal global ptr @s5h1409_set_qam_amhum_mode._entry.45, section ".printk_index", align 4
@s5h1409_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 793, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s() status 0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s5h1409_read_status\00", [44 x i8] zeroinitializer }, align 32
@s5h1409_read_status._entry_ptr = internal global ptr @s5h1409_read_status._entry, section ".printk_index", align 4
@s5h1409_read_snr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.50, ptr @.str.2, i32 848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s5h1409_read_snr\00", [47 x i8] zeroinitializer }, align 32
@s5h1409_read_snr._entry_ptr = internal global ptr @s5h1409_read_snr._entry, section ".printk_index", align 4
@s5h1409_qam64_lookup_snr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.51, ptr @.str.2, i32 816, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"s5h1409_qam64_lookup_snr\00", [39 x i8] zeroinitializer }, align 32
@s5h1409_qam64_lookup_snr._entry_ptr = internal global ptr @s5h1409_qam64_lookup_snr._entry, section ".printk_index", align 4
@qam64_snr_tab = internal constant { [65 x %struct.qam64_snr_tab], [92 x i8] } { [65 x %struct.qam64_snr_tab] [%struct.qam64_snr_tab { i16 1, i16 0 }, %struct.qam64_snr_tab { i16 12, i16 300 }, %struct.qam64_snr_tab { i16 15, i16 290 }, %struct.qam64_snr_tab { i16 18, i16 280 }, %struct.qam64_snr_tab { i16 22, i16 270 }, %struct.qam64_snr_tab { i16 23, i16 268 }, %struct.qam64_snr_tab { i16 24, i16 266 }, %struct.qam64_snr_tab { i16 25, i16 264 }, %struct.qam64_snr_tab { i16 27, i16 262 }, %struct.qam64_snr_tab { i16 28, i16 260 }, %struct.qam64_snr_tab { i16 29, i16 258 }, %struct.qam64_snr_tab { i16 30, i16 256 }, %struct.qam64_snr_tab { i16 32, i16 254 }, %struct.qam64_snr_tab { i16 33, i16 252 }, %struct.qam64_snr_tab { i16 34, i16 250 }, %struct.qam64_snr_tab { i16 35, i16 249 }, %struct.qam64_snr_tab { i16 36, i16 248 }, %struct.qam64_snr_tab { i16 37, i16 247 }, %struct.qam64_snr_tab { i16 38, i16 246 }, %struct.qam64_snr_tab { i16 39, i16 245 }, %struct.qam64_snr_tab { i16 40, i16 244 }, %struct.qam64_snr_tab { i16 41, i16 243 }, %struct.qam64_snr_tab { i16 42, i16 241 }, %struct.qam64_snr_tab { i16 43, i16 240 }, %struct.qam64_snr_tab { i16 44, i16 239 }, %struct.qam64_snr_tab { i16 45, i16 238 }, %struct.qam64_snr_tab { i16 46, i16 237 }, %struct.qam64_snr_tab { i16 47, i16 236 }, %struct.qam64_snr_tab { i16 48, i16 235 }, %struct.qam64_snr_tab { i16 49, i16 234 }, %struct.qam64_snr_tab { i16 50, i16 233 }, %struct.qam64_snr_tab { i16 51, i16 232 }, %struct.qam64_snr_tab { i16 52, i16 231 }, %struct.qam64_snr_tab { i16 53, i16 230 }, %struct.qam64_snr_tab { i16 55, i16 229 }, %struct.qam64_snr_tab { i16 56, i16 228 }, %struct.qam64_snr_tab { i16 57, i16 227 }, %struct.qam64_snr_tab { i16 58, i16 226 }, %struct.qam64_snr_tab { i16 59, i16 225 }, %struct.qam64_snr_tab { i16 60, i16 224 }, %struct.qam64_snr_tab { i16 62, i16 223 }, %struct.qam64_snr_tab { i16 63, i16 222 }, %struct.qam64_snr_tab { i16 65, i16 221 }, %struct.qam64_snr_tab { i16 66, i16 220 }, %struct.qam64_snr_tab { i16 68, i16 219 }, %struct.qam64_snr_tab { i16 69, i16 218 }, %struct.qam64_snr_tab { i16 70, i16 217 }, %struct.qam64_snr_tab { i16 72, i16 216 }, %struct.qam64_snr_tab { i16 73, i16 215 }, %struct.qam64_snr_tab { i16 75, i16 214 }, %struct.qam64_snr_tab { i16 76, i16 213 }, %struct.qam64_snr_tab { i16 78, i16 212 }, %struct.qam64_snr_tab { i16 80, i16 211 }, %struct.qam64_snr_tab { i16 81, i16 210 }, %struct.qam64_snr_tab { i16 83, i16 209 }, %struct.qam64_snr_tab { i16 84, i16 208 }, %struct.qam64_snr_tab { i16 85, i16 207 }, %struct.qam64_snr_tab { i16 87, i16 206 }, %struct.qam64_snr_tab { i16 89, i16 205 }, %struct.qam64_snr_tab { i16 91, i16 204 }, %struct.qam64_snr_tab { i16 93, i16 203 }, %struct.qam64_snr_tab { i16 95, i16 202 }, %struct.qam64_snr_tab { i16 96, i16 201 }, %struct.qam64_snr_tab { i16 104, i16 200 }, %struct.qam64_snr_tab { i16 255, i16 0 }], [92 x i8] zeroinitializer }, align 32
@s5h1409_qam256_lookup_snr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.52, ptr @.str.2, i32 801, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"s5h1409_qam256_lookup_snr\00", [38 x i8] zeroinitializer }, align 32
@s5h1409_qam256_lookup_snr._entry_ptr = internal global ptr @s5h1409_qam256_lookup_snr._entry, section ".printk_index", align 4
@qam256_snr_tab = internal constant { [70 x %struct.qam256_snr_tab], [72 x i8] } { [70 x %struct.qam256_snr_tab] [%struct.qam256_snr_tab { i16 1, i16 0 }, %struct.qam256_snr_tab { i16 12, i16 400 }, %struct.qam256_snr_tab { i16 13, i16 390 }, %struct.qam256_snr_tab { i16 15, i16 380 }, %struct.qam256_snr_tab { i16 17, i16 360 }, %struct.qam256_snr_tab { i16 19, i16 350 }, %struct.qam256_snr_tab { i16 22, i16 348 }, %struct.qam256_snr_tab { i16 23, i16 346 }, %struct.qam256_snr_tab { i16 24, i16 344 }, %struct.qam256_snr_tab { i16 25, i16 342 }, %struct.qam256_snr_tab { i16 26, i16 340 }, %struct.qam256_snr_tab { i16 27, i16 336 }, %struct.qam256_snr_tab { i16 28, i16 334 }, %struct.qam256_snr_tab { i16 29, i16 332 }, %struct.qam256_snr_tab { i16 30, i16 330 }, %struct.qam256_snr_tab { i16 31, i16 328 }, %struct.qam256_snr_tab { i16 32, i16 326 }, %struct.qam256_snr_tab { i16 33, i16 325 }, %struct.qam256_snr_tab { i16 34, i16 322 }, %struct.qam256_snr_tab { i16 35, i16 320 }, %struct.qam256_snr_tab { i16 37, i16 318 }, %struct.qam256_snr_tab { i16 39, i16 316 }, %struct.qam256_snr_tab { i16 40, i16 314 }, %struct.qam256_snr_tab { i16 41, i16 312 }, %struct.qam256_snr_tab { i16 42, i16 310 }, %struct.qam256_snr_tab { i16 43, i16 308 }, %struct.qam256_snr_tab { i16 46, i16 306 }, %struct.qam256_snr_tab { i16 47, i16 304 }, %struct.qam256_snr_tab { i16 49, i16 302 }, %struct.qam256_snr_tab { i16 51, i16 300 }, %struct.qam256_snr_tab { i16 53, i16 298 }, %struct.qam256_snr_tab { i16 54, i16 297 }, %struct.qam256_snr_tab { i16 55, i16 296 }, %struct.qam256_snr_tab { i16 56, i16 295 }, %struct.qam256_snr_tab { i16 57, i16 294 }, %struct.qam256_snr_tab { i16 59, i16 293 }, %struct.qam256_snr_tab { i16 60, i16 292 }, %struct.qam256_snr_tab { i16 61, i16 291 }, %struct.qam256_snr_tab { i16 63, i16 290 }, %struct.qam256_snr_tab { i16 64, i16 289 }, %struct.qam256_snr_tab { i16 65, i16 288 }, %struct.qam256_snr_tab { i16 66, i16 287 }, %struct.qam256_snr_tab { i16 68, i16 286 }, %struct.qam256_snr_tab { i16 69, i16 285 }, %struct.qam256_snr_tab { i16 71, i16 284 }, %struct.qam256_snr_tab { i16 72, i16 283 }, %struct.qam256_snr_tab { i16 74, i16 282 }, %struct.qam256_snr_tab { i16 75, i16 281 }, %struct.qam256_snr_tab { i16 76, i16 280 }, %struct.qam256_snr_tab { i16 77, i16 279 }, %struct.qam256_snr_tab { i16 78, i16 278 }, %struct.qam256_snr_tab { i16 81, i16 277 }, %struct.qam256_snr_tab { i16 83, i16 276 }, %struct.qam256_snr_tab { i16 84, i16 275 }, %struct.qam256_snr_tab { i16 86, i16 274 }, %struct.qam256_snr_tab { i16 87, i16 273 }, %struct.qam256_snr_tab { i16 89, i16 272 }, %struct.qam256_snr_tab { i16 90, i16 271 }, %struct.qam256_snr_tab { i16 92, i16 270 }, %struct.qam256_snr_tab { i16 93, i16 269 }, %struct.qam256_snr_tab { i16 95, i16 268 }, %struct.qam256_snr_tab { i16 96, i16 267 }, %struct.qam256_snr_tab { i16 98, i16 266 }, %struct.qam256_snr_tab { i16 100, i16 265 }, %struct.qam256_snr_tab { i16 102, i16 264 }, %struct.qam256_snr_tab { i16 104, i16 263 }, %struct.qam256_snr_tab { i16 105, i16 262 }, %struct.qam256_snr_tab { i16 106, i16 261 }, %struct.qam256_snr_tab { i16 110, i16 260 }, %struct.qam256_snr_tab { i16 255, i16 0 }], [72 x i8] zeroinitializer }, align 32
@s5h1409_vsb_lookup_snr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.53, ptr @.str.2, i32 831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s5h1409_vsb_lookup_snr\00", [41 x i8] zeroinitializer }, align 32
@s5h1409_vsb_lookup_snr._entry_ptr = internal global ptr @s5h1409_vsb_lookup_snr._entry, section ".printk_index", align 4
@vsb_snr_tab = internal constant { [40 x %struct.vsb_snr_tab], [32 x i8] } { [40 x %struct.vsb_snr_tab] [%struct.vsb_snr_tab { i16 924, i16 300 }, %struct.vsb_snr_tab { i16 923, i16 300 }, %struct.vsb_snr_tab { i16 918, i16 295 }, %struct.vsb_snr_tab { i16 915, i16 290 }, %struct.vsb_snr_tab { i16 911, i16 285 }, %struct.vsb_snr_tab { i16 906, i16 280 }, %struct.vsb_snr_tab { i16 901, i16 275 }, %struct.vsb_snr_tab { i16 896, i16 270 }, %struct.vsb_snr_tab { i16 891, i16 265 }, %struct.vsb_snr_tab { i16 885, i16 260 }, %struct.vsb_snr_tab { i16 879, i16 255 }, %struct.vsb_snr_tab { i16 873, i16 250 }, %struct.vsb_snr_tab { i16 864, i16 245 }, %struct.vsb_snr_tab { i16 858, i16 240 }, %struct.vsb_snr_tab { i16 850, i16 235 }, %struct.vsb_snr_tab { i16 841, i16 230 }, %struct.vsb_snr_tab { i16 832, i16 225 }, %struct.vsb_snr_tab { i16 823, i16 220 }, %struct.vsb_snr_tab { i16 812, i16 215 }, %struct.vsb_snr_tab { i16 802, i16 210 }, %struct.vsb_snr_tab { i16 788, i16 205 }, %struct.vsb_snr_tab { i16 778, i16 200 }, %struct.vsb_snr_tab { i16 767, i16 195 }, %struct.vsb_snr_tab { i16 753, i16 190 }, %struct.vsb_snr_tab { i16 740, i16 185 }, %struct.vsb_snr_tab { i16 725, i16 180 }, %struct.vsb_snr_tab { i16 707, i16 175 }, %struct.vsb_snr_tab { i16 689, i16 170 }, %struct.vsb_snr_tab { i16 671, i16 165 }, %struct.vsb_snr_tab { i16 656, i16 160 }, %struct.vsb_snr_tab { i16 637, i16 155 }, %struct.vsb_snr_tab { i16 616, i16 150 }, %struct.vsb_snr_tab { i16 542, i16 145 }, %struct.vsb_snr_tab { i16 519, i16 140 }, %struct.vsb_snr_tab { i16 507, i16 135 }, %struct.vsb_snr_tab { i16 497, i16 130 }, %struct.vsb_snr_tab { i16 492, i16 125 }, %struct.vsb_snr_tab { i16 474, i16 120 }, %struct.vsb_snr_tab { i16 300, i16 111 }, %struct.vsb_snr_tab zeroinitializer], [32 x i8] zeroinitializer }, align 32
@s5h1409_vsb_lookup_snr._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s() snr=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@s5h1409_vsb_lookup_snr._entry_ptr.56 = internal global ptr @s5h1409_vsb_lookup_snr._entry.54, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 102, i64 127]
@__sancov_gen_cov_switch_values.57 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.58 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 5]
@___asan_gen_.62 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 46, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant [12 x i8] c"s5h1409_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 986, i32 38 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 970, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 333, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 701, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [9 x i8] c"init_tab\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 56, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 454, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 463, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 312, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 382, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 357, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 440, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 669, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 677, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 341, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 428, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 627, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 395, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 399, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 407, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 414, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 569, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 581, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 494, i32 5 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 502, i32 5 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 512, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 793, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 848, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 816, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant [14 x i8] c"qam64_snr_tab\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 155, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 801, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant [15 x i8] c"qam256_snr_tab\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 227, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 831, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant [12 x i8] c"vsb_snr_tab\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 108, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.288 = private constant [41 x i8] c"../drivers/media/dvb-frontends/s5h1409.c\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 840, i32 2 }
@llvm.compiler.used = appending global [113 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_s5h1409_attach, ptr @__param_debug, ptr @s5h1409_attach._entry, ptr @s5h1409_attach._entry_ptr, ptr @s5h1409_enable_modulation._entry, ptr @s5h1409_enable_modulation._entry.26, ptr @s5h1409_enable_modulation._entry.29, ptr @s5h1409_enable_modulation._entry.32, ptr @s5h1409_enable_modulation._entry_ptr, ptr @s5h1409_enable_modulation._entry_ptr.28, ptr @s5h1409_enable_modulation._entry_ptr.31, ptr @s5h1409_enable_modulation._entry_ptr.34, ptr @s5h1409_i2c_gate_ctrl._entry, ptr @s5h1409_i2c_gate_ctrl._entry_ptr, ptr @s5h1409_init._entry, ptr @s5h1409_init._entry_ptr, ptr @s5h1409_qam256_lookup_snr._entry, ptr @s5h1409_qam256_lookup_snr._entry_ptr, ptr @s5h1409_qam64_lookup_snr._entry, ptr @s5h1409_qam64_lookup_snr._entry_ptr, ptr @s5h1409_read_snr._entry, ptr @s5h1409_read_snr._entry_ptr, ptr @s5h1409_read_status._entry, ptr @s5h1409_read_status._entry_ptr, ptr @s5h1409_readreg._entry, ptr @s5h1409_readreg._entry_ptr, ptr @s5h1409_register_reset._entry, ptr @s5h1409_register_reset._entry_ptr, ptr @s5h1409_set_frontend._entry, ptr @s5h1409_set_frontend._entry_ptr, ptr @s5h1409_set_gpio._entry, ptr @s5h1409_set_gpio._entry_ptr, ptr @s5h1409_set_if_freq._entry, ptr @s5h1409_set_if_freq._entry_ptr, ptr @s5h1409_set_mpeg_timing._entry, ptr @s5h1409_set_mpeg_timing._entry.17, ptr @s5h1409_set_mpeg_timing._entry_ptr, ptr @s5h1409_set_mpeg_timing._entry_ptr.19, ptr @s5h1409_set_qam_amhum_mode._entry, ptr @s5h1409_set_qam_amhum_mode._entry.42, ptr @s5h1409_set_qam_amhum_mode._entry.45, ptr @s5h1409_set_qam_amhum_mode._entry_ptr, ptr @s5h1409_set_qam_amhum_mode._entry_ptr.44, ptr @s5h1409_set_qam_amhum_mode._entry_ptr.47, ptr @s5h1409_set_qam_interleave_mode._entry, ptr @s5h1409_set_qam_interleave_mode._entry.37, ptr @s5h1409_set_qam_interleave_mode._entry_ptr, ptr @s5h1409_set_qam_interleave_mode._entry_ptr.39, ptr @s5h1409_set_spectralinversion._entry, ptr @s5h1409_set_spectralinversion._entry_ptr, ptr @s5h1409_sleep._entry, ptr @s5h1409_sleep._entry_ptr, ptr @s5h1409_softreset._entry, ptr @s5h1409_softreset._entry_ptr, ptr @s5h1409_vsb_lookup_snr._entry, ptr @s5h1409_vsb_lookup_snr._entry.54, ptr @s5h1409_vsb_lookup_snr._entry_ptr, ptr @s5h1409_vsb_lookup_snr._entry_ptr.56, ptr @s5h1409_writereg._entry, ptr @s5h1409_writereg._entry_ptr, ptr @debug, ptr @s5h1409_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @init_tab, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @qam64_snr_tab, ptr @.str.52, ptr @qam256_snr_tab, ptr @.str.53, ptr @vsb_snr_tab, ptr @.str.55], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1409_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1409_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1409_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1409_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_tab to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1409_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1409_register_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1409_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1409_set_spectralinversion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1409_set_if_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1409_set_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1409_set_mpeg_timing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1409_set_mpeg_timing._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1409_softreset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1409_i2c_gate_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1409_set_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1409_enable_modulation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1409_enable_modulation._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1409_enable_modulation._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1409_enable_modulation._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1409_set_qam_interleave_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1409_set_qam_interleave_mode._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1409_set_qam_amhum_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1409_set_qam_amhum_mode._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1409_set_qam_amhum_mode._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1409_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1409_read_snr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1409_qam64_lookup_snr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qam64_snr_tab to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1409_qam256_lookup_snr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qam256_snr_tab to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1409_vsb_lookup_snr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsb_snr_tab to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1409_vsb_lookup_snr._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @s5h1409_attach(ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  %buf.i.i = alloca [3 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [2 x i8], align 2
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1068) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end:                                           ; preds = %entry
  %config1 = getelementptr inbounds %struct.s5h1409_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %config, ptr %config1, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %call7.i.i, align 8
  %current_modulation = getelementptr inbounds %struct.s5h1409_state, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %current_modulation to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %current_modulation, align 8
  %if_freq = getelementptr inbounds %struct.s5h1409_state, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %if_freq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 5380, ptr %if_freq, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %5 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 4, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i) #7
  %6 = ptrtoint ptr %b1.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %b1.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %9 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %config, align 2
  %conv.i = zext i8 %10 to i16
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %7, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %17 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 2, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b1.i, ptr %buf8.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.s5h1409_readreg.exit_crit_edge, label %do.end.i

if.end.s5h1409_readreg.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_readreg.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i) #11
  br label %s5h1409_readreg.exit

s5h1409_readreg.exit:                             ; preds = %do.end.i, %if.end.s5h1409_readreg.exit_crit_edge
  %19 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %b1.i, align 2
  %conv13.i = zext i8 %20 to i16
  %shl.i = shl nuw i16 %conv13.i, 8
  %arrayidx14.i = getelementptr inbounds [2 x i8], ptr %b1.i, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %22 to i16
  %or.i = or i16 %shl.i, %conv15.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %23 = zext i16 %or.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i16 %or.i, label %s5h1409_readreg.exit.error_crit_edge [
    i16 102, label %s5h1409_readreg.exit.if.end10_crit_edge
    i16 127, label %s5h1409_readreg.exit.if.end10_crit_edge38
  ]

s5h1409_readreg.exit.if.end10_crit_edge38:        ; preds = %s5h1409_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

s5h1409_readreg.exit.if.end10_crit_edge:          ; preds = %s5h1409_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

s5h1409_readreg.exit.error_crit_edge:             ; preds = %s5h1409_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end10:                                         ; preds = %s5h1409_readreg.exit.if.end10_crit_edge, %s5h1409_readreg.exit.if.end10_crit_edge38
  %frontend = getelementptr inbounds %struct.s5h1409_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.s5h1409_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %24 = call ptr @memcpy(ptr %ops, ptr @s5h1409_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.s5h1409_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %25 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  %call13 = call i32 @s5h1409_init(ptr noundef %frontend)
  %26 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %demodulator_priv, align 8
  %28 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %if.end10.if.end.i_crit_edge, label %do.end.i37

if.end10.if.end.i_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i37:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call.i36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.21, i32 noundef 1) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i37, %if.end10.if.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i) #7
  %29 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 1
  %30 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -13, ptr %buf.i.i, align 1
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %29, align 1
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %30, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %34 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 262143, ptr %34, align 4
  %config.i.i = getelementptr inbounds %struct.s5h1409_state, ptr %27, i32 0, i32 1
  %36 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %config.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %37, align 2
  %conv5.i.i = zext i8 %39 to i16
  %40 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv5.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %flags.i.i, align 2
  %buf6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %42 = ptrtoint ptr %buf6.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %buf.i.i, ptr %buf6.i.i, align 4
  %43 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %27, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %if.end.i.s5h1409_i2c_gate_ctrl.exit_crit_edge, label %do.end.i.i

if.end.i.s5h1409_i2c_gate_ctrl.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_i2c_gate_ctrl.exit

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 243, i32 noundef 1, i32 noundef %call.i.i) #11
  br label %s5h1409_i2c_gate_ctrl.exit

s5h1409_i2c_gate_ctrl.exit:                       ; preds = %do.end.i.i, %if.end.i.s5h1409_i2c_gate_ctrl.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #7
  br label %cleanup

error:                                            ; preds = %s5h1409_readreg.exit.error_crit_edge, %entry.error_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %s5h1409_i2c_gate_ctrl.exit
  %retval.0 = phi ptr [ null, %error ], [ %frontend, %s5h1409_i2c_gate_ctrl.exit ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5h1409_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i7.i = alloca [3 x i8], align 1
  %msg.i8.i = alloca %struct.i2c_msg, align 4
  %buf.i1.i250 = alloca [3 x i8], align 1
  %msg.i2.i251 = alloca %struct.i2c_msg, align 4
  %b0.i.i252 = alloca [1 x i8], align 1
  %b1.i.i253 = alloca [2 x i8], align 2
  %msg.i.i254 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i34.i = alloca [3 x i8], align 1
  %msg.i35.i = alloca %struct.i2c_msg, align 4
  %b0.i11.i = alloca [1 x i8], align 1
  %b1.i12.i = alloca [2 x i8], align 2
  %msg.i13.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i1.i229 = alloca [3 x i8], align 1
  %msg.i2.i230 = alloca %struct.i2c_msg, align 4
  %b0.i.i = alloca [1 x i8], align 1
  %b1.i.i = alloca [2 x i8], align 2
  %msg.i.i231 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i1.i = alloca [3 x i8], align 1
  %msg.i2.i = alloca %struct.i2c_msg, align 4
  %buf.i.i214 = alloca [3 x i8], align 1
  %msg.i.i215 = alloca %struct.i2c_msg, align 4
  %buf.i196 = alloca [3 x i8], align 1
  %msg.i197 = alloca %struct.i2c_msg, align 4
  %b0.i172 = alloca [1 x i8], align 1
  %b1.i173 = alloca [2 x i8], align 2
  %msg.i174 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i154 = alloca [3 x i8], align 1
  %msg.i155 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [2 x i8], align 2
  %msg.i143 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i128 = alloca [3 x i8], align 1
  %msg.i129 = alloca %struct.i2c_msg, align 4
  %buf.i113 = alloca [3 x i8], align 1
  %msg.i114 = alloca %struct.i2c_msg, align 4
  %buf.i98 = alloca [3 x i8], align 1
  %msg.i99 = alloca %struct.i2c_msg, align 4
  %buf.i83 = alloca [3 x i8], align 1
  %msg.i84 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [3 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf.i.i65 = alloca [3 x i8], align 1
  %msg.i.i66 = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [3 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %demodulator_priv, align 4
  br label %if.end.i

if.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #11
  %.pr = load i32, ptr @debug, align 4
  %5 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %demodulator_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %do.end.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 0) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end.if.end.i_crit_edge, %if.end.thread
  %7 = phi ptr [ %4, %if.end.thread ], [ %6, %do.end.i ], [ %6, %if.end.if.end.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i) #7
  %8 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 1
  %9 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -14, ptr %buf.i.i, align 1
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %8, align 1
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %13 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 262143, ptr %13, align 4
  %config.i.i = getelementptr inbounds %struct.s5h1409_state, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %config.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 2
  %conv5.i.i = zext i8 %18 to i16
  %19 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv5.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %flags.i.i, align 2
  %buf6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %buf6.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buf.i.i, ptr %buf6.i.i, align 4
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %7, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %if.end.i.s5h1409_sleep.exit_crit_edge, label %do.end.i.i

if.end.i.s5h1409_sleep.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_sleep.exit

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 242, i32 noundef 0, i32 noundef %call.i.i) #11
  br label %s5h1409_sleep.exit

s5h1409_sleep.exit:                               ; preds = %do.end.i.i, %if.end.i.s5h1409_sleep.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #7
  %24 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %demodulator_priv, align 4
  %26 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i68 = icmp eq i32 %26, 0
  br i1 %tobool.not.i68, label %s5h1409_sleep.exit.if.end.i77_crit_edge, label %do.end.i70

s5h1409_sleep.exit.if.end.i77_crit_edge:          ; preds = %s5h1409_sleep.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i77

do.end.i70:                                       ; preds = %s5h1409_sleep.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.9) #11
  br label %if.end.i77

if.end.i77:                                       ; preds = %do.end.i70, %s5h1409_sleep.exit.if.end.i77_crit_edge
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i65) #7
  %27 = getelementptr inbounds [3 x i8], ptr %buf.i.i65, i32 0, i32 1
  %28 = getelementptr inbounds [3 x i8], ptr %buf.i.i65, i32 0, i32 2
  %29 = ptrtoint ptr %buf.i.i65 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -6, ptr %buf.i.i65, align 1
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %27, align 1
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %28, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i66) #7
  %32 = getelementptr inbounds i8, ptr %msg.i.i66, i32 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 262143, ptr %32, align 4
  %config.i.i71 = getelementptr inbounds %struct.s5h1409_state, ptr %25, i32 0, i32 1
  %34 = ptrtoint ptr %config.i.i71 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %config.i.i71, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 2
  %conv5.i.i72 = zext i8 %37 to i16
  %38 = ptrtoint ptr %msg.i.i66 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv5.i.i72, ptr %msg.i.i66, align 4
  %flags.i.i73 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i66, i32 0, i32 1
  %39 = ptrtoint ptr %flags.i.i73 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %flags.i.i73, align 2
  %buf6.i.i74 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i66, i32 0, i32 3
  %40 = ptrtoint ptr %buf6.i.i74 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %buf.i.i65, ptr %buf6.i.i74, align 4
  %41 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %25, align 4
  %call.i.i75 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg.i.i66, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i75)
  %cmp.not.i.i76 = icmp eq i32 %call.i.i75, 1
  br i1 %cmp.not.i.i76, label %if.end.i77.s5h1409_register_reset.exit_crit_edge, label %do.end.i.i79

if.end.i77.s5h1409_register_reset.exit_crit_edge: ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_register_reset.exit

do.end.i.i79:                                     ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i.i78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 250, i32 noundef 0, i32 noundef %call.i.i75) #11
  br label %s5h1409_register_reset.exit

s5h1409_register_reset.exit:                      ; preds = %do.end.i.i79, %if.end.i77.s5h1409_register_reset.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i66) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i65) #7
  %43 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %44 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %45 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %config.i = getelementptr inbounds %struct.s5h1409_state, ptr %1, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %s5h1409_writereg.exit.for.body_crit_edge, %s5h1409_register_reset.exit
  %i.0299 = phi i32 [ 0, %s5h1409_register_reset.exit ], [ %inc, %s5h1409_writereg.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [45 x %struct.init_tab], ptr @init_tab, i32 0, i32 %i.0299
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx, align 2
  %data = getelementptr [45 x %struct.init_tab], ptr @init_tab, i32 0, i32 %i.0299, i32 1
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %data, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %50 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %47, ptr %buf.i, align 1
  %51 = lshr i16 %49, 8
  %conv1.i = trunc i16 %51 to i8
  %52 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv1.i, ptr %43, align 1
  %conv4.i = trunc i16 %49 to i8
  %53 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv4.i, ptr %44, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %54 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %45, align 4
  %55 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %config.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %56, align 2
  %conv5.i = zext i8 %58 to i16
  %59 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv5.i, ptr %msg.i, align 4
  %60 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 0, ptr %flags.i, align 2
  store i16 3, ptr %45, align 4
  %61 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %buf.i, ptr %buf6.i, align 4
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %call.i80 = call i32 @i2c_transfer(ptr noundef %63, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i80)
  %cmp.not.i = icmp eq i32 %call.i80, 1
  br i1 %cmp.not.i, label %for.body.s5h1409_writereg.exit_crit_edge, label %do.end.i81

for.body.s5h1409_writereg.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit

do.end.i81:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i16 %49 to i32
  %conv8.i = zext i8 %47 to i32
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %conv8.i, i32 noundef %conv.i, i32 noundef %call.i80) #11
  br label %s5h1409_writereg.exit

s5h1409_writereg.exit:                            ; preds = %do.end.i81, %for.body.s5h1409_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  %inc = add nuw nsw i32 %i.0299, 1
  %exitcond.not = icmp eq i32 %inc, 45
  br i1 %exitcond.not, label %for.end, label %s5h1409_writereg.exit.for.body_crit_edge

s5h1409_writereg.exit.for.body_crit_edge:         ; preds = %s5h1409_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %s5h1409_writereg.exit
  %current_modulation = getelementptr inbounds %struct.s5h1409_state, ptr %1, i32 0, i32 3
  %64 = ptrtoint ptr %current_modulation to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 7, ptr %current_modulation, align 4
  %65 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %config.i, align 4
  %hvr1600_opt = getelementptr inbounds %struct.s5h1409_config, ptr %66, i32 0, i32 7
  %67 = ptrtoint ptr %hvr1600_opt to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %hvr1600_opt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %68)
  %cmp5 = icmp eq i8 %68, 1
  br i1 %cmp5, label %if.then7, label %for.end.if.end12_crit_edge

for.end.if.end12_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then7:                                         ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i83) #7
  %69 = getelementptr inbounds [3 x i8], ptr %buf.i83, i32 0, i32 1
  %70 = getelementptr inbounds [3 x i8], ptr %buf.i83, i32 0, i32 2
  %71 = ptrtoint ptr %buf.i83 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 9, ptr %buf.i83, align 1
  %72 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %69, align 1
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 80, ptr %70, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i84) #7
  %74 = getelementptr inbounds i8, ptr %msg.i84, i32 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %74, align 4
  %76 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %config.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %77, align 2
  %conv5.i86 = zext i8 %79 to i16
  %80 = ptrtoint ptr %msg.i84 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv5.i86, ptr %msg.i84, align 4
  %flags.i87 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84, i32 0, i32 1
  %81 = ptrtoint ptr %flags.i87 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 0, ptr %flags.i87, align 2
  store i16 3, ptr %74, align 4
  %buf6.i89 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84, i32 0, i32 3
  %82 = ptrtoint ptr %buf6.i89 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %buf.i83, ptr %buf6.i89, align 4
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %1, align 4
  %call.i90 = call i32 @i2c_transfer(ptr noundef %84, ptr noundef nonnull %msg.i84, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i90)
  %cmp.not.i91 = icmp eq i32 %call.i90, 1
  br i1 %cmp.not.i91, label %if.then7.s5h1409_writereg.exit97_crit_edge, label %do.end.i93

if.then7.s5h1409_writereg.exit97_crit_edge:       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit97

do.end.i93:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 9, i32 noundef 80, i32 noundef %call.i90) #11
  br label %s5h1409_writereg.exit97

s5h1409_writereg.exit97:                          ; preds = %do.end.i93, %if.then7.s5h1409_writereg.exit97_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i84) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i83) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i98) #7
  %85 = getelementptr inbounds [3 x i8], ptr %buf.i98, i32 0, i32 1
  %86 = getelementptr inbounds [3 x i8], ptr %buf.i98, i32 0, i32 2
  %87 = ptrtoint ptr %buf.i98 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 33, ptr %buf.i98, align 1
  %88 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %85, align 1
  %89 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %86, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i99) #7
  %90 = getelementptr inbounds i8, ptr %msg.i99, i32 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %90, align 4
  %92 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %config.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %93, align 2
  %conv5.i101 = zext i8 %95 to i16
  %96 = ptrtoint ptr %msg.i99 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv5.i101, ptr %msg.i99, align 4
  %flags.i102 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i99, i32 0, i32 1
  %97 = ptrtoint ptr %flags.i102 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 0, ptr %flags.i102, align 2
  store i16 3, ptr %90, align 4
  %buf6.i104 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i99, i32 0, i32 3
  %98 = ptrtoint ptr %buf6.i104 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %buf.i98, ptr %buf6.i104, align 4
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %1, align 4
  %call.i105 = call i32 @i2c_transfer(ptr noundef %100, ptr noundef nonnull %msg.i99, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i105)
  %cmp.not.i106 = icmp eq i32 %call.i105, 1
  br i1 %cmp.not.i106, label %s5h1409_writereg.exit97.s5h1409_writereg.exit112_crit_edge, label %do.end.i108

s5h1409_writereg.exit97.s5h1409_writereg.exit112_crit_edge: ; preds = %s5h1409_writereg.exit97
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit112

do.end.i108:                                      ; preds = %s5h1409_writereg.exit97
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 33, i32 noundef 1, i32 noundef %call.i105) #11
  br label %s5h1409_writereg.exit112

s5h1409_writereg.exit112:                         ; preds = %do.end.i108, %s5h1409_writereg.exit97.s5h1409_writereg.exit112_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i99) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i98) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i113) #7
  %101 = getelementptr inbounds [3 x i8], ptr %buf.i113, i32 0, i32 1
  %102 = getelementptr inbounds [3 x i8], ptr %buf.i113, i32 0, i32 2
  %103 = ptrtoint ptr %buf.i113 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 80, ptr %buf.i113, align 1
  %104 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 3, ptr %101, align 1
  %105 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 14, ptr %102, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i114) #7
  %106 = getelementptr inbounds i8, ptr %msg.i114, i32 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 -1, ptr %106, align 4
  %108 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %config.i, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %109, align 2
  %conv5.i116 = zext i8 %111 to i16
  %112 = ptrtoint ptr %msg.i114 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %conv5.i116, ptr %msg.i114, align 4
  %flags.i117 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i114, i32 0, i32 1
  %113 = ptrtoint ptr %flags.i117 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 0, ptr %flags.i117, align 2
  store i16 3, ptr %106, align 4
  %buf6.i119 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i114, i32 0, i32 3
  %114 = ptrtoint ptr %buf6.i119 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %buf.i113, ptr %buf6.i119, align 4
  %115 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %1, align 4
  %call.i120 = call i32 @i2c_transfer(ptr noundef %116, ptr noundef nonnull %msg.i114, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i120)
  %cmp.not.i121 = icmp eq i32 %call.i120, 1
  br i1 %cmp.not.i121, label %s5h1409_writereg.exit112.s5h1409_writereg.exit127_crit_edge, label %do.end.i123

s5h1409_writereg.exit112.s5h1409_writereg.exit127_crit_edge: ; preds = %s5h1409_writereg.exit112
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit127

do.end.i123:                                      ; preds = %s5h1409_writereg.exit112
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 80, i32 noundef 782, i32 noundef %call.i120) #11
  br label %s5h1409_writereg.exit127

s5h1409_writereg.exit127:                         ; preds = %do.end.i123, %s5h1409_writereg.exit112.s5h1409_writereg.exit127_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i114) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i113) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i128) #7
  %117 = getelementptr inbounds [3 x i8], ptr %buf.i128, i32 0, i32 1
  %118 = getelementptr inbounds [3 x i8], ptr %buf.i128, i32 0, i32 2
  %119 = ptrtoint ptr %buf.i128 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 -126, ptr %buf.i128, align 1
  %120 = ptrtoint ptr %117 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 8, ptr %117, align 1
  %121 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %118, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i129) #7
  %122 = getelementptr inbounds i8, ptr %msg.i129, i32 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 -1, ptr %122, align 4
  %124 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %config.i, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %125, align 2
  %conv5.i131 = zext i8 %127 to i16
  %128 = ptrtoint ptr %msg.i129 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %conv5.i131, ptr %msg.i129, align 4
  %flags.i132 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i129, i32 0, i32 1
  %129 = ptrtoint ptr %flags.i132 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 0, ptr %flags.i132, align 2
  store i16 3, ptr %122, align 4
  %buf6.i134 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i129, i32 0, i32 3
  %130 = ptrtoint ptr %buf6.i134 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %buf.i128, ptr %buf6.i134, align 4
  %131 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %1, align 4
  %call.i135 = call i32 @i2c_transfer(ptr noundef %132, ptr noundef nonnull %msg.i129, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i135)
  %cmp.not.i136 = icmp eq i32 %call.i135, 1
  br i1 %cmp.not.i136, label %s5h1409_writereg.exit127.s5h1409_writereg.exit142_crit_edge, label %do.end.i138

s5h1409_writereg.exit127.s5h1409_writereg.exit142_crit_edge: ; preds = %s5h1409_writereg.exit127
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit142

do.end.i138:                                      ; preds = %s5h1409_writereg.exit127
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 130, i32 noundef 2048, i32 noundef %call.i135) #11
  br label %s5h1409_writereg.exit142

s5h1409_writereg.exit142:                         ; preds = %do.end.i138, %s5h1409_writereg.exit127.s5h1409_writereg.exit142_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i129) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i128) #7
  br label %if.end12

if.end12:                                         ; preds = %s5h1409_writereg.exit142, %for.end.if.end12_crit_edge
  %133 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %config.i, align 4
  %output_mode = getelementptr inbounds %struct.s5h1409_config, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %output_mode to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %output_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %136)
  %cmp15 = icmp eq i8 %136, 1
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %137 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 -85, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i) #7
  %138 = ptrtoint ptr %b1.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 0, ptr %b1.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i143) #7
  %139 = getelementptr inbounds i8, ptr %msg.i143, i32 4
  %140 = call ptr @memset(ptr %139, i32 255, i32 16)
  %141 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %config.i, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %142, align 2
  %conv.i145 = zext i8 %144 to i16
  %145 = ptrtoint ptr %msg.i143 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %conv.i145, ptr %msg.i143, align 4
  %flags.i146 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i143, i32 0, i32 1
  %146 = ptrtoint ptr %flags.i146 to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 0, ptr %flags.i146, align 2
  %147 = ptrtoint ptr %139 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 1, ptr %139, align 4
  %buf.i148 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i143, i32 0, i32 3
  %148 = ptrtoint ptr %buf.i148 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %b0.i, ptr %buf.i148, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i143, i32 1
  %149 = load i8, ptr %142, align 2
  %conv5.i149 = zext i8 %149 to i16
  %150 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %conv5.i149, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i143, i32 1, i32 1
  %151 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i143, i32 1, i32 2
  %152 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 2, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i143, i32 1, i32 3
  %153 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %b1.i, ptr %buf8.i, align 4
  %154 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %1, align 4
  %call.i150 = call i32 @i2c_transfer(ptr noundef %155, ptr noundef nonnull %msg.i143, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i150)
  %cmp.not.i151 = icmp eq i32 %call.i150, 2
  br i1 %cmp.not.i151, label %if.then17.s5h1409_readreg.exit_crit_edge, label %do.end.i152

if.then17.s5h1409_readreg.exit_crit_edge:         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_readreg.exit

do.end.i152:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i150) #11
  br label %s5h1409_readreg.exit

s5h1409_readreg.exit:                             ; preds = %do.end.i152, %if.then17.s5h1409_readreg.exit_crit_edge
  %156 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %b1.i, align 2
  %conv13.i = zext i8 %157 to i16
  %shl.i = shl nuw i16 %conv13.i, 8
  %arrayidx14.i = getelementptr inbounds [2 x i8], ptr %b1.i, i32 0, i32 1
  %158 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %159 to i16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i143) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %or.i = or i16 %shl.i, %conv15.i
  %160 = or i16 %or.i, 256
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i154) #7
  %161 = getelementptr inbounds [3 x i8], ptr %buf.i154, i32 0, i32 1
  %162 = getelementptr inbounds [3 x i8], ptr %buf.i154, i32 0, i32 2
  %163 = ptrtoint ptr %buf.i154 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 -85, ptr %buf.i154, align 1
  %164 = lshr i16 %160, 8
  %conv1.i156 = trunc i16 %164 to i8
  %165 = ptrtoint ptr %161 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %conv1.i156, ptr %161, align 1
  %166 = ptrtoint ptr %162 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %159, ptr %162, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i155) #7
  %167 = getelementptr inbounds i8, ptr %msg.i155, i32 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 -1, ptr %167, align 4
  %169 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %config.i, align 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %170, align 2
  %conv5.i159 = zext i8 %172 to i16
  %173 = ptrtoint ptr %msg.i155 to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 %conv5.i159, ptr %msg.i155, align 4
  %flags.i160 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i155, i32 0, i32 1
  %174 = ptrtoint ptr %flags.i160 to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 0, ptr %flags.i160, align 2
  store i16 3, ptr %167, align 4
  %buf6.i162 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i155, i32 0, i32 3
  %175 = ptrtoint ptr %buf6.i162 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %buf.i154, ptr %buf6.i162, align 4
  %176 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %1, align 4
  %call.i163 = call i32 @i2c_transfer(ptr noundef %177, ptr noundef nonnull %msg.i155, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i163)
  %cmp.not.i164 = icmp eq i32 %call.i163, 1
  br i1 %cmp.not.i164, label %s5h1409_readreg.exit.s5h1409_writereg.exit171_crit_edge, label %do.end.i167

s5h1409_readreg.exit.s5h1409_writereg.exit171_crit_edge: ; preds = %s5h1409_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit171

do.end.i167:                                      ; preds = %s5h1409_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i165 = zext i16 %160 to i32
  %call10.i166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 171, i32 noundef %conv.i165, i32 noundef %call.i163) #11
  br label %s5h1409_writereg.exit171

s5h1409_writereg.exit171:                         ; preds = %do.end.i167, %s5h1409_readreg.exit.s5h1409_writereg.exit171_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i155) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i154) #7
  br label %if.end26

if.else:                                          ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i172) #7
  %178 = ptrtoint ptr %b0.i172 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 -85, ptr %b0.i172, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i173) #7
  %179 = ptrtoint ptr %b1.i173 to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 0, ptr %b1.i173, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i174) #7
  %180 = getelementptr inbounds i8, ptr %msg.i174, i32 4
  %181 = call ptr @memset(ptr %180, i32 255, i32 16)
  %182 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %config.i, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %183, align 2
  %conv.i176 = zext i8 %185 to i16
  %186 = ptrtoint ptr %msg.i174 to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 %conv.i176, ptr %msg.i174, align 4
  %flags.i177 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i174, i32 0, i32 1
  %187 = ptrtoint ptr %flags.i177 to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 0, ptr %flags.i177, align 2
  %188 = ptrtoint ptr %180 to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 1, ptr %180, align 4
  %buf.i179 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i174, i32 0, i32 3
  %189 = ptrtoint ptr %buf.i179 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %b0.i172, ptr %buf.i179, align 4
  %arrayinit.element.i180 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i174, i32 1
  %190 = load i8, ptr %183, align 2
  %conv5.i181 = zext i8 %190 to i16
  %191 = ptrtoint ptr %arrayinit.element.i180 to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %conv5.i181, ptr %arrayinit.element.i180, align 4
  %flags6.i182 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i174, i32 1, i32 1
  %192 = ptrtoint ptr %flags6.i182 to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 1, ptr %flags6.i182, align 2
  %len7.i183 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i174, i32 1, i32 2
  %193 = ptrtoint ptr %len7.i183 to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 2, ptr %len7.i183, align 4
  %buf8.i184 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i174, i32 1, i32 3
  %194 = ptrtoint ptr %buf8.i184 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %b1.i173, ptr %buf8.i184, align 4
  %195 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %1, align 4
  %call.i185 = call i32 @i2c_transfer(ptr noundef %196, ptr noundef nonnull %msg.i174, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i185)
  %cmp.not.i186 = icmp eq i32 %call.i185, 2
  br i1 %cmp.not.i186, label %if.else.s5h1409_readreg.exit195_crit_edge, label %do.end.i188

if.else.s5h1409_readreg.exit195_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_readreg.exit195

do.end.i188:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i187 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i185) #11
  br label %s5h1409_readreg.exit195

s5h1409_readreg.exit195:                          ; preds = %do.end.i188, %if.else.s5h1409_readreg.exit195_crit_edge
  %197 = ptrtoint ptr %b1.i173 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %b1.i173, align 2
  %conv13.i189 = zext i8 %198 to i16
  %shl.i190 = shl nuw i16 %conv13.i189, 8
  %arrayidx14.i191 = getelementptr inbounds [2 x i8], ptr %b1.i173, i32 0, i32 1
  %199 = ptrtoint ptr %arrayidx14.i191 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %arrayidx14.i191, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i174) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i173) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i172) #7
  %shl.i190.masked = and i16 %shl.i190, -512
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i196) #7
  %201 = getelementptr inbounds [3 x i8], ptr %buf.i196, i32 0, i32 1
  %202 = getelementptr inbounds [3 x i8], ptr %buf.i196, i32 0, i32 2
  %203 = ptrtoint ptr %buf.i196 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 -85, ptr %buf.i196, align 1
  %204 = lshr exact i16 %shl.i190.masked, 8
  %conv1.i198 = trunc i16 %204 to i8
  %205 = ptrtoint ptr %201 to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %conv1.i198, ptr %201, align 1
  %206 = ptrtoint ptr %202 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %200, ptr %202, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i197) #7
  %207 = getelementptr inbounds i8, ptr %msg.i197, i32 4
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 -1, ptr %207, align 4
  %209 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %config.i, align 4
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %210, align 2
  %conv5.i201 = zext i8 %212 to i16
  %213 = ptrtoint ptr %msg.i197 to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 %conv5.i201, ptr %msg.i197, align 4
  %flags.i202 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i197, i32 0, i32 1
  %214 = ptrtoint ptr %flags.i202 to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 0, ptr %flags.i202, align 2
  store i16 3, ptr %207, align 4
  %buf6.i204 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i197, i32 0, i32 3
  %215 = ptrtoint ptr %buf6.i204 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %buf.i196, ptr %buf6.i204, align 4
  %216 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %1, align 4
  %call.i205 = call i32 @i2c_transfer(ptr noundef %217, ptr noundef nonnull %msg.i197, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i205)
  %cmp.not.i206 = icmp eq i32 %call.i205, 1
  br i1 %cmp.not.i206, label %s5h1409_readreg.exit195.s5h1409_writereg.exit213_crit_edge, label %do.end.i209

s5h1409_readreg.exit195.s5h1409_writereg.exit213_crit_edge: ; preds = %s5h1409_readreg.exit195
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit213

do.end.i209:                                      ; preds = %s5h1409_readreg.exit195
  call void @__sanitizer_cov_trace_pc() #9
  %conv15.i192 = zext i8 %200 to i16
  %218 = or i16 %shl.i190.masked, %conv15.i192
  %conv.i207 = zext i16 %218 to i32
  %call10.i208 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 171, i32 noundef %conv.i207, i32 noundef %call.i205) #11
  br label %s5h1409_writereg.exit213

s5h1409_writereg.exit213:                         ; preds = %do.end.i209, %s5h1409_readreg.exit195.s5h1409_writereg.exit213_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i197) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i196) #7
  br label %if.end26

if.end26:                                         ; preds = %s5h1409_writereg.exit213, %s5h1409_writereg.exit171
  %219 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %config.i, align 4
  %inversion = getelementptr inbounds %struct.s5h1409_config, ptr %220, i32 0, i32 4
  %221 = ptrtoint ptr %inversion to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %inversion, align 2
  %223 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %demodulator_priv, align 4
  %225 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %tobool.not.i217 = icmp eq i32 %225, 0
  br i1 %tobool.not.i217, label %if.end26.if.end.i220_crit_edge, label %do.end.i219

if.end26.if.end.i220_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i220

do.end.i219:                                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %conv28 = zext i8 %222 to i32
  %call.i218 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.12, i32 noundef %conv28) #11
  br label %if.end.i220

if.end.i220:                                      ; preds = %do.end.i219, %if.end26.if.end.i220_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %222)
  %cmp.i = icmp eq i8 %222, 1
  br i1 %cmp.i, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.end.i220
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i214) #7
  %226 = getelementptr inbounds [3 x i8], ptr %buf.i.i214, i32 0, i32 1
  %227 = getelementptr inbounds [3 x i8], ptr %buf.i.i214, i32 0, i32 2
  %228 = ptrtoint ptr %buf.i.i214 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 27, ptr %buf.i.i214, align 1
  %229 = ptrtoint ptr %226 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 17, ptr %226, align 1
  %230 = ptrtoint ptr %227 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 1, ptr %227, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i215) #7
  %231 = getelementptr inbounds i8, ptr %msg.i.i215, i32 4
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 262143, ptr %231, align 4
  %config.i.i221 = getelementptr inbounds %struct.s5h1409_state, ptr %224, i32 0, i32 1
  %233 = ptrtoint ptr %config.i.i221 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %config.i.i221, align 4
  %235 = ptrtoint ptr %234 to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %234, align 2
  %conv5.i.i222 = zext i8 %236 to i16
  %237 = ptrtoint ptr %msg.i.i215 to i32
  call void @__asan_store2_noabort(i32 %237)
  store i16 %conv5.i.i222, ptr %msg.i.i215, align 4
  %flags.i.i223 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i215, i32 0, i32 1
  %238 = ptrtoint ptr %flags.i.i223 to i32
  call void @__asan_store2_noabort(i32 %238)
  store i16 0, ptr %flags.i.i223, align 2
  %buf6.i.i224 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i215, i32 0, i32 3
  %239 = ptrtoint ptr %buf6.i.i224 to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %buf.i.i214, ptr %buf6.i.i224, align 4
  %240 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %224, align 4
  %call.i.i225 = call i32 @i2c_transfer(ptr noundef %241, ptr noundef nonnull %msg.i.i215, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i225)
  %cmp.not.i.i226 = icmp eq i32 %call.i.i225, 1
  br i1 %cmp.not.i.i226, label %if.then1.i.s5h1409_writereg.exit.i_crit_edge, label %do.end.i.i228

if.then1.i.s5h1409_writereg.exit.i_crit_edge:     ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit.i

do.end.i.i228:                                    ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i.i227 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 27, i32 noundef 4353, i32 noundef %call.i.i225) #11
  br label %s5h1409_writereg.exit.i

s5h1409_writereg.exit.i:                          ; preds = %do.end.i.i228, %if.then1.i.s5h1409_writereg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i215) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i214) #7
  br label %s5h1409_set_spectralinversion.exit

if.else.i:                                        ; preds = %if.end.i220
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i1.i) #7
  %242 = getelementptr inbounds [3 x i8], ptr %buf.i1.i, i32 0, i32 1
  %243 = getelementptr inbounds [3 x i8], ptr %buf.i1.i, i32 0, i32 2
  %244 = ptrtoint ptr %buf.i1.i to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 27, ptr %buf.i1.i, align 1
  %245 = ptrtoint ptr %242 to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 1, ptr %242, align 1
  %246 = ptrtoint ptr %243 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 16, ptr %243, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2.i) #7
  %247 = getelementptr inbounds i8, ptr %msg.i2.i, i32 4
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 262143, ptr %247, align 4
  %config.i3.i = getelementptr inbounds %struct.s5h1409_state, ptr %224, i32 0, i32 1
  %249 = ptrtoint ptr %config.i3.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %config.i3.i, align 4
  %251 = ptrtoint ptr %250 to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %250, align 2
  %conv5.i4.i = zext i8 %252 to i16
  %253 = ptrtoint ptr %msg.i2.i to i32
  call void @__asan_store2_noabort(i32 %253)
  store i16 %conv5.i4.i, ptr %msg.i2.i, align 4
  %flags.i5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 1
  %254 = ptrtoint ptr %flags.i5.i to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 0, ptr %flags.i5.i, align 2
  %buf6.i7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 3
  %255 = ptrtoint ptr %buf6.i7.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr %buf.i1.i, ptr %buf6.i7.i, align 4
  %256 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %224, align 4
  %call.i8.i = call i32 @i2c_transfer(ptr noundef %257, ptr noundef nonnull %msg.i2.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i8.i)
  %cmp.not.i9.i = icmp eq i32 %call.i8.i, 1
  br i1 %cmp.not.i9.i, label %if.else.i.s5h1409_writereg.exit14.i_crit_edge, label %do.end.i11.i

if.else.i.s5h1409_writereg.exit14.i_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit14.i

do.end.i11.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 27, i32 noundef 272, i32 noundef %call.i8.i) #11
  br label %s5h1409_writereg.exit14.i

s5h1409_writereg.exit14.i:                        ; preds = %do.end.i11.i, %if.else.i.s5h1409_writereg.exit14.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i1.i) #7
  br label %s5h1409_set_spectralinversion.exit

s5h1409_set_spectralinversion.exit:               ; preds = %s5h1409_writereg.exit14.i, %s5h1409_writereg.exit.i
  %if_freq = getelementptr inbounds %struct.s5h1409_state, ptr %1, i32 0, i32 5
  %258 = ptrtoint ptr %if_freq to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %if_freq, align 4
  call fastcc void @s5h1409_set_if_freq(ptr noundef %fe, i32 noundef %259)
  %260 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %config.i, align 4
  %gpio = getelementptr inbounds %struct.s5h1409_config, ptr %261, i32 0, i32 2
  %262 = ptrtoint ptr %gpio to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %gpio, align 2
  %264 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %demodulator_priv, align 4
  %266 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %266)
  %tobool.not.i233 = icmp eq i32 %266, 0
  br i1 %tobool.not.i233, label %s5h1409_set_spectralinversion.exit.if.end.i236_crit_edge, label %do.end.i235

s5h1409_set_spectralinversion.exit.if.end.i236_crit_edge: ; preds = %s5h1409_set_spectralinversion.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i236

do.end.i235:                                      ; preds = %s5h1409_set_spectralinversion.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv32 = zext i8 %263 to i32
  %call.i234 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.15, i32 noundef %conv32) #11
  br label %if.end.i236

if.end.i236:                                      ; preds = %do.end.i235, %s5h1409_set_spectralinversion.exit.if.end.i236_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %263)
  %tobool1.not.i = icmp eq i8 %263, 0
  br i1 %tobool1.not.i, label %if.else.i249, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i236
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i.i) #7
  %267 = ptrtoint ptr %b0.i.i to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 -29, ptr %b0.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i.i) #7
  %268 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_store2_noabort(i32 %268)
  store i16 0, ptr %b1.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i231) #7
  %269 = getelementptr inbounds i8, ptr %msg.i.i231, i32 4
  %270 = call ptr @memset(ptr %269, i32 255, i32 16)
  %config.i.i237 = getelementptr inbounds %struct.s5h1409_state, ptr %265, i32 0, i32 1
  %271 = ptrtoint ptr %config.i.i237 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %config.i.i237, align 4
  %273 = ptrtoint ptr %272 to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %272, align 2
  %conv.i.i = zext i8 %274 to i16
  %275 = ptrtoint ptr %msg.i.i231 to i32
  call void @__asan_store2_noabort(i32 %275)
  store i16 %conv.i.i, ptr %msg.i.i231, align 4
  %flags.i.i238 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i231, i32 0, i32 1
  %276 = ptrtoint ptr %flags.i.i238 to i32
  call void @__asan_store2_noabort(i32 %276)
  store i16 0, ptr %flags.i.i238, align 2
  %277 = ptrtoint ptr %269 to i32
  call void @__asan_store2_noabort(i32 %277)
  store i16 1, ptr %269, align 4
  %buf.i.i239 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i231, i32 0, i32 3
  %278 = ptrtoint ptr %buf.i.i239 to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr %b0.i.i, ptr %buf.i.i239, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i231, i32 1
  %279 = load i8, ptr %272, align 2
  %conv5.i.i240 = zext i8 %279 to i16
  %280 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %280)
  store i16 %conv5.i.i240, ptr %arrayinit.element.i.i, align 4
  %flags6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i231, i32 1, i32 1
  %281 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store2_noabort(i32 %281)
  store i16 1, ptr %flags6.i.i, align 2
  %len7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i231, i32 1, i32 2
  %282 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_store2_noabort(i32 %282)
  store i16 2, ptr %len7.i.i, align 4
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i231, i32 1, i32 3
  %283 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr %b1.i.i, ptr %buf8.i.i, align 4
  %284 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %265, align 4
  %call.i.i241 = call i32 @i2c_transfer(ptr noundef %285, ptr noundef nonnull %msg.i.i231, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i241)
  %cmp.not.i.i242 = icmp eq i32 %call.i.i241, 2
  br i1 %cmp.not.i.i242, label %if.then2.i.s5h1409_readreg.exit.i_crit_edge, label %do.end.i.i243

if.then2.i.s5h1409_readreg.exit.i_crit_edge:      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_readreg.exit.i

do.end.i.i243:                                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i.i241) #11
  br label %s5h1409_readreg.exit.i

s5h1409_readreg.exit.i:                           ; preds = %do.end.i.i243, %if.then2.i.s5h1409_readreg.exit.i_crit_edge
  %286 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %b1.i.i, align 2
  %conv13.i.i = zext i8 %287 to i16
  %shl.i.i = shl nuw i16 %conv13.i.i, 8
  %arrayidx14.i.i = getelementptr inbounds [2 x i8], ptr %b1.i.i, i32 0, i32 1
  %288 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %arrayidx14.i.i, align 1
  %conv15.i.i = zext i8 %289 to i16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i231) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i.i) #7
  %or.i.i = or i16 %shl.i.i, %conv15.i.i
  %290 = or i16 %or.i.i, 4352
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i1.i229) #7
  %291 = getelementptr inbounds [3 x i8], ptr %buf.i1.i229, i32 0, i32 1
  %292 = getelementptr inbounds [3 x i8], ptr %buf.i1.i229, i32 0, i32 2
  %293 = ptrtoint ptr %buf.i1.i229 to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 -29, ptr %buf.i1.i229, align 1
  %294 = lshr i16 %290, 8
  %conv1.i.i = trunc i16 %294 to i8
  %295 = ptrtoint ptr %291 to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 %conv1.i.i, ptr %291, align 1
  %296 = ptrtoint ptr %292 to i32
  call void @__asan_store1_noabort(i32 %296)
  store i8 %289, ptr %292, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2.i230) #7
  %297 = getelementptr inbounds i8, ptr %msg.i2.i230, i32 4
  %298 = ptrtoint ptr %297 to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 262143, ptr %297, align 4
  %299 = ptrtoint ptr %config.i.i237 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %config.i.i237, align 4
  %301 = ptrtoint ptr %300 to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %300, align 2
  %conv5.i4.i244 = zext i8 %302 to i16
  %303 = ptrtoint ptr %msg.i2.i230 to i32
  call void @__asan_store2_noabort(i32 %303)
  store i16 %conv5.i4.i244, ptr %msg.i2.i230, align 4
  %flags.i5.i245 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i230, i32 0, i32 1
  %304 = ptrtoint ptr %flags.i5.i245 to i32
  call void @__asan_store2_noabort(i32 %304)
  store i16 0, ptr %flags.i5.i245, align 2
  %buf6.i.i246 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i230, i32 0, i32 3
  %305 = ptrtoint ptr %buf6.i.i246 to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr %buf.i1.i229, ptr %buf6.i.i246, align 4
  %306 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %265, align 4
  %call.i7.i = call i32 @i2c_transfer(ptr noundef %307, ptr noundef nonnull %msg.i2.i230, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i7.i)
  %cmp.not.i8.i = icmp eq i32 %call.i7.i, 1
  br i1 %cmp.not.i8.i, label %s5h1409_readreg.exit.i.s5h1409_writereg.exit.i248_crit_edge, label %do.end.i10.i

s5h1409_readreg.exit.i.s5h1409_writereg.exit.i248_crit_edge: ; preds = %s5h1409_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit.i248

do.end.i10.i:                                     ; preds = %s5h1409_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i9.i = zext i16 %290 to i32
  %call10.i.i247 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 227, i32 noundef %conv.i9.i, i32 noundef %call.i7.i) #11
  br label %s5h1409_writereg.exit.i248

s5h1409_writereg.exit.i248:                       ; preds = %do.end.i10.i, %s5h1409_readreg.exit.i.s5h1409_writereg.exit.i248_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2.i230) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i1.i229) #7
  br label %s5h1409_set_gpio.exit

if.else.i249:                                     ; preds = %if.end.i236
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i11.i) #7
  %308 = ptrtoint ptr %b0.i11.i to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 -29, ptr %b0.i11.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i12.i) #7
  %309 = ptrtoint ptr %b1.i12.i to i32
  call void @__asan_store2_noabort(i32 %309)
  store i16 0, ptr %b1.i12.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i13.i) #7
  %310 = getelementptr inbounds i8, ptr %msg.i13.i, i32 4
  %311 = call ptr @memset(ptr %310, i32 255, i32 16)
  %config.i14.i = getelementptr inbounds %struct.s5h1409_state, ptr %265, i32 0, i32 1
  %312 = ptrtoint ptr %config.i14.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %config.i14.i, align 4
  %314 = ptrtoint ptr %313 to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %313, align 2
  %conv.i15.i = zext i8 %315 to i16
  %316 = ptrtoint ptr %msg.i13.i to i32
  call void @__asan_store2_noabort(i32 %316)
  store i16 %conv.i15.i, ptr %msg.i13.i, align 4
  %flags.i16.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13.i, i32 0, i32 1
  %317 = ptrtoint ptr %flags.i16.i to i32
  call void @__asan_store2_noabort(i32 %317)
  store i16 0, ptr %flags.i16.i, align 2
  %318 = ptrtoint ptr %310 to i32
  call void @__asan_store2_noabort(i32 %318)
  store i16 1, ptr %310, align 4
  %buf.i18.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13.i, i32 0, i32 3
  %319 = ptrtoint ptr %buf.i18.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store ptr %b0.i11.i, ptr %buf.i18.i, align 4
  %arrayinit.element.i19.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13.i, i32 1
  %320 = load i8, ptr %313, align 2
  %conv5.i20.i = zext i8 %320 to i16
  %321 = ptrtoint ptr %arrayinit.element.i19.i to i32
  call void @__asan_store2_noabort(i32 %321)
  store i16 %conv5.i20.i, ptr %arrayinit.element.i19.i, align 4
  %flags6.i21.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13.i, i32 1, i32 1
  %322 = ptrtoint ptr %flags6.i21.i to i32
  call void @__asan_store2_noabort(i32 %322)
  store i16 1, ptr %flags6.i21.i, align 2
  %len7.i22.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13.i, i32 1, i32 2
  %323 = ptrtoint ptr %len7.i22.i to i32
  call void @__asan_store2_noabort(i32 %323)
  store i16 2, ptr %len7.i22.i, align 4
  %buf8.i23.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13.i, i32 1, i32 3
  %324 = ptrtoint ptr %buf8.i23.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr %b1.i12.i, ptr %buf8.i23.i, align 4
  %325 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %265, align 4
  %call.i24.i = call i32 @i2c_transfer(ptr noundef %326, ptr noundef nonnull %msg.i13.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i24.i)
  %cmp.not.i25.i = icmp eq i32 %call.i24.i, 2
  br i1 %cmp.not.i25.i, label %if.else.i249.s5h1409_readreg.exit33.i_crit_edge, label %do.end.i27.i

if.else.i249.s5h1409_readreg.exit33.i_crit_edge:  ; preds = %if.else.i249
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_readreg.exit33.i

do.end.i27.i:                                     ; preds = %if.else.i249
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i24.i) #11
  br label %s5h1409_readreg.exit33.i

s5h1409_readreg.exit33.i:                         ; preds = %do.end.i27.i, %if.else.i249.s5h1409_readreg.exit33.i_crit_edge
  %327 = ptrtoint ptr %b1.i12.i to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %b1.i12.i, align 2
  %conv13.i28.i = zext i8 %328 to i16
  %shl.i29.i = shl nuw i16 %conv13.i28.i, 8
  %arrayidx14.i30.i = getelementptr inbounds [2 x i8], ptr %b1.i12.i, i32 0, i32 1
  %329 = ptrtoint ptr %arrayidx14.i30.i to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %arrayidx14.i30.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i13.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i12.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i11.i) #7
  %shl.i29.masked.i = and i16 %shl.i29.i, -512
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i34.i) #7
  %331 = getelementptr inbounds [3 x i8], ptr %buf.i34.i, i32 0, i32 1
  %332 = getelementptr inbounds [3 x i8], ptr %buf.i34.i, i32 0, i32 2
  %333 = ptrtoint ptr %buf.i34.i to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 -29, ptr %buf.i34.i, align 1
  %334 = lshr exact i16 %shl.i29.masked.i, 8
  %conv1.i36.i = trunc i16 %334 to i8
  %335 = ptrtoint ptr %331 to i32
  call void @__asan_store1_noabort(i32 %335)
  store i8 %conv1.i36.i, ptr %331, align 1
  %336 = ptrtoint ptr %332 to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 %330, ptr %332, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i35.i) #7
  %337 = getelementptr inbounds i8, ptr %msg.i35.i, i32 4
  %338 = ptrtoint ptr %337 to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 262143, ptr %337, align 4
  %339 = ptrtoint ptr %config.i14.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %config.i14.i, align 4
  %341 = ptrtoint ptr %340 to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %340, align 2
  %conv5.i39.i = zext i8 %342 to i16
  %343 = ptrtoint ptr %msg.i35.i to i32
  call void @__asan_store2_noabort(i32 %343)
  store i16 %conv5.i39.i, ptr %msg.i35.i, align 4
  %flags.i40.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i35.i, i32 0, i32 1
  %344 = ptrtoint ptr %flags.i40.i to i32
  call void @__asan_store2_noabort(i32 %344)
  store i16 0, ptr %flags.i40.i, align 2
  %buf6.i42.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i35.i, i32 0, i32 3
  %345 = ptrtoint ptr %buf6.i42.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store ptr %buf.i34.i, ptr %buf6.i42.i, align 4
  %346 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %265, align 4
  %call.i43.i = call i32 @i2c_transfer(ptr noundef %347, ptr noundef nonnull %msg.i35.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i43.i)
  %cmp.not.i44.i = icmp eq i32 %call.i43.i, 1
  br i1 %cmp.not.i44.i, label %s5h1409_readreg.exit33.i.s5h1409_writereg.exit50.i_crit_edge, label %do.end.i47.i

s5h1409_readreg.exit33.i.s5h1409_writereg.exit50.i_crit_edge: ; preds = %s5h1409_readreg.exit33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit50.i

do.end.i47.i:                                     ; preds = %s5h1409_readreg.exit33.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv15.i31.i = zext i8 %330 to i16
  %348 = or i16 %shl.i29.masked.i, %conv15.i31.i
  %conv.i45.i = zext i16 %348 to i32
  %call10.i46.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 227, i32 noundef %conv.i45.i, i32 noundef %call.i43.i) #11
  br label %s5h1409_writereg.exit50.i

s5h1409_writereg.exit50.i:                        ; preds = %do.end.i47.i, %s5h1409_readreg.exit33.i.s5h1409_writereg.exit50.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i35.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i34.i) #7
  br label %s5h1409_set_gpio.exit

s5h1409_set_gpio.exit:                            ; preds = %s5h1409_writereg.exit50.i, %s5h1409_writereg.exit.i248
  %349 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %config.i, align 4
  %mpeg_timing = getelementptr inbounds %struct.s5h1409_config, ptr %350, i32 0, i32 6
  %351 = ptrtoint ptr %mpeg_timing to i32
  call void @__asan_load2_noabort(i32 %351)
  %352 = load i16, ptr %mpeg_timing, align 2
  %353 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %demodulator_priv, align 4
  %355 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %355)
  %tobool.not.i256 = icmp eq i32 %355, 0
  br i1 %tobool.not.i256, label %s5h1409_set_gpio.exit.if.end.i270_crit_edge, label %do.end.i258

s5h1409_set_gpio.exit.if.end.i270_crit_edge:      ; preds = %s5h1409_set_gpio.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i270

do.end.i258:                                      ; preds = %s5h1409_set_gpio.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv35 = zext i16 %352 to i32
  %call.i257 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.16, i32 noundef %conv35) #11
  br label %if.end.i270

if.end.i270:                                      ; preds = %do.end.i258, %s5h1409_set_gpio.exit.if.end.i270_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i.i252) #7
  %356 = ptrtoint ptr %b0.i.i252 to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 -84, ptr %b0.i.i252, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i.i253) #7
  %357 = ptrtoint ptr %b1.i.i253 to i32
  call void @__asan_store2_noabort(i32 %357)
  store i16 0, ptr %b1.i.i253, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i254) #7
  %358 = getelementptr inbounds i8, ptr %msg.i.i254, i32 4
  %359 = call ptr @memset(ptr %358, i32 255, i32 16)
  %config.i.i259 = getelementptr inbounds %struct.s5h1409_state, ptr %354, i32 0, i32 1
  %360 = ptrtoint ptr %config.i.i259 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %config.i.i259, align 4
  %362 = ptrtoint ptr %361 to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %361, align 2
  %conv.i.i260 = zext i8 %363 to i16
  %364 = ptrtoint ptr %msg.i.i254 to i32
  call void @__asan_store2_noabort(i32 %364)
  store i16 %conv.i.i260, ptr %msg.i.i254, align 4
  %flags.i.i261 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i254, i32 0, i32 1
  %365 = ptrtoint ptr %flags.i.i261 to i32
  call void @__asan_store2_noabort(i32 %365)
  store i16 0, ptr %flags.i.i261, align 2
  %366 = ptrtoint ptr %358 to i32
  call void @__asan_store2_noabort(i32 %366)
  store i16 1, ptr %358, align 4
  %buf.i.i262 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i254, i32 0, i32 3
  %367 = ptrtoint ptr %buf.i.i262 to i32
  call void @__asan_store4_noabort(i32 %367)
  store ptr %b0.i.i252, ptr %buf.i.i262, align 4
  %arrayinit.element.i.i263 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i254, i32 1
  %368 = load i8, ptr %361, align 2
  %conv5.i.i264 = zext i8 %368 to i16
  %369 = ptrtoint ptr %arrayinit.element.i.i263 to i32
  call void @__asan_store2_noabort(i32 %369)
  store i16 %conv5.i.i264, ptr %arrayinit.element.i.i263, align 4
  %flags6.i.i265 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i254, i32 1, i32 1
  %370 = ptrtoint ptr %flags6.i.i265 to i32
  call void @__asan_store2_noabort(i32 %370)
  store i16 1, ptr %flags6.i.i265, align 2
  %len7.i.i266 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i254, i32 1, i32 2
  %371 = ptrtoint ptr %len7.i.i266 to i32
  call void @__asan_store2_noabort(i32 %371)
  store i16 2, ptr %len7.i.i266, align 4
  %buf8.i.i267 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i254, i32 1, i32 3
  %372 = ptrtoint ptr %buf8.i.i267 to i32
  call void @__asan_store4_noabort(i32 %372)
  store ptr %b1.i.i253, ptr %buf8.i.i267, align 4
  %373 = ptrtoint ptr %354 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %354, align 4
  %call.i.i268 = call i32 @i2c_transfer(ptr noundef %374, ptr noundef nonnull %msg.i.i254, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i268)
  %cmp.not.i.i269 = icmp eq i32 %call.i.i268, 2
  br i1 %cmp.not.i.i269, label %if.end.i270.s5h1409_readreg.exit.i278_crit_edge, label %do.end.i.i272

if.end.i270.s5h1409_readreg.exit.i278_crit_edge:  ; preds = %if.end.i270
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_readreg.exit.i278

do.end.i.i272:                                    ; preds = %if.end.i270
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i.i271 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i.i268) #11
  br label %s5h1409_readreg.exit.i278

s5h1409_readreg.exit.i278:                        ; preds = %do.end.i.i272, %if.end.i270.s5h1409_readreg.exit.i278_crit_edge
  %375 = ptrtoint ptr %b1.i.i253 to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %b1.i.i253, align 2
  %conv13.i.i273 = zext i8 %376 to i16
  %shl.i.i274 = shl nuw i16 %conv13.i.i273, 8
  %arrayidx14.i.i275 = getelementptr inbounds [2 x i8], ptr %b1.i.i253, i32 0, i32 1
  %377 = ptrtoint ptr %arrayidx14.i.i275 to i32
  call void @__asan_load1_noabort(i32 %377)
  %378 = load i8, ptr %arrayidx14.i.i275, align 1
  %conv15.i.i276 = zext i8 %378 to i16
  %or.i.i277 = or i16 %shl.i.i274, %conv15.i.i276
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i254) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i.i253) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i.i252) #7
  %379 = and i16 %or.i.i277, -12289
  %380 = zext i16 %352 to i64
  call void @__sanitizer_cov_trace_switch(i64 %380, ptr @__sancov_gen_cov_switch_values.57)
  switch i16 %352, label %s5h1409_readreg.exit.i278.s5h1409_set_mpeg_timing.exit_crit_edge [
    i16 0, label %s5h1409_readreg.exit.i278.sw.epilog.i_crit_edge
    i16 1, label %sw.bb5.i
    i16 2, label %sw.bb17.i
    i16 3, label %sw.bb21.i
  ]

s5h1409_readreg.exit.i278.sw.epilog.i_crit_edge:  ; preds = %s5h1409_readreg.exit.i278
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

s5h1409_readreg.exit.i278.s5h1409_set_mpeg_timing.exit_crit_edge: ; preds = %s5h1409_readreg.exit.i278
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_set_mpeg_timing.exit

sw.bb5.i:                                         ; preds = %s5h1409_readreg.exit.i278
  %381 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %381)
  %tobool6.not.i = icmp eq i32 %381, 0
  br i1 %tobool6.not.i, label %sw.bb5.i.if.end13.i_crit_edge, label %do.end10.i

sw.bb5.i.if.end13.i_crit_edge:                    ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

do.end10.i:                                       ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i279 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef 1) #11
  br label %if.end13.i

if.end13.i:                                       ; preds = %do.end10.i, %sw.bb5.i.if.end13.i_crit_edge
  %382 = or i16 %379, 4096
  br label %sw.epilog.i

sw.bb17.i:                                        ; preds = %s5h1409_readreg.exit.i278
  call void @__sanitizer_cov_trace_pc() #9
  %383 = or i16 %379, 8192
  br label %sw.epilog.i

sw.bb21.i:                                        ; preds = %s5h1409_readreg.exit.i278
  call void @__sanitizer_cov_trace_pc() #9
  %384 = or i16 %or.i.i277, 12288
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb21.i, %sw.bb17.i, %if.end13.i, %s5h1409_readreg.exit.i278.sw.epilog.i_crit_edge
  %val.0.i = phi i16 [ %384, %sw.bb21.i ], [ %383, %sw.bb17.i ], [ %382, %if.end13.i ], [ %379, %s5h1409_readreg.exit.i278.sw.epilog.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i1.i250) #7
  %385 = getelementptr inbounds [3 x i8], ptr %buf.i1.i250, i32 0, i32 1
  %386 = getelementptr inbounds [3 x i8], ptr %buf.i1.i250, i32 0, i32 2
  %387 = ptrtoint ptr %buf.i1.i250 to i32
  call void @__asan_store1_noabort(i32 %387)
  store i8 -84, ptr %buf.i1.i250, align 1
  %388 = lshr i16 %val.0.i, 8
  %conv1.i.i280 = trunc i16 %388 to i8
  %389 = ptrtoint ptr %385 to i32
  call void @__asan_store1_noabort(i32 %389)
  store i8 %conv1.i.i280, ptr %385, align 1
  %conv4.i.i = trunc i16 %val.0.i to i8
  %390 = ptrtoint ptr %386 to i32
  call void @__asan_store1_noabort(i32 %390)
  store i8 %conv4.i.i, ptr %386, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2.i251) #7
  %391 = getelementptr inbounds i8, ptr %msg.i2.i251, i32 4
  %392 = ptrtoint ptr %391 to i32
  call void @__asan_store4_noabort(i32 %392)
  store i32 262143, ptr %391, align 4
  %393 = ptrtoint ptr %config.i.i259 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %config.i.i259, align 4
  %395 = ptrtoint ptr %394 to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %394, align 2
  %conv5.i4.i281 = zext i8 %396 to i16
  %397 = ptrtoint ptr %msg.i2.i251 to i32
  call void @__asan_store2_noabort(i32 %397)
  store i16 %conv5.i4.i281, ptr %msg.i2.i251, align 4
  %flags.i5.i282 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i251, i32 0, i32 1
  %398 = ptrtoint ptr %flags.i5.i282 to i32
  call void @__asan_store2_noabort(i32 %398)
  store i16 0, ptr %flags.i5.i282, align 2
  %buf6.i.i283 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i251, i32 0, i32 3
  %399 = ptrtoint ptr %buf6.i.i283 to i32
  call void @__asan_store4_noabort(i32 %399)
  store ptr %buf.i1.i250, ptr %buf6.i.i283, align 4
  %400 = ptrtoint ptr %354 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %354, align 4
  %call.i7.i284 = call i32 @i2c_transfer(ptr noundef %401, ptr noundef nonnull %msg.i2.i251, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i7.i284)
  %cmp.not.i8.i285 = icmp eq i32 %call.i7.i284, 1
  br i1 %cmp.not.i8.i285, label %sw.epilog.i.s5h1409_writereg.exit.i289_crit_edge, label %do.end.i10.i288

sw.epilog.i.s5h1409_writereg.exit.i289_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit.i289

do.end.i10.i288:                                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i9.i286 = zext i16 %val.0.i to i32
  %call10.i.i287 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 172, i32 noundef %conv.i9.i286, i32 noundef %call.i7.i284) #11
  br label %s5h1409_writereg.exit.i289

s5h1409_writereg.exit.i289:                       ; preds = %do.end.i10.i288, %sw.epilog.i.s5h1409_writereg.exit.i289_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2.i251) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i1.i250) #7
  br label %s5h1409_set_mpeg_timing.exit

s5h1409_set_mpeg_timing.exit:                     ; preds = %s5h1409_writereg.exit.i289, %s5h1409_readreg.exit.i278.s5h1409_set_mpeg_timing.exit_crit_edge
  call fastcc void @s5h1409_softreset(ptr noundef %fe)
  %402 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %demodulator_priv, align 4
  %404 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %404)
  %tobool.not.i293 = icmp eq i32 %404, 0
  br i1 %tobool.not.i293, label %s5h1409_set_mpeg_timing.exit.if.end.i296_crit_edge, label %do.end.i295

s5h1409_set_mpeg_timing.exit.if.end.i296_crit_edge: ; preds = %s5h1409_set_mpeg_timing.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i296

do.end.i295:                                      ; preds = %s5h1409_set_mpeg_timing.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i294 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.21, i32 noundef 0) #11
  br label %if.end.i296

if.end.i296:                                      ; preds = %do.end.i295, %s5h1409_set_mpeg_timing.exit.if.end.i296_crit_edge
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i7.i) #7
  %405 = getelementptr inbounds [3 x i8], ptr %buf.i7.i, i32 0, i32 1
  %406 = getelementptr inbounds [3 x i8], ptr %buf.i7.i, i32 0, i32 2
  %407 = ptrtoint ptr %buf.i7.i to i32
  call void @__asan_store1_noabort(i32 %407)
  store i8 -13, ptr %buf.i7.i, align 1
  %408 = ptrtoint ptr %405 to i32
  call void @__asan_store1_noabort(i32 %408)
  store i8 0, ptr %405, align 1
  %409 = ptrtoint ptr %406 to i32
  call void @__asan_store1_noabort(i32 %409)
  store i8 0, ptr %406, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i8.i) #7
  %410 = getelementptr inbounds i8, ptr %msg.i8.i, i32 4
  %411 = ptrtoint ptr %410 to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 262143, ptr %410, align 4
  %config.i9.i = getelementptr inbounds %struct.s5h1409_state, ptr %403, i32 0, i32 1
  %412 = ptrtoint ptr %config.i9.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %config.i9.i, align 4
  %414 = ptrtoint ptr %413 to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %413, align 2
  %conv5.i10.i = zext i8 %415 to i16
  %416 = ptrtoint ptr %msg.i8.i to i32
  call void @__asan_store2_noabort(i32 %416)
  store i16 %conv5.i10.i, ptr %msg.i8.i, align 4
  %flags.i11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8.i, i32 0, i32 1
  %417 = ptrtoint ptr %flags.i11.i to i32
  call void @__asan_store2_noabort(i32 %417)
  store i16 0, ptr %flags.i11.i, align 2
  %buf6.i13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8.i, i32 0, i32 3
  %418 = ptrtoint ptr %buf6.i13.i to i32
  call void @__asan_store4_noabort(i32 %418)
  store ptr %buf.i7.i, ptr %buf6.i13.i, align 4
  %419 = ptrtoint ptr %403 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %403, align 4
  %call.i14.i = call i32 @i2c_transfer(ptr noundef %420, ptr noundef nonnull %msg.i8.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i14.i)
  %cmp.not.i15.i = icmp eq i32 %call.i14.i, 1
  br i1 %cmp.not.i15.i, label %if.end.i296.s5h1409_i2c_gate_ctrl.exit_crit_edge, label %do.end.i17.i

if.end.i296.s5h1409_i2c_gate_ctrl.exit_crit_edge: ; preds = %if.end.i296
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_i2c_gate_ctrl.exit

do.end.i17.i:                                     ; preds = %if.end.i296
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 243, i32 noundef 0, i32 noundef %call.i14.i) #11
  br label %s5h1409_i2c_gate_ctrl.exit

s5h1409_i2c_gate_ctrl.exit:                       ; preds = %do.end.i17.i, %if.end.i296.s5h1409_i2c_gate_ctrl.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i8.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i7.i) #7
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5h1409_i2c_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #0 align 64 {
entry:
  %buf.i7 = alloca [3 x i8], align 1
  %msg.i8 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [3 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.21, i32 noundef %enable) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool1.not = icmp eq i32 %enable, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %3 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %4 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -13, ptr %buf.i, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %3, align 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 262143, ptr %8, align 4
  %config.i = getelementptr inbounds %struct.s5h1409_state, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 2
  %conv5.i = zext i8 %13 to i16
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv5.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf.i, ptr %buf6.i, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.then2.s5h1409_writereg.exit_crit_edge, label %do.end.i

if.then2.s5h1409_writereg.exit_crit_edge:         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit

do.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 243, i32 noundef 1, i32 noundef %call.i) #11
  br label %s5h1409_writereg.exit

s5h1409_writereg.exit:                            ; preds = %do.end.i, %if.then2.s5h1409_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i7) #7
  %19 = getelementptr inbounds [3 x i8], ptr %buf.i7, i32 0, i32 1
  %20 = getelementptr inbounds [3 x i8], ptr %buf.i7, i32 0, i32 2
  %21 = ptrtoint ptr %buf.i7 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -13, ptr %buf.i7, align 1
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %19, align 1
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i8) #7
  %24 = getelementptr inbounds i8, ptr %msg.i8, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 262143, ptr %24, align 4
  %config.i9 = getelementptr inbounds %struct.s5h1409_state, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %config.i9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %config.i9, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 2
  %conv5.i10 = zext i8 %29 to i16
  %30 = ptrtoint ptr %msg.i8 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv5.i10, ptr %msg.i8, align 4
  %flags.i11 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8, i32 0, i32 1
  %31 = ptrtoint ptr %flags.i11 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %flags.i11, align 2
  %buf6.i13 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8, i32 0, i32 3
  %32 = ptrtoint ptr %buf6.i13 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %buf.i7, ptr %buf6.i13, align 4
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %call.i14 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %msg.i8, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i14)
  %cmp.not.i15 = icmp eq i32 %call.i14, 1
  br i1 %cmp.not.i15, label %if.else.s5h1409_writereg.exit20_crit_edge, label %do.end.i17

if.else.s5h1409_writereg.exit20_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit20

do.end.i17:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 243, i32 noundef 0, i32 noundef %call.i14) #11
  br label %s5h1409_writereg.exit20

s5h1409_writereg.exit20:                          ; preds = %do.end.i17, %if.else.s5h1409_writereg.exit20_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i8) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i7) #7
  br label %cleanup

cleanup:                                          ; preds = %s5h1409_writereg.exit20, %s5h1409_writereg.exit
  %retval.0.in.in = phi i1 [ %cmp.not.i, %s5h1409_writereg.exit ], [ %cmp.not.i15, %s5h1409_writereg.exit20 ]
  %retval.0.in = xor i1 %retval.0.in.in, true
  %retval.0 = sext i1 %retval.0.in to i32
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5h1409_set_if_freq(ptr nocapture noundef readonly %fe, i32 noundef %KHz) unnamed_addr #0 align 64 {
entry:
  %buf.i57 = alloca [3 x i8], align 1
  %msg.i58 = alloca %struct.i2c_msg, align 4
  %buf.i43 = alloca [3 x i8], align 1
  %msg.i44 = alloca %struct.i2c_msg, align 4
  %buf.i29 = alloca [3 x i8], align 1
  %msg.i30 = alloca %struct.i2c_msg, align 4
  %buf.i15 = alloca [3 x i8], align 1
  %msg.i16 = alloca %struct.i2c_msg, align 4
  %buf.i1 = alloca [3 x i8], align 1
  %msg.i2 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [3 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %KHz) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %KHz)
  %cond = icmp eq i32 %KHz, 4000
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %3 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %4 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -121, ptr %buf.i, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %3, align 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 75, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 262143, ptr %8, align 4
  %config.i = getelementptr inbounds %struct.s5h1409_state, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 2
  %conv5.i = zext i8 %13 to i16
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv5.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf.i, ptr %buf6.i, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %sw.bb.s5h1409_writereg.exit_crit_edge, label %do.end.i

sw.bb.s5h1409_writereg.exit_crit_edge:            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 135, i32 noundef 331, i32 noundef %call.i) #11
  br label %s5h1409_writereg.exit

s5h1409_writereg.exit:                            ; preds = %do.end.i, %sw.bb.s5h1409_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i1) #7
  %19 = getelementptr inbounds [3 x i8], ptr %buf.i1, i32 0, i32 1
  %20 = getelementptr inbounds [3 x i8], ptr %buf.i1, i32 0, i32 2
  %21 = ptrtoint ptr %buf.i1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -120, ptr %buf.i1, align 1
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 12, ptr %19, align 1
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -75, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2) #7
  %24 = getelementptr inbounds i8, ptr %msg.i2, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 262143, ptr %24, align 4
  %26 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %config.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 2
  %conv5.i4 = zext i8 %29 to i16
  %30 = ptrtoint ptr %msg.i2 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv5.i4, ptr %msg.i2, align 4
  %flags.i5 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2, i32 0, i32 1
  %31 = ptrtoint ptr %flags.i5 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %flags.i5, align 2
  %buf6.i7 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2, i32 0, i32 3
  %32 = ptrtoint ptr %buf6.i7 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %buf.i1, ptr %buf6.i7, align 4
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %call.i8 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %msg.i2, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i8)
  %cmp.not.i9 = icmp eq i32 %call.i8, 1
  br i1 %cmp.not.i9, label %s5h1409_writereg.exit.s5h1409_writereg.exit14_crit_edge, label %do.end.i11

s5h1409_writereg.exit.s5h1409_writereg.exit14_crit_edge: ; preds = %s5h1409_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit14

do.end.i11:                                       ; preds = %s5h1409_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 136, i32 noundef 3253, i32 noundef %call.i8) #11
  br label %s5h1409_writereg.exit14

s5h1409_writereg.exit14:                          ; preds = %do.end.i11, %s5h1409_writereg.exit.s5h1409_writereg.exit14_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i1) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i15) #7
  %35 = getelementptr inbounds [3 x i8], ptr %buf.i15, i32 0, i32 1
  %36 = getelementptr inbounds [3 x i8], ptr %buf.i15, i32 0, i32 2
  %37 = ptrtoint ptr %buf.i15 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -119, ptr %buf.i15, align 1
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 3, ptr %35, align 1
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -30, ptr %36, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i16) #7
  %40 = getelementptr inbounds i8, ptr %msg.i16, i32 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 262143, ptr %40, align 4
  %42 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %config.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 2
  %conv5.i18 = zext i8 %45 to i16
  %46 = ptrtoint ptr %msg.i16 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv5.i18, ptr %msg.i16, align 4
  %flags.i19 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i16, i32 0, i32 1
  %47 = ptrtoint ptr %flags.i19 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %flags.i19, align 2
  %buf6.i21 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i16, i32 0, i32 3
  %48 = ptrtoint ptr %buf6.i21 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %buf.i15, ptr %buf6.i21, align 4
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %call.i22 = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %msg.i16, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i22)
  %cmp.not.i23 = icmp eq i32 %call.i22, 1
  br i1 %cmp.not.i23, label %s5h1409_writereg.exit14.s5h1409_writereg.exit28_crit_edge, label %do.end.i25

s5h1409_writereg.exit14.s5h1409_writereg.exit28_crit_edge: ; preds = %s5h1409_writereg.exit14
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit28

do.end.i25:                                       ; preds = %s5h1409_writereg.exit14
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 137, i32 noundef 994, i32 noundef %call.i22) #11
  br label %s5h1409_writereg.exit28

s5h1409_writereg.exit28:                          ; preds = %do.end.i25, %s5h1409_writereg.exit14.s5h1409_writereg.exit28_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i16) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i15) #7
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i29) #7
  %51 = getelementptr inbounds [3 x i8], ptr %buf.i29, i32 0, i32 1
  %52 = getelementptr inbounds [3 x i8], ptr %buf.i29, i32 0, i32 2
  %53 = ptrtoint ptr %buf.i29 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -121, ptr %buf.i29, align 1
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %51, align 1
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -66, ptr %52, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i30) #7
  %56 = getelementptr inbounds i8, ptr %msg.i30, i32 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 262143, ptr %56, align 4
  %config.i31 = getelementptr inbounds %struct.s5h1409_state, ptr %1, i32 0, i32 1
  %58 = ptrtoint ptr %config.i31 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %config.i31, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %59, align 2
  %conv5.i32 = zext i8 %61 to i16
  %62 = ptrtoint ptr %msg.i30 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv5.i32, ptr %msg.i30, align 4
  %flags.i33 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i30, i32 0, i32 1
  %63 = ptrtoint ptr %flags.i33 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %flags.i33, align 2
  %buf6.i35 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i30, i32 0, i32 3
  %64 = ptrtoint ptr %buf6.i35 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %buf.i29, ptr %buf6.i35, align 4
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %call.i36 = call i32 @i2c_transfer(ptr noundef %66, ptr noundef nonnull %msg.i30, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i36)
  %cmp.not.i37 = icmp eq i32 %call.i36, 1
  br i1 %cmp.not.i37, label %sw.default.s5h1409_writereg.exit42_crit_edge, label %do.end.i39

sw.default.s5h1409_writereg.exit42_crit_edge:     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit42

do.end.i39:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 135, i32 noundef 446, i32 noundef %call.i36) #11
  br label %s5h1409_writereg.exit42

s5h1409_writereg.exit42:                          ; preds = %do.end.i39, %sw.default.s5h1409_writereg.exit42_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i30) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i29) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i43) #7
  %67 = getelementptr inbounds [3 x i8], ptr %buf.i43, i32 0, i32 1
  %68 = getelementptr inbounds [3 x i8], ptr %buf.i43, i32 0, i32 2
  %69 = ptrtoint ptr %buf.i43 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -120, ptr %buf.i43, align 1
  %70 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 4, ptr %67, align 1
  %71 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 54, ptr %68, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i44) #7
  %72 = getelementptr inbounds i8, ptr %msg.i44, i32 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 262143, ptr %72, align 4
  %74 = ptrtoint ptr %config.i31 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %config.i31, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %75, align 2
  %conv5.i46 = zext i8 %77 to i16
  %78 = ptrtoint ptr %msg.i44 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv5.i46, ptr %msg.i44, align 4
  %flags.i47 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i44, i32 0, i32 1
  %79 = ptrtoint ptr %flags.i47 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 0, ptr %flags.i47, align 2
  %buf6.i49 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i44, i32 0, i32 3
  %80 = ptrtoint ptr %buf6.i49 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %buf.i43, ptr %buf6.i49, align 4
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  %call.i50 = call i32 @i2c_transfer(ptr noundef %82, ptr noundef nonnull %msg.i44, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i50)
  %cmp.not.i51 = icmp eq i32 %call.i50, 1
  br i1 %cmp.not.i51, label %s5h1409_writereg.exit42.s5h1409_writereg.exit56_crit_edge, label %do.end.i53

s5h1409_writereg.exit42.s5h1409_writereg.exit56_crit_edge: ; preds = %s5h1409_writereg.exit42
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit56

do.end.i53:                                       ; preds = %s5h1409_writereg.exit42
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 136, i32 noundef 1078, i32 noundef %call.i50) #11
  br label %s5h1409_writereg.exit56

s5h1409_writereg.exit56:                          ; preds = %do.end.i53, %s5h1409_writereg.exit42.s5h1409_writereg.exit56_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i44) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i43) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i57) #7
  %83 = getelementptr inbounds [3 x i8], ptr %buf.i57, i32 0, i32 1
  %84 = getelementptr inbounds [3 x i8], ptr %buf.i57, i32 0, i32 2
  %85 = ptrtoint ptr %buf.i57 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -119, ptr %buf.i57, align 1
  %86 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 5, ptr %83, align 1
  %87 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 77, ptr %84, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i58) #7
  %88 = getelementptr inbounds i8, ptr %msg.i58, i32 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 262143, ptr %88, align 4
  %90 = ptrtoint ptr %config.i31 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %config.i31, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %91, align 2
  %conv5.i60 = zext i8 %93 to i16
  %94 = ptrtoint ptr %msg.i58 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv5.i60, ptr %msg.i58, align 4
  %flags.i61 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i58, i32 0, i32 1
  %95 = ptrtoint ptr %flags.i61 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 0, ptr %flags.i61, align 2
  %buf6.i63 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i58, i32 0, i32 3
  %96 = ptrtoint ptr %buf6.i63 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %buf.i57, ptr %buf6.i63, align 4
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %1, align 4
  %call.i64 = call i32 @i2c_transfer(ptr noundef %98, ptr noundef nonnull %msg.i58, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i64)
  %cmp.not.i65 = icmp eq i32 %call.i64, 1
  br i1 %cmp.not.i65, label %s5h1409_writereg.exit56.s5h1409_writereg.exit70_crit_edge, label %do.end.i67

s5h1409_writereg.exit56.s5h1409_writereg.exit70_crit_edge: ; preds = %s5h1409_writereg.exit56
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit70

do.end.i67:                                       ; preds = %s5h1409_writereg.exit56
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 137, i32 noundef 1357, i32 noundef %call.i64) #11
  br label %s5h1409_writereg.exit70

s5h1409_writereg.exit70:                          ; preds = %do.end.i67, %s5h1409_writereg.exit56.s5h1409_writereg.exit70_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i58) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i57) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %s5h1409_writereg.exit70, %s5h1409_writereg.exit28
  %if_freq = getelementptr inbounds %struct.s5h1409_state, ptr %1, i32 0, i32 5
  %99 = ptrtoint ptr %if_freq to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %KHz, ptr %if_freq, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5h1409_softreset(ptr nocapture noundef readonly %fe) unnamed_addr #0 align 64 {
entry:
  %buf.i1 = alloca [3 x i8], align 1
  %msg.i2 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [3 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.20) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %3 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %4 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -11, ptr %buf.i, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %3, align 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 262143, ptr %8, align 4
  %config.i = getelementptr inbounds %struct.s5h1409_state, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 2
  %conv5.i = zext i8 %13 to i16
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv5.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf.i, ptr %buf6.i, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end.s5h1409_writereg.exit_crit_edge, label %do.end.i

if.end.s5h1409_writereg.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 245, i32 noundef 0, i32 noundef %call.i) #11
  br label %s5h1409_writereg.exit

s5h1409_writereg.exit:                            ; preds = %do.end.i, %if.end.s5h1409_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i1) #7
  %19 = getelementptr inbounds [3 x i8], ptr %buf.i1, i32 0, i32 1
  %20 = getelementptr inbounds [3 x i8], ptr %buf.i1, i32 0, i32 2
  %21 = ptrtoint ptr %buf.i1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -11, ptr %buf.i1, align 1
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %19, align 1
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2) #7
  %24 = getelementptr inbounds i8, ptr %msg.i2, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 262143, ptr %24, align 4
  %26 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %config.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 2
  %conv5.i4 = zext i8 %29 to i16
  %30 = ptrtoint ptr %msg.i2 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv5.i4, ptr %msg.i2, align 4
  %flags.i5 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2, i32 0, i32 1
  %31 = ptrtoint ptr %flags.i5 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %flags.i5, align 2
  %buf6.i7 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2, i32 0, i32 3
  %32 = ptrtoint ptr %buf6.i7 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %buf.i1, ptr %buf6.i7, align 4
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %call.i8 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %msg.i2, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i8)
  %cmp.not.i9 = icmp eq i32 %call.i8, 1
  br i1 %cmp.not.i9, label %s5h1409_writereg.exit.s5h1409_writereg.exit14_crit_edge, label %do.end.i11

s5h1409_writereg.exit.s5h1409_writereg.exit14_crit_edge: ; preds = %s5h1409_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit14

do.end.i11:                                       ; preds = %s5h1409_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 245, i32 noundef 1, i32 noundef %call.i8) #11
  br label %s5h1409_writereg.exit14

s5h1409_writereg.exit14:                          ; preds = %do.end.i11, %s5h1409_writereg.exit.s5h1409_writereg.exit14_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i1) #7
  %is_qam_locked = getelementptr inbounds %struct.s5h1409_state, ptr %1, i32 0, i32 6
  %35 = ptrtoint ptr %is_qam_locked to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %is_qam_locked, align 4
  %qam_state = getelementptr inbounds %struct.s5h1409_state, ptr %1, i32 0, i32 7
  %36 = ptrtoint ptr %qam_state to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %qam_state, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5h1409_release(ptr nocapture noundef readonly %fe) #0 align 64 {
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
define internal i32 @s5h1409_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i195.i = alloca [3 x i8], align 1
  %msg.i196.i = alloca %struct.i2c_msg, align 4
  %b0.i172.i = alloca [1 x i8], align 1
  %b1.i173.i = alloca [2 x i8], align 2
  %msg.i174.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i158.i = alloca [3 x i8], align 1
  %msg.i159.i = alloca %struct.i2c_msg, align 4
  %buf.i141.i = alloca [3 x i8], align 1
  %msg.i142.i = alloca %struct.i2c_msg, align 4
  %b0.i118.i = alloca [1 x i8], align 1
  %b1.i119.i = alloca [2 x i8], align 2
  %msg.i120.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i103.i70 = alloca [3 x i8], align 1
  %msg.i104.i71 = alloca %struct.i2c_msg, align 4
  %buf.i94.i = alloca [3 x i8], align 1
  %msg.i95.i = alloca %struct.i2c_msg, align 4
  %b0.i71.i = alloca [1 x i8], align 1
  %b1.i72.i = alloca [2 x i8], align 2
  %msg.i73.i = alloca [2 x %struct.i2c_msg], align 4
  %b0.i48.i = alloca [1 x i8], align 1
  %b1.i49.i = alloca [2 x i8], align 2
  %msg.i50.i = alloca [2 x %struct.i2c_msg], align 4
  %b0.i.i72 = alloca [1 x i8], align 1
  %b1.i.i73 = alloca [2 x i8], align 2
  %msg.i.i74 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i131.i = alloca [3 x i8], align 1
  %msg.i132.i = alloca %struct.i2c_msg, align 4
  %buf.i117.i = alloca [3 x i8], align 1
  %msg.i118.i = alloca %struct.i2c_msg, align 4
  %buf.i103.i = alloca [3 x i8], align 1
  %msg.i104.i = alloca %struct.i2c_msg, align 4
  %buf.i89.i = alloca [3 x i8], align 1
  %msg.i90.i = alloca %struct.i2c_msg, align 4
  %buf.i75.i = alloca [3 x i8], align 1
  %msg.i76.i = alloca %struct.i2c_msg, align 4
  %buf.i61.i = alloca [3 x i8], align 1
  %msg.i62.i = alloca %struct.i2c_msg, align 4
  %buf.i47.i = alloca [3 x i8], align 1
  %msg.i48.i = alloca %struct.i2c_msg, align 4
  %buf.i38.i = alloca [3 x i8], align 1
  %msg.i39.i = alloca %struct.i2c_msg, align 4
  %b0.i.i = alloca [1 x i8], align 1
  %b1.i.i = alloca [2 x i8], align 2
  %msg.i.i55 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i15.i = alloca [3 x i8], align 1
  %msg.i16.i = alloca %struct.i2c_msg, align 4
  %buf.i1.i = alloca [3 x i8], align 1
  %msg.i2.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [3 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dtv_property_cache, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %4) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call fastcc void @s5h1409_softreset(ptr noundef %fe)
  %5 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dtv_property_cache, align 4
  %current_frequency = getelementptr inbounds %struct.s5h1409_state, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %current_frequency to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %current_frequency, align 4
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %modulation, align 4
  %10 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %demodulator_priv, align 4
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %do.end.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %9) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end.if.end.i_crit_edge
  %13 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %9, label %sw.default.i [
    i32 7, label %sw.bb.i
    i32 3, label %if.end.i.sw.bb13.i_crit_edge
    i32 5, label %if.end.i.sw.bb13.i_crit_edge101
    i32 6, label %if.end.i.sw.bb13.i_crit_edge102
  ]

if.end.i.sw.bb13.i_crit_edge102:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i

if.end.i.sw.bb13.i_crit_edge101:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i

if.end.i.sw.bb13.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i

sw.bb.i:                                          ; preds = %if.end.i
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool1.not.i = icmp eq i32 %14, 0
  br i1 %tobool1.not.i, label %sw.bb.i.if.end8.i_crit_edge, label %do.end5.i

sw.bb.i.if.end8.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

do.end5.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25) #11
  br label %if.end8.i

if.end8.i:                                        ; preds = %do.end5.i, %sw.bb.i.if.end8.i_crit_edge
  %if_freq.i = getelementptr inbounds %struct.s5h1409_state, ptr %11, i32 0, i32 5
  %15 = ptrtoint ptr %if_freq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %if_freq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5380, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 5380
  br i1 %cmp.not.i, label %if.end8.i.if.end11.i_crit_edge, label %if.then9.i

if.end8.i.if.end11.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @s5h1409_set_if_freq(ptr noundef %fe, i32 noundef 5380) #7
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.end8.i.if.end11.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i) #7
  %17 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 1
  %18 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -12, ptr %buf.i.i, align 1
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %17, align 1
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %22 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 262143, ptr %22, align 4
  %config.i.i = getelementptr inbounds %struct.s5h1409_state, ptr %11, i32 0, i32 1
  %24 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %config.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 2
  %conv5.i.i = zext i8 %27 to i16
  %28 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv5.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %flags.i.i, align 2
  %buf6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %buf6.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %buf.i.i, ptr %buf6.i.i, align 4
  %31 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %11, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %if.end11.i.s5h1409_writereg.exit.i_crit_edge, label %do.end.i.i

if.end11.i.s5h1409_writereg.exit.i_crit_edge:     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit.i

do.end.i.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 244, i32 noundef 0, i32 noundef %call.i.i) #11
  br label %s5h1409_writereg.exit.i

s5h1409_writereg.exit.i:                          ; preds = %do.end.i.i, %if.end11.i.s5h1409_writereg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #7
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %if.end.i.sw.bb13.i_crit_edge, %if.end.i.sw.bb13.i_crit_edge101, %if.end.i.sw.bb13.i_crit_edge102
  %33 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool14.not.i = icmp eq i32 %33, 0
  br i1 %tobool14.not.i, label %sw.bb13.i.if.end21.i_crit_edge, label %do.end18.i

sw.bb13.i.if.end21.i_crit_edge:                   ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

do.end18.i:                                       ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #9
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.25) #11
  br label %if.end21.i

if.end21.i:                                       ; preds = %do.end18.i, %sw.bb13.i.if.end21.i_crit_edge
  %if_freq22.i = getelementptr inbounds %struct.s5h1409_state, ptr %11, i32 0, i32 5
  %34 = ptrtoint ptr %if_freq22.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %if_freq22.i, align 4
  %config.i = getelementptr inbounds %struct.s5h1409_state, ptr %11, i32 0, i32 1
  %36 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %config.i, align 4
  %qam_if.i = getelementptr inbounds %struct.s5h1409_config, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %qam_if.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %qam_if.i, align 2
  %conv.i = zext i16 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv.i)
  %cmp23.not.i = icmp eq i32 %35, %conv.i
  br i1 %cmp23.not.i, label %if.end21.i.if.end30.i_crit_edge, label %if.then25.i

if.end21.i.if.end30.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

if.then25.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @s5h1409_set_if_freq(ptr noundef %fe, i32 noundef %conv.i) #7
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then25.i, %if.end21.i.if.end30.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i1.i) #7
  %40 = getelementptr inbounds [3 x i8], ptr %buf.i1.i, i32 0, i32 1
  %41 = getelementptr inbounds [3 x i8], ptr %buf.i1.i, i32 0, i32 2
  %42 = ptrtoint ptr %buf.i1.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -12, ptr %buf.i1.i, align 1
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %40, align 1
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %41, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2.i) #7
  %45 = getelementptr inbounds i8, ptr %msg.i2.i, i32 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 262143, ptr %45, align 4
  %47 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %config.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 2
  %conv5.i4.i = zext i8 %50 to i16
  %51 = ptrtoint ptr %msg.i2.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv5.i4.i, ptr %msg.i2.i, align 4
  %flags.i5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 1
  %52 = ptrtoint ptr %flags.i5.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %flags.i5.i, align 2
  %buf6.i7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 3
  %53 = ptrtoint ptr %buf6.i7.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %buf.i1.i, ptr %buf6.i7.i, align 4
  %54 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %11, align 4
  %call.i8.i = call i32 @i2c_transfer(ptr noundef %55, ptr noundef nonnull %msg.i2.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i8.i)
  %cmp.not.i9.i = icmp eq i32 %call.i8.i, 1
  br i1 %cmp.not.i9.i, label %if.end30.i.s5h1409_writereg.exit14.i_crit_edge, label %do.end.i11.i

if.end30.i.s5h1409_writereg.exit14.i_crit_edge:   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit14.i

do.end.i11.i:                                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 244, i32 noundef 1, i32 noundef %call.i8.i) #11
  br label %s5h1409_writereg.exit14.i

s5h1409_writereg.exit14.i:                        ; preds = %do.end.i11.i, %if.end30.i.s5h1409_writereg.exit14.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i1.i) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i15.i) #7
  %56 = getelementptr inbounds [3 x i8], ptr %buf.i15.i, i32 0, i32 1
  %57 = getelementptr inbounds [3 x i8], ptr %buf.i15.i, i32 0, i32 2
  %58 = ptrtoint ptr %buf.i15.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -123, ptr %buf.i15.i, align 1
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %56, align 1
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 16, ptr %57, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i16.i) #7
  %61 = getelementptr inbounds i8, ptr %msg.i16.i, i32 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 262143, ptr %61, align 4
  %63 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %config.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %64, align 2
  %conv5.i18.i = zext i8 %66 to i16
  %67 = ptrtoint ptr %msg.i16.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv5.i18.i, ptr %msg.i16.i, align 4
  %flags.i19.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i16.i, i32 0, i32 1
  %68 = ptrtoint ptr %flags.i19.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %flags.i19.i, align 2
  %buf6.i21.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i16.i, i32 0, i32 3
  %69 = ptrtoint ptr %buf6.i21.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %buf.i15.i, ptr %buf6.i21.i, align 4
  %70 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %11, align 4
  %call.i22.i = call i32 @i2c_transfer(ptr noundef %71, ptr noundef nonnull %msg.i16.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i22.i)
  %cmp.not.i23.i = icmp eq i32 %call.i22.i, 1
  br i1 %cmp.not.i23.i, label %s5h1409_writereg.exit14.i.s5h1409_writereg.exit28.i_crit_edge, label %do.end.i25.i

s5h1409_writereg.exit14.i.s5h1409_writereg.exit28.i_crit_edge: ; preds = %s5h1409_writereg.exit14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit28.i

do.end.i25.i:                                     ; preds = %s5h1409_writereg.exit14.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 133, i32 noundef 272, i32 noundef %call.i22.i) #11
  br label %s5h1409_writereg.exit28.i

s5h1409_writereg.exit28.i:                        ; preds = %do.end.i25.i, %s5h1409_writereg.exit14.i.s5h1409_writereg.exit28.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i16.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i15.i) #7
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end.i
  %72 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool33.not.i = icmp eq i32 %72, 0
  br i1 %tobool33.not.i, label %sw.default.i.s5h1409_enable_modulation.exit_crit_edge, label %do.end37.i

sw.default.i.s5h1409_enable_modulation.exit_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_enable_modulation.exit

do.end37.i:                                       ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  %call39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.25) #11
  br label %s5h1409_enable_modulation.exit

sw.epilog.i:                                      ; preds = %s5h1409_writereg.exit28.i, %s5h1409_writereg.exit.i
  %current_modulation.i = getelementptr inbounds %struct.s5h1409_state, ptr %11, i32 0, i32 3
  %73 = ptrtoint ptr %current_modulation.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %9, ptr %current_modulation.i, align 4
  call fastcc void @s5h1409_softreset(ptr noundef %fe) #7
  br label %s5h1409_enable_modulation.exit

s5h1409_enable_modulation.exit:                   ; preds = %sw.epilog.i, %do.end37.i, %sw.default.i.s5h1409_enable_modulation.exit_crit_edge
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %74 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %set_params, align 4
  %tobool4.not = icmp eq ptr %75, null
  br i1 %tobool4.not, label %s5h1409_enable_modulation.exit.if.end25_crit_edge, label %if.then5

s5h1409_enable_modulation.exit.if.end25_crit_edge: ; preds = %s5h1409_enable_modulation.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then5:                                         ; preds = %s5h1409_enable_modulation.exit
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %76 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool7.not = icmp eq ptr %77, null
  br i1 %tobool7.not, label %if.then5.if.end12_crit_edge, label %if.then8

if.then5.if.end12_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = call i32 %77(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.then5.if.end12_crit_edge
  %78 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %set_params, align 4
  %call16 = call i32 %79(ptr noundef %fe) #7
  %80 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool19.not = icmp eq ptr %81, null
  br i1 %tobool19.not, label %if.end12.if.end25_crit_edge, label %if.then20

if.end12.if.end25_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then20:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call23 = call i32 %81(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.end12.if.end25_crit_edge, %s5h1409_enable_modulation.exit.if.end25_crit_edge
  call fastcc void @s5h1409_softreset(ptr noundef %fe)
  %current_modulation = getelementptr inbounds %struct.s5h1409_state, ptr %1, i32 0, i32 3
  %82 = ptrtoint ptr %current_modulation to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %current_modulation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %83)
  %cmp.not = icmp eq i32 %83, 7
  br i1 %cmp.not, label %if.end25.if.end32_crit_edge, label %if.then27

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then27:                                        ; preds = %if.end25
  %config = getelementptr inbounds %struct.s5h1409_state, ptr %1, i32 0, i32 1
  %84 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %config, align 4
  %hvr1600_opt = getelementptr inbounds %struct.s5h1409_config, ptr %85, i32 0, i32 7
  %86 = ptrtoint ptr %hvr1600_opt to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %hvr1600_opt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %87)
  %cmp28 = icmp eq i8 %87, 1
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @s5h1409_set_qam_interleave_mode(ptr noundef %fe)
  call fastcc void @s5h1409_set_qam_amhum_mode(ptr noundef %fe)
  br label %if.end32

if.else:                                          ; preds = %if.then27
  %88 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %demodulator_priv, align 4
  %is_qam_locked.i = getelementptr inbounds %struct.s5h1409_state, ptr %89, i32 0, i32 6
  %90 = ptrtoint ptr %is_qam_locked.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %is_qam_locked.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.not.i57 = icmp eq i32 %91, 0
  br i1 %tobool.not.i57, label %if.end.i64, label %if.else.s5h1409_set_qam_amhum_mode_legacy.exit_crit_edge

if.else.s5h1409_set_qam_amhum_mode_legacy.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_set_qam_amhum_mode_legacy.exit

if.end.i64:                                       ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i.i) #7
  %92 = ptrtoint ptr %b0.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -16, ptr %b0.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i.i) #7
  %93 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 0, ptr %b1.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i55) #7
  %94 = getelementptr inbounds i8, ptr %msg.i.i55, i32 4
  %95 = call ptr @memset(ptr %94, i32 255, i32 16)
  %config.i.i58 = getelementptr inbounds %struct.s5h1409_state, ptr %89, i32 0, i32 1
  %96 = ptrtoint ptr %config.i.i58 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %config.i.i58, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %97, align 2
  %conv.i.i = zext i8 %99 to i16
  %100 = ptrtoint ptr %msg.i.i55 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %conv.i.i, ptr %msg.i.i55, align 4
  %flags.i.i59 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i55, i32 0, i32 1
  %101 = ptrtoint ptr %flags.i.i59 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 0, ptr %flags.i.i59, align 2
  %102 = ptrtoint ptr %94 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 1, ptr %94, align 4
  %buf.i.i60 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i55, i32 0, i32 3
  %103 = ptrtoint ptr %buf.i.i60 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %b0.i.i, ptr %buf.i.i60, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i55, i32 1
  %104 = load i8, ptr %97, align 2
  %conv5.i.i61 = zext i8 %104 to i16
  %105 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv5.i.i61, ptr %arrayinit.element.i.i, align 4
  %flags6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i55, i32 1, i32 1
  %106 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 1, ptr %flags6.i.i, align 2
  %len7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i55, i32 1, i32 2
  %107 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 2, ptr %len7.i.i, align 4
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i55, i32 1, i32 3
  %108 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %b1.i.i, ptr %buf8.i.i, align 4
  %109 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %89, align 4
  %call.i.i62 = call i32 @i2c_transfer(ptr noundef %110, ptr noundef nonnull %msg.i.i55, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i62)
  %cmp.not.i.i63 = icmp eq i32 %call.i.i62, 2
  br i1 %cmp.not.i.i63, label %if.end.i64.s5h1409_readreg.exit.i_crit_edge, label %do.end.i.i65

if.end.i64.s5h1409_readreg.exit.i_crit_edge:      ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_readreg.exit.i

do.end.i.i65:                                     ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i.i62) #11
  br label %s5h1409_readreg.exit.i

s5h1409_readreg.exit.i:                           ; preds = %do.end.i.i65, %if.end.i64.s5h1409_readreg.exit.i_crit_edge
  %111 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %b1.i.i, align 2
  %arrayidx14.i.i = getelementptr inbounds [2 x i8], ptr %b1.i.i, i32 0, i32 1
  %113 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx14.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i55) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i.i) #7
  %115 = and i8 %112, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool1.not.i66 = icmp eq i8 %115, 0
  br i1 %tobool1.not.i66, label %if.else19.i, label %if.then2.i

if.then2.i:                                       ; preds = %s5h1409_readreg.exit.i
  %116 = ptrtoint ptr %is_qam_locked.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 1, ptr %is_qam_locked.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i38.i) #7
  %117 = getelementptr inbounds [3 x i8], ptr %buf.i38.i, i32 0, i32 1
  %118 = getelementptr inbounds [3 x i8], ptr %buf.i38.i, i32 0, i32 2
  %119 = ptrtoint ptr %buf.i38.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 -106, ptr %buf.i38.i, align 1
  %120 = ptrtoint ptr %117 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %117, align 1
  %121 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 12, ptr %118, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i39.i) #7
  %122 = getelementptr inbounds i8, ptr %msg.i39.i, i32 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 262143, ptr %122, align 4
  %124 = ptrtoint ptr %config.i.i58 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %config.i.i58, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %125, align 2
  %conv5.i41.i = zext i8 %127 to i16
  %128 = ptrtoint ptr %msg.i39.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %conv5.i41.i, ptr %msg.i39.i, align 4
  %flags.i42.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39.i, i32 0, i32 1
  %129 = ptrtoint ptr %flags.i42.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 0, ptr %flags.i42.i, align 2
  %buf6.i.i67 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39.i, i32 0, i32 3
  %130 = ptrtoint ptr %buf6.i.i67 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %buf.i38.i, ptr %buf6.i.i67, align 4
  %131 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %89, align 4
  %call.i44.i = call i32 @i2c_transfer(ptr noundef %132, ptr noundef nonnull %msg.i39.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i44.i)
  %cmp.not.i45.i = icmp eq i32 %call.i44.i, 1
  br i1 %cmp.not.i45.i, label %if.then2.i.s5h1409_writereg.exit.i69_crit_edge, label %do.end.i46.i

if.then2.i.s5h1409_writereg.exit.i69_crit_edge:   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit.i69

do.end.i46.i:                                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i.i68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 150, i32 noundef 12, i32 noundef %call.i44.i) #11
  br label %s5h1409_writereg.exit.i69

s5h1409_writereg.exit.i69:                        ; preds = %do.end.i46.i, %if.then2.i.s5h1409_writereg.exit.i69_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i39.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i38.i) #7
  %133 = add i8 %114, -105
  call void @__sanitizer_cov_trace_const_cmp1(i8 -49, i8 %133)
  %134 = icmp ult i8 %133, -49
  br i1 %134, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %s5h1409_writereg.exit.i69
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i47.i) #7
  %135 = getelementptr inbounds [3 x i8], ptr %buf.i47.i, i32 0, i32 1
  %136 = getelementptr inbounds [3 x i8], ptr %buf.i47.i, i32 0, i32 2
  %137 = ptrtoint ptr %buf.i47.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 -109, ptr %buf.i47.i, align 1
  %138 = ptrtoint ptr %135 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 51, ptr %135, align 1
  %139 = ptrtoint ptr %136 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 50, ptr %136, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i48.i) #7
  %140 = getelementptr inbounds i8, ptr %msg.i48.i, i32 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 262143, ptr %140, align 4
  %142 = ptrtoint ptr %config.i.i58 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %config.i.i58, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %143, align 2
  %conv5.i50.i = zext i8 %145 to i16
  %146 = ptrtoint ptr %msg.i48.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %conv5.i50.i, ptr %msg.i48.i, align 4
  %flags.i51.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48.i, i32 0, i32 1
  %147 = ptrtoint ptr %flags.i51.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 0, ptr %flags.i51.i, align 2
  %buf6.i53.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48.i, i32 0, i32 3
  %148 = ptrtoint ptr %buf6.i53.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %buf.i47.i, ptr %buf6.i53.i, align 4
  %149 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %89, align 4
  %call.i54.i = call i32 @i2c_transfer(ptr noundef %150, ptr noundef nonnull %msg.i48.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i54.i)
  %cmp.not.i55.i = icmp eq i32 %call.i54.i, 1
  br i1 %cmp.not.i55.i, label %if.then13.i.s5h1409_writereg.exit60.i_crit_edge, label %do.end.i57.i

if.then13.i.s5h1409_writereg.exit60.i_crit_edge:  ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit60.i

do.end.i57.i:                                     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i56.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 147, i32 noundef 13106, i32 noundef %call.i54.i) #11
  br label %s5h1409_writereg.exit60.i

s5h1409_writereg.exit60.i:                        ; preds = %do.end.i57.i, %if.then13.i.s5h1409_writereg.exit60.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i48.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i47.i) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i61.i) #7
  %151 = getelementptr inbounds [3 x i8], ptr %buf.i61.i, i32 0, i32 1
  %152 = getelementptr inbounds [3 x i8], ptr %buf.i61.i, i32 0, i32 2
  %153 = ptrtoint ptr %buf.i61.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 -98, ptr %buf.i61.i, align 1
  %154 = ptrtoint ptr %151 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 44, ptr %151, align 1
  %155 = ptrtoint ptr %152 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 55, ptr %152, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i62.i) #7
  %156 = getelementptr inbounds i8, ptr %msg.i62.i, i32 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 262143, ptr %156, align 4
  %158 = ptrtoint ptr %config.i.i58 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %config.i.i58, align 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %159, align 2
  %conv5.i64.i = zext i8 %161 to i16
  %162 = ptrtoint ptr %msg.i62.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %conv5.i64.i, ptr %msg.i62.i, align 4
  %flags.i65.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62.i, i32 0, i32 1
  %163 = ptrtoint ptr %flags.i65.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 0, ptr %flags.i65.i, align 2
  %buf6.i67.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62.i, i32 0, i32 3
  %164 = ptrtoint ptr %buf6.i67.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %buf.i61.i, ptr %buf6.i67.i, align 4
  %165 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %89, align 4
  %call.i68.i = call i32 @i2c_transfer(ptr noundef %166, ptr noundef nonnull %msg.i62.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i68.i)
  %cmp.not.i69.i = icmp eq i32 %call.i68.i, 1
  br i1 %cmp.not.i69.i, label %s5h1409_writereg.exit60.i.s5h1409_writereg.exit74.i_crit_edge, label %do.end.i71.i

s5h1409_writereg.exit60.i.s5h1409_writereg.exit74.i_crit_edge: ; preds = %s5h1409_writereg.exit60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit74.i

do.end.i71.i:                                     ; preds = %s5h1409_writereg.exit60.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i70.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 158, i32 noundef 11319, i32 noundef %call.i68.i) #11
  br label %s5h1409_writereg.exit74.i

s5h1409_writereg.exit74.i:                        ; preds = %do.end.i71.i, %s5h1409_writereg.exit60.i.s5h1409_writereg.exit74.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i62.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i61.i) #7
  br label %s5h1409_set_qam_amhum_mode_legacy.exit

if.else.i:                                        ; preds = %s5h1409_writereg.exit.i69
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i75.i) #7
  %167 = getelementptr inbounds [3 x i8], ptr %buf.i75.i, i32 0, i32 1
  %168 = getelementptr inbounds [3 x i8], ptr %buf.i75.i, i32 0, i32 2
  %169 = ptrtoint ptr %buf.i75.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 -109, ptr %buf.i75.i, align 1
  %170 = ptrtoint ptr %167 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 49, ptr %167, align 1
  %171 = ptrtoint ptr %168 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 48, ptr %168, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i76.i) #7
  %172 = getelementptr inbounds i8, ptr %msg.i76.i, i32 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 262143, ptr %172, align 4
  %174 = ptrtoint ptr %config.i.i58 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %config.i.i58, align 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %175, align 2
  %conv5.i78.i = zext i8 %177 to i16
  %178 = ptrtoint ptr %msg.i76.i to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 %conv5.i78.i, ptr %msg.i76.i, align 4
  %flags.i79.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i76.i, i32 0, i32 1
  %179 = ptrtoint ptr %flags.i79.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 0, ptr %flags.i79.i, align 2
  %buf6.i81.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i76.i, i32 0, i32 3
  %180 = ptrtoint ptr %buf6.i81.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %buf.i75.i, ptr %buf6.i81.i, align 4
  %181 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %89, align 4
  %call.i82.i = call i32 @i2c_transfer(ptr noundef %182, ptr noundef nonnull %msg.i76.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i82.i)
  %cmp.not.i83.i = icmp eq i32 %call.i82.i, 1
  br i1 %cmp.not.i83.i, label %if.else.i.s5h1409_writereg.exit88.i_crit_edge, label %do.end.i85.i

if.else.i.s5h1409_writereg.exit88.i_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit88.i

do.end.i85.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i84.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 147, i32 noundef 12592, i32 noundef %call.i82.i) #11
  br label %s5h1409_writereg.exit88.i

s5h1409_writereg.exit88.i:                        ; preds = %do.end.i85.i, %if.else.i.s5h1409_writereg.exit88.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i76.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i75.i) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i89.i) #7
  %183 = getelementptr inbounds [3 x i8], ptr %buf.i89.i, i32 0, i32 1
  %184 = getelementptr inbounds [3 x i8], ptr %buf.i89.i, i32 0, i32 2
  %185 = ptrtoint ptr %buf.i89.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 -98, ptr %buf.i89.i, align 1
  %186 = ptrtoint ptr %183 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 40, ptr %183, align 1
  %187 = ptrtoint ptr %184 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 54, ptr %184, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i90.i) #7
  %188 = getelementptr inbounds i8, ptr %msg.i90.i, i32 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 262143, ptr %188, align 4
  %190 = ptrtoint ptr %config.i.i58 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %config.i.i58, align 4
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %191, align 2
  %conv5.i92.i = zext i8 %193 to i16
  %194 = ptrtoint ptr %msg.i90.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %conv5.i92.i, ptr %msg.i90.i, align 4
  %flags.i93.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i90.i, i32 0, i32 1
  %195 = ptrtoint ptr %flags.i93.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 0, ptr %flags.i93.i, align 2
  %buf6.i95.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i90.i, i32 0, i32 3
  %196 = ptrtoint ptr %buf6.i95.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %buf.i89.i, ptr %buf6.i95.i, align 4
  %197 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %89, align 4
  %call.i96.i = call i32 @i2c_transfer(ptr noundef %198, ptr noundef nonnull %msg.i90.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i96.i)
  %cmp.not.i97.i = icmp eq i32 %call.i96.i, 1
  br i1 %cmp.not.i97.i, label %s5h1409_writereg.exit88.i.s5h1409_writereg.exit102.i_crit_edge, label %do.end.i99.i

s5h1409_writereg.exit88.i.s5h1409_writereg.exit102.i_crit_edge: ; preds = %s5h1409_writereg.exit88.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit102.i

do.end.i99.i:                                     ; preds = %s5h1409_writereg.exit88.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i98.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 158, i32 noundef 10294, i32 noundef %call.i96.i) #11
  br label %s5h1409_writereg.exit102.i

s5h1409_writereg.exit102.i:                       ; preds = %do.end.i99.i, %s5h1409_writereg.exit88.i.s5h1409_writereg.exit102.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i90.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i89.i) #7
  br label %s5h1409_set_qam_amhum_mode_legacy.exit

if.else19.i:                                      ; preds = %s5h1409_readreg.exit.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i103.i) #7
  %199 = getelementptr inbounds [3 x i8], ptr %buf.i103.i, i32 0, i32 1
  %200 = getelementptr inbounds [3 x i8], ptr %buf.i103.i, i32 0, i32 2
  %201 = ptrtoint ptr %buf.i103.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 -106, ptr %buf.i103.i, align 1
  %202 = ptrtoint ptr %199 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 0, ptr %199, align 1
  %203 = ptrtoint ptr %200 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 8, ptr %200, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i104.i) #7
  %204 = getelementptr inbounds i8, ptr %msg.i104.i, i32 4
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 262143, ptr %204, align 4
  %206 = ptrtoint ptr %config.i.i58 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %config.i.i58, align 4
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %207, align 2
  %conv5.i106.i = zext i8 %209 to i16
  %210 = ptrtoint ptr %msg.i104.i to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 %conv5.i106.i, ptr %msg.i104.i, align 4
  %flags.i107.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104.i, i32 0, i32 1
  %211 = ptrtoint ptr %flags.i107.i to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 0, ptr %flags.i107.i, align 2
  %buf6.i109.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104.i, i32 0, i32 3
  %212 = ptrtoint ptr %buf6.i109.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %buf.i103.i, ptr %buf6.i109.i, align 4
  %213 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %89, align 4
  %call.i110.i = call i32 @i2c_transfer(ptr noundef %214, ptr noundef nonnull %msg.i104.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i110.i)
  %cmp.not.i111.i = icmp eq i32 %call.i110.i, 1
  br i1 %cmp.not.i111.i, label %if.else19.i.s5h1409_writereg.exit116.i_crit_edge, label %do.end.i113.i

if.else19.i.s5h1409_writereg.exit116.i_crit_edge: ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit116.i

do.end.i113.i:                                    ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i112.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 150, i32 noundef 8, i32 noundef %call.i110.i) #11
  br label %s5h1409_writereg.exit116.i

s5h1409_writereg.exit116.i:                       ; preds = %do.end.i113.i, %if.else19.i.s5h1409_writereg.exit116.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i104.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i103.i) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i117.i) #7
  %215 = getelementptr inbounds [3 x i8], ptr %buf.i117.i, i32 0, i32 1
  %216 = getelementptr inbounds [3 x i8], ptr %buf.i117.i, i32 0, i32 2
  %217 = ptrtoint ptr %buf.i117.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 -109, ptr %buf.i117.i, align 1
  %218 = ptrtoint ptr %215 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 51, ptr %215, align 1
  %219 = ptrtoint ptr %216 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 50, ptr %216, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i118.i) #7
  %220 = getelementptr inbounds i8, ptr %msg.i118.i, i32 4
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 262143, ptr %220, align 4
  %222 = ptrtoint ptr %config.i.i58 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %config.i.i58, align 4
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %223, align 2
  %conv5.i120.i = zext i8 %225 to i16
  %226 = ptrtoint ptr %msg.i118.i to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 %conv5.i120.i, ptr %msg.i118.i, align 4
  %flags.i121.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i118.i, i32 0, i32 1
  %227 = ptrtoint ptr %flags.i121.i to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 0, ptr %flags.i121.i, align 2
  %buf6.i123.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i118.i, i32 0, i32 3
  %228 = ptrtoint ptr %buf6.i123.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %buf.i117.i, ptr %buf6.i123.i, align 4
  %229 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %89, align 4
  %call.i124.i = call i32 @i2c_transfer(ptr noundef %230, ptr noundef nonnull %msg.i118.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i124.i)
  %cmp.not.i125.i = icmp eq i32 %call.i124.i, 1
  br i1 %cmp.not.i125.i, label %s5h1409_writereg.exit116.i.s5h1409_writereg.exit130.i_crit_edge, label %do.end.i127.i

s5h1409_writereg.exit116.i.s5h1409_writereg.exit130.i_crit_edge: ; preds = %s5h1409_writereg.exit116.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit130.i

do.end.i127.i:                                    ; preds = %s5h1409_writereg.exit116.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i126.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 147, i32 noundef 13106, i32 noundef %call.i124.i) #11
  br label %s5h1409_writereg.exit130.i

s5h1409_writereg.exit130.i:                       ; preds = %do.end.i127.i, %s5h1409_writereg.exit116.i.s5h1409_writereg.exit130.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i118.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i117.i) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i131.i) #7
  %231 = getelementptr inbounds [3 x i8], ptr %buf.i131.i, i32 0, i32 1
  %232 = getelementptr inbounds [3 x i8], ptr %buf.i131.i, i32 0, i32 2
  %233 = ptrtoint ptr %buf.i131.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 -98, ptr %buf.i131.i, align 1
  %234 = ptrtoint ptr %231 to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 44, ptr %231, align 1
  %235 = ptrtoint ptr %232 to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 55, ptr %232, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i132.i) #7
  %236 = getelementptr inbounds i8, ptr %msg.i132.i, i32 4
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 262143, ptr %236, align 4
  %238 = ptrtoint ptr %config.i.i58 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %config.i.i58, align 4
  %240 = ptrtoint ptr %239 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %239, align 2
  %conv5.i134.i = zext i8 %241 to i16
  %242 = ptrtoint ptr %msg.i132.i to i32
  call void @__asan_store2_noabort(i32 %242)
  store i16 %conv5.i134.i, ptr %msg.i132.i, align 4
  %flags.i135.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i132.i, i32 0, i32 1
  %243 = ptrtoint ptr %flags.i135.i to i32
  call void @__asan_store2_noabort(i32 %243)
  store i16 0, ptr %flags.i135.i, align 2
  %buf6.i137.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i132.i, i32 0, i32 3
  %244 = ptrtoint ptr %buf6.i137.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %buf.i131.i, ptr %buf6.i137.i, align 4
  %245 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %89, align 4
  %call.i138.i = call i32 @i2c_transfer(ptr noundef %246, ptr noundef nonnull %msg.i132.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i138.i)
  %cmp.not.i139.i = icmp eq i32 %call.i138.i, 1
  br i1 %cmp.not.i139.i, label %s5h1409_writereg.exit130.i.s5h1409_writereg.exit144.i_crit_edge, label %do.end.i141.i

s5h1409_writereg.exit130.i.s5h1409_writereg.exit144.i_crit_edge: ; preds = %s5h1409_writereg.exit130.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit144.i

do.end.i141.i:                                    ; preds = %s5h1409_writereg.exit130.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i140.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 158, i32 noundef 11319, i32 noundef %call.i138.i) #11
  br label %s5h1409_writereg.exit144.i

s5h1409_writereg.exit144.i:                       ; preds = %do.end.i141.i, %s5h1409_writereg.exit130.i.s5h1409_writereg.exit144.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i132.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i131.i) #7
  br label %s5h1409_set_qam_amhum_mode_legacy.exit

s5h1409_set_qam_amhum_mode_legacy.exit:           ; preds = %s5h1409_writereg.exit144.i, %s5h1409_writereg.exit102.i, %s5h1409_writereg.exit74.i, %if.else.s5h1409_set_qam_amhum_mode_legacy.exit_crit_edge
  %247 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i.i72) #7
  %249 = ptrtoint ptr %b0.i.i72 to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 -15, ptr %b0.i.i72, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i.i73) #7
  %250 = ptrtoint ptr %b1.i.i73 to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 0, ptr %b1.i.i73, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i74) #7
  %251 = getelementptr inbounds i8, ptr %msg.i.i74, i32 4
  %252 = call ptr @memset(ptr %251, i32 255, i32 16)
  %config.i.i76 = getelementptr inbounds %struct.s5h1409_state, ptr %248, i32 0, i32 1
  %253 = ptrtoint ptr %config.i.i76 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %config.i.i76, align 4
  %255 = ptrtoint ptr %254 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %254, align 2
  %conv.i.i77 = zext i8 %256 to i16
  %257 = ptrtoint ptr %msg.i.i74 to i32
  call void @__asan_store2_noabort(i32 %257)
  store i16 %conv.i.i77, ptr %msg.i.i74, align 4
  %flags.i.i78 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i74, i32 0, i32 1
  %258 = ptrtoint ptr %flags.i.i78 to i32
  call void @__asan_store2_noabort(i32 %258)
  store i16 0, ptr %flags.i.i78, align 2
  %259 = ptrtoint ptr %251 to i32
  call void @__asan_store2_noabort(i32 %259)
  store i16 1, ptr %251, align 4
  %buf.i.i79 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i74, i32 0, i32 3
  %260 = ptrtoint ptr %buf.i.i79 to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr %b0.i.i72, ptr %buf.i.i79, align 4
  %arrayinit.element.i.i80 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i74, i32 1
  %261 = load i8, ptr %254, align 2
  %conv5.i.i81 = zext i8 %261 to i16
  %262 = ptrtoint ptr %arrayinit.element.i.i80 to i32
  call void @__asan_store2_noabort(i32 %262)
  store i16 %conv5.i.i81, ptr %arrayinit.element.i.i80, align 4
  %flags6.i.i82 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i74, i32 1, i32 1
  %263 = ptrtoint ptr %flags6.i.i82 to i32
  call void @__asan_store2_noabort(i32 %263)
  store i16 1, ptr %flags6.i.i82, align 2
  %len7.i.i83 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i74, i32 1, i32 2
  %264 = ptrtoint ptr %len7.i.i83 to i32
  call void @__asan_store2_noabort(i32 %264)
  store i16 2, ptr %len7.i.i83, align 4
  %buf8.i.i84 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i74, i32 1, i32 3
  %265 = ptrtoint ptr %buf8.i.i84 to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %b1.i.i73, ptr %buf8.i.i84, align 4
  %266 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %248, align 4
  %call.i.i85 = call i32 @i2c_transfer(ptr noundef %267, ptr noundef nonnull %msg.i.i74, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i85)
  %cmp.not.i.i86 = icmp eq i32 %call.i.i85, 2
  br i1 %cmp.not.i.i86, label %s5h1409_set_qam_amhum_mode_legacy.exit.s5h1409_readreg.exit.i90_crit_edge, label %do.end.i.i88

s5h1409_set_qam_amhum_mode_legacy.exit.s5h1409_readreg.exit.i90_crit_edge: ; preds = %s5h1409_set_qam_amhum_mode_legacy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_readreg.exit.i90

do.end.i.i88:                                     ; preds = %s5h1409_set_qam_amhum_mode_legacy.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i.i87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i.i85) #11
  br label %s5h1409_readreg.exit.i90

s5h1409_readreg.exit.i90:                         ; preds = %do.end.i.i88, %s5h1409_set_qam_amhum_mode_legacy.exit.s5h1409_readreg.exit.i90_crit_edge
  %268 = ptrtoint ptr %b1.i.i73 to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %b1.i.i73, align 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i74) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i.i73) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i.i72) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %269)
  %tobool.not.i89 = icmp sgt i8 %269, -1
  %qam_state20.i = getelementptr inbounds %struct.s5h1409_state, ptr %248, i32 0, i32 7
  %270 = ptrtoint ptr %qam_state20.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %qam_state20.i, align 4
  br i1 %tobool.not.i89, label %if.else.i100, label %if.then.i

if.then.i:                                        ; preds = %s5h1409_readreg.exit.i90
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %271)
  %cmp.not.i91 = icmp eq i8 %271, 2
  br i1 %cmp.not.i91, label %if.then.i.if.end32_crit_edge, label %if.then3.i

if.then.i.if.end32_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then3.i:                                       ; preds = %if.then.i
  %272 = ptrtoint ptr %qam_state20.i to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 2, ptr %qam_state20.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i48.i) #7
  %273 = ptrtoint ptr %b0.i48.i to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 -78, ptr %b0.i48.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i49.i) #7
  %274 = ptrtoint ptr %b1.i49.i to i32
  call void @__asan_store2_noabort(i32 %274)
  store i16 0, ptr %b1.i49.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i50.i) #7
  %275 = getelementptr inbounds i8, ptr %msg.i50.i, i32 4
  %276 = call ptr @memset(ptr %275, i32 255, i32 16)
  %277 = ptrtoint ptr %config.i.i76 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %config.i.i76, align 4
  %279 = ptrtoint ptr %278 to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %278, align 2
  %conv.i52.i = zext i8 %280 to i16
  %281 = ptrtoint ptr %msg.i50.i to i32
  call void @__asan_store2_noabort(i32 %281)
  store i16 %conv.i52.i, ptr %msg.i50.i, align 4
  %flags.i53.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50.i, i32 0, i32 1
  %282 = ptrtoint ptr %flags.i53.i to i32
  call void @__asan_store2_noabort(i32 %282)
  store i16 0, ptr %flags.i53.i, align 2
  %283 = ptrtoint ptr %275 to i32
  call void @__asan_store2_noabort(i32 %283)
  store i16 1, ptr %275, align 4
  %buf.i55.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50.i, i32 0, i32 3
  %284 = ptrtoint ptr %buf.i55.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr %b0.i48.i, ptr %buf.i55.i, align 4
  %arrayinit.element.i56.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50.i, i32 1
  %285 = load i8, ptr %278, align 2
  %conv5.i57.i = zext i8 %285 to i16
  %286 = ptrtoint ptr %arrayinit.element.i56.i to i32
  call void @__asan_store2_noabort(i32 %286)
  store i16 %conv5.i57.i, ptr %arrayinit.element.i56.i, align 4
  %flags6.i58.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50.i, i32 1, i32 1
  %287 = ptrtoint ptr %flags6.i58.i to i32
  call void @__asan_store2_noabort(i32 %287)
  store i16 1, ptr %flags6.i58.i, align 2
  %len7.i59.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50.i, i32 1, i32 2
  %288 = ptrtoint ptr %len7.i59.i to i32
  call void @__asan_store2_noabort(i32 %288)
  store i16 2, ptr %len7.i59.i, align 4
  %buf8.i60.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50.i, i32 1, i32 3
  %289 = ptrtoint ptr %buf8.i60.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr %b1.i49.i, ptr %buf8.i60.i, align 4
  %290 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %248, align 4
  %call.i61.i = call i32 @i2c_transfer(ptr noundef %291, ptr noundef nonnull %msg.i50.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i61.i)
  %cmp.not.i62.i = icmp eq i32 %call.i61.i, 2
  br i1 %cmp.not.i62.i, label %if.then3.i.s5h1409_readreg.exit70.i_crit_edge, label %do.end.i64.i

if.then3.i.s5h1409_readreg.exit70.i_crit_edge:    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_readreg.exit70.i

do.end.i64.i:                                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i63.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i61.i) #11
  br label %s5h1409_readreg.exit70.i

s5h1409_readreg.exit70.i:                         ; preds = %do.end.i64.i, %if.then3.i.s5h1409_readreg.exit70.i_crit_edge
  %292 = ptrtoint ptr %b1.i49.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %b1.i49.i, align 2
  %conv13.i65.i = zext i8 %293 to i16
  %shl.i66.i = shl nuw nsw i16 %conv13.i65.i, 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i50.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i49.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i48.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i71.i) #7
  %294 = ptrtoint ptr %b0.i71.i to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 -83, ptr %b0.i71.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i72.i) #7
  %295 = ptrtoint ptr %b1.i72.i to i32
  call void @__asan_store2_noabort(i32 %295)
  store i16 0, ptr %b1.i72.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i73.i) #7
  %296 = getelementptr inbounds i8, ptr %msg.i73.i, i32 4
  %297 = call ptr @memset(ptr %296, i32 255, i32 16)
  %298 = ptrtoint ptr %config.i.i76 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %config.i.i76, align 4
  %300 = ptrtoint ptr %299 to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %299, align 2
  %conv.i75.i = zext i8 %301 to i16
  %302 = ptrtoint ptr %msg.i73.i to i32
  call void @__asan_store2_noabort(i32 %302)
  store i16 %conv.i75.i, ptr %msg.i73.i, align 4
  %flags.i76.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i73.i, i32 0, i32 1
  %303 = ptrtoint ptr %flags.i76.i to i32
  call void @__asan_store2_noabort(i32 %303)
  store i16 0, ptr %flags.i76.i, align 2
  %304 = ptrtoint ptr %296 to i32
  call void @__asan_store2_noabort(i32 %304)
  store i16 1, ptr %296, align 4
  %buf.i78.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i73.i, i32 0, i32 3
  %305 = ptrtoint ptr %buf.i78.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr %b0.i71.i, ptr %buf.i78.i, align 4
  %arrayinit.element.i79.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i73.i, i32 1
  %306 = load i8, ptr %299, align 2
  %conv5.i80.i = zext i8 %306 to i16
  %307 = ptrtoint ptr %arrayinit.element.i79.i to i32
  call void @__asan_store2_noabort(i32 %307)
  store i16 %conv5.i80.i, ptr %arrayinit.element.i79.i, align 4
  %flags6.i81.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i73.i, i32 1, i32 1
  %308 = ptrtoint ptr %flags6.i81.i to i32
  call void @__asan_store2_noabort(i32 %308)
  store i16 1, ptr %flags6.i81.i, align 2
  %len7.i82.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i73.i, i32 1, i32 2
  %309 = ptrtoint ptr %len7.i82.i to i32
  call void @__asan_store2_noabort(i32 %309)
  store i16 2, ptr %len7.i82.i, align 4
  %buf8.i83.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i73.i, i32 1, i32 3
  %310 = ptrtoint ptr %buf8.i83.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store ptr %b1.i72.i, ptr %buf8.i83.i, align 4
  %311 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %248, align 4
  %call.i84.i = call i32 @i2c_transfer(ptr noundef %312, ptr noundef nonnull %msg.i73.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i84.i)
  %cmp.not.i85.i = icmp eq i32 %call.i84.i, 2
  br i1 %cmp.not.i85.i, label %s5h1409_readreg.exit70.i.s5h1409_readreg.exit93.i_crit_edge, label %do.end.i87.i

s5h1409_readreg.exit70.i.s5h1409_readreg.exit93.i_crit_edge: ; preds = %s5h1409_readreg.exit70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_readreg.exit93.i

do.end.i87.i:                                     ; preds = %s5h1409_readreg.exit70.i
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i86.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i84.i) #11
  br label %s5h1409_readreg.exit93.i

s5h1409_readreg.exit93.i:                         ; preds = %do.end.i87.i, %s5h1409_readreg.exit70.i.s5h1409_readreg.exit93.i_crit_edge
  %313 = ptrtoint ptr %b1.i72.i to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %b1.i72.i, align 2
  %conv13.i88.i = zext i8 %314 to i16
  %shl.i89.i = shl nuw i16 %conv13.i88.i, 8
  %arrayidx14.i90.i = getelementptr inbounds [2 x i8], ptr %b1.i72.i, i32 0, i32 1
  %315 = ptrtoint ptr %arrayidx14.i90.i to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %arrayidx14.i90.i, align 1
  %conv15.i91.i = zext i8 %316 to i16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i73.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i72.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i71.i) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i94.i) #7
  %317 = getelementptr inbounds [3 x i8], ptr %buf.i94.i, i32 0, i32 1
  %318 = getelementptr inbounds [3 x i8], ptr %buf.i94.i, i32 0, i32 2
  %319 = ptrtoint ptr %buf.i94.i to i32
  call void @__asan_store1_noabort(i32 %319)
  store i8 -106, ptr %buf.i94.i, align 1
  %320 = ptrtoint ptr %317 to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 0, ptr %317, align 1
  %321 = ptrtoint ptr %318 to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 32, ptr %318, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i95.i) #7
  %322 = getelementptr inbounds i8, ptr %msg.i95.i, i32 4
  %323 = ptrtoint ptr %322 to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 262143, ptr %322, align 4
  %324 = ptrtoint ptr %config.i.i76 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %config.i.i76, align 4
  %326 = ptrtoint ptr %325 to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %325, align 2
  %conv5.i97.i = zext i8 %327 to i16
  %328 = ptrtoint ptr %msg.i95.i to i32
  call void @__asan_store2_noabort(i32 %328)
  store i16 %conv5.i97.i, ptr %msg.i95.i, align 4
  %flags.i98.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i95.i, i32 0, i32 1
  %329 = ptrtoint ptr %flags.i98.i to i32
  call void @__asan_store2_noabort(i32 %329)
  store i16 0, ptr %flags.i98.i, align 2
  %buf6.i.i92 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i95.i, i32 0, i32 3
  %330 = ptrtoint ptr %buf6.i.i92 to i32
  call void @__asan_store4_noabort(i32 %330)
  store ptr %buf.i94.i, ptr %buf6.i.i92, align 4
  %331 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %248, align 4
  %call.i100.i = call i32 @i2c_transfer(ptr noundef %332, ptr noundef nonnull %msg.i95.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i100.i)
  %cmp.not.i101.i = icmp eq i32 %call.i100.i, 1
  br i1 %cmp.not.i101.i, label %s5h1409_readreg.exit93.i.s5h1409_writereg.exit.i99_crit_edge, label %do.end.i102.i

s5h1409_readreg.exit93.i.s5h1409_writereg.exit.i99_crit_edge: ; preds = %s5h1409_readreg.exit93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit.i99

do.end.i102.i:                                    ; preds = %s5h1409_readreg.exit93.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i.i93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 150, i32 noundef 32, i32 noundef %call.i100.i) #11
  br label %s5h1409_writereg.exit.i99

s5h1409_writereg.exit.i99:                        ; preds = %do.end.i102.i, %s5h1409_readreg.exit93.i.s5h1409_writereg.exit.i99_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i95.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i94.i) #7
  %333 = and i16 %shl.i66.i, 3840
  %shl.i89.masked.i = and i16 %shl.i89.i, -4096
  %334 = or i16 %333, %conv15.i91.i
  %or47.i = or i16 %334, %shl.i89.masked.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i103.i70) #7
  %335 = getelementptr inbounds [3 x i8], ptr %buf.i103.i70, i32 0, i32 1
  %336 = getelementptr inbounds [3 x i8], ptr %buf.i103.i70, i32 0, i32 2
  %337 = ptrtoint ptr %buf.i103.i70 to i32
  call void @__asan_store1_noabort(i32 %337)
  store i8 -83, ptr %buf.i103.i70, align 1
  %338 = lshr i16 %or47.i, 8
  %conv1.i.i = trunc i16 %338 to i8
  %339 = ptrtoint ptr %335 to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 %conv1.i.i, ptr %335, align 1
  %340 = ptrtoint ptr %336 to i32
  call void @__asan_store1_noabort(i32 %340)
  store i8 %316, ptr %336, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i104.i71) #7
  %341 = getelementptr inbounds i8, ptr %msg.i104.i71, i32 4
  %342 = ptrtoint ptr %341 to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 262143, ptr %341, align 4
  %343 = ptrtoint ptr %config.i.i76 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %config.i.i76, align 4
  %345 = ptrtoint ptr %344 to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %344, align 2
  %conv5.i106.i94 = zext i8 %346 to i16
  %347 = ptrtoint ptr %msg.i104.i71 to i32
  call void @__asan_store2_noabort(i32 %347)
  store i16 %conv5.i106.i94, ptr %msg.i104.i71, align 4
  %flags.i107.i95 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104.i71, i32 0, i32 1
  %348 = ptrtoint ptr %flags.i107.i95 to i32
  call void @__asan_store2_noabort(i32 %348)
  store i16 0, ptr %flags.i107.i95, align 2
  %buf6.i109.i96 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104.i71, i32 0, i32 3
  %349 = ptrtoint ptr %buf6.i109.i96 to i32
  call void @__asan_store4_noabort(i32 %349)
  store ptr %buf.i103.i70, ptr %buf6.i109.i96, align 4
  %350 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %248, align 4
  %call.i110.i97 = call i32 @i2c_transfer(ptr noundef %351, ptr noundef nonnull %msg.i104.i71, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i110.i97)
  %cmp.not.i111.i98 = icmp eq i32 %call.i110.i97, 1
  br i1 %cmp.not.i111.i98, label %s5h1409_writereg.exit.i99.s5h1409_writereg.exit117.i_crit_edge, label %do.end.i114.i

s5h1409_writereg.exit.i99.s5h1409_writereg.exit117.i_crit_edge: ; preds = %s5h1409_writereg.exit.i99
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit117.i

do.end.i114.i:                                    ; preds = %s5h1409_writereg.exit.i99
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i112.i = zext i16 %or47.i to i32
  %call10.i113.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 173, i32 noundef %conv.i112.i, i32 noundef %call.i110.i97) #11
  br label %s5h1409_writereg.exit117.i

s5h1409_writereg.exit117.i:                       ; preds = %do.end.i114.i, %s5h1409_writereg.exit.i99.s5h1409_writereg.exit117.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i104.i71) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i103.i70) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i118.i) #7
  %352 = ptrtoint ptr %b0.i118.i to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 -85, ptr %b0.i118.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i119.i) #7
  %353 = ptrtoint ptr %b1.i119.i to i32
  call void @__asan_store2_noabort(i32 %353)
  store i16 0, ptr %b1.i119.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i120.i) #7
  %354 = getelementptr inbounds i8, ptr %msg.i120.i, i32 4
  %355 = call ptr @memset(ptr %354, i32 255, i32 16)
  %356 = ptrtoint ptr %config.i.i76 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %config.i.i76, align 4
  %358 = ptrtoint ptr %357 to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %357, align 2
  %conv.i122.i = zext i8 %359 to i16
  %360 = ptrtoint ptr %msg.i120.i to i32
  call void @__asan_store2_noabort(i32 %360)
  store i16 %conv.i122.i, ptr %msg.i120.i, align 4
  %flags.i123.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i120.i, i32 0, i32 1
  %361 = ptrtoint ptr %flags.i123.i to i32
  call void @__asan_store2_noabort(i32 %361)
  store i16 0, ptr %flags.i123.i, align 2
  %362 = ptrtoint ptr %354 to i32
  call void @__asan_store2_noabort(i32 %362)
  store i16 1, ptr %354, align 4
  %buf.i125.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i120.i, i32 0, i32 3
  %363 = ptrtoint ptr %buf.i125.i to i32
  call void @__asan_store4_noabort(i32 %363)
  store ptr %b0.i118.i, ptr %buf.i125.i, align 4
  %arrayinit.element.i126.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i120.i, i32 1
  %364 = load i8, ptr %357, align 2
  %conv5.i127.i = zext i8 %364 to i16
  %365 = ptrtoint ptr %arrayinit.element.i126.i to i32
  call void @__asan_store2_noabort(i32 %365)
  store i16 %conv5.i127.i, ptr %arrayinit.element.i126.i, align 4
  %flags6.i128.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i120.i, i32 1, i32 1
  %366 = ptrtoint ptr %flags6.i128.i to i32
  call void @__asan_store2_noabort(i32 %366)
  store i16 1, ptr %flags6.i128.i, align 2
  %len7.i129.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i120.i, i32 1, i32 2
  %367 = ptrtoint ptr %len7.i129.i to i32
  call void @__asan_store2_noabort(i32 %367)
  store i16 2, ptr %len7.i129.i, align 4
  %buf8.i130.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i120.i, i32 1, i32 3
  %368 = ptrtoint ptr %buf8.i130.i to i32
  call void @__asan_store4_noabort(i32 %368)
  store ptr %b1.i119.i, ptr %buf8.i130.i, align 4
  %369 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %248, align 4
  %call.i131.i = call i32 @i2c_transfer(ptr noundef %370, ptr noundef nonnull %msg.i120.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i131.i)
  %cmp.not.i132.i = icmp eq i32 %call.i131.i, 2
  br i1 %cmp.not.i132.i, label %s5h1409_writereg.exit117.i.s5h1409_readreg.exit140.i_crit_edge, label %do.end.i134.i

s5h1409_writereg.exit117.i.s5h1409_readreg.exit140.i_crit_edge: ; preds = %s5h1409_writereg.exit117.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_readreg.exit140.i

do.end.i134.i:                                    ; preds = %s5h1409_writereg.exit117.i
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i133.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i131.i) #11
  br label %s5h1409_readreg.exit140.i

s5h1409_readreg.exit140.i:                        ; preds = %do.end.i134.i, %s5h1409_writereg.exit117.i.s5h1409_readreg.exit140.i_crit_edge
  %371 = ptrtoint ptr %b1.i119.i to i32
  call void @__asan_load1_noabort(i32 %371)
  %372 = load i8, ptr %b1.i119.i, align 2
  %conv13.i135.i = zext i8 %372 to i16
  %shl.i136.i = shl nuw i16 %conv13.i135.i, 8
  %arrayidx14.i137.i = getelementptr inbounds [2 x i8], ptr %b1.i119.i, i32 0, i32 1
  %373 = ptrtoint ptr %arrayidx14.i137.i to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %arrayidx14.i137.i, align 1
  %conv15.i138.i = zext i8 %374 to i16
  %or.i139.i = or i16 %shl.i136.i, %conv15.i138.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i120.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i119.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i118.i) #7
  %375 = and i16 %or.i139.i, -4098
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i141.i) #7
  %376 = getelementptr inbounds [3 x i8], ptr %buf.i141.i, i32 0, i32 1
  %377 = getelementptr inbounds [3 x i8], ptr %buf.i141.i, i32 0, i32 2
  %378 = ptrtoint ptr %buf.i141.i to i32
  call void @__asan_store1_noabort(i32 %378)
  store i8 -85, ptr %buf.i141.i, align 1
  %379 = lshr i16 %375, 8
  %conv1.i143.i = trunc i16 %379 to i8
  %380 = ptrtoint ptr %376 to i32
  call void @__asan_store1_noabort(i32 %380)
  store i8 %conv1.i143.i, ptr %376, align 1
  %conv4.i144.i = trunc i16 %375 to i8
  %381 = ptrtoint ptr %377 to i32
  call void @__asan_store1_noabort(i32 %381)
  store i8 %conv4.i144.i, ptr %377, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i142.i) #7
  %382 = getelementptr inbounds i8, ptr %msg.i142.i, i32 4
  %383 = ptrtoint ptr %382 to i32
  call void @__asan_store4_noabort(i32 %383)
  store i32 262143, ptr %382, align 4
  %384 = ptrtoint ptr %config.i.i76 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %config.i.i76, align 4
  %386 = ptrtoint ptr %385 to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %385, align 2
  %conv5.i146.i = zext i8 %387 to i16
  %388 = ptrtoint ptr %msg.i142.i to i32
  call void @__asan_store2_noabort(i32 %388)
  store i16 %conv5.i146.i, ptr %msg.i142.i, align 4
  %flags.i147.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i142.i, i32 0, i32 1
  %389 = ptrtoint ptr %flags.i147.i to i32
  call void @__asan_store2_noabort(i32 %389)
  store i16 0, ptr %flags.i147.i, align 2
  %buf6.i149.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i142.i, i32 0, i32 3
  %390 = ptrtoint ptr %buf6.i149.i to i32
  call void @__asan_store4_noabort(i32 %390)
  store ptr %buf.i141.i, ptr %buf6.i149.i, align 4
  %391 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %248, align 4
  %call.i150.i = call i32 @i2c_transfer(ptr noundef %392, ptr noundef nonnull %msg.i142.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i150.i)
  %cmp.not.i151.i = icmp eq i32 %call.i150.i, 1
  br i1 %cmp.not.i151.i, label %s5h1409_readreg.exit140.i.s5h1409_writereg.exit157.i_crit_edge, label %do.end.i154.i

s5h1409_readreg.exit140.i.s5h1409_writereg.exit157.i_crit_edge: ; preds = %s5h1409_readreg.exit140.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit157.i

do.end.i154.i:                                    ; preds = %s5h1409_readreg.exit140.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i152.i = zext i16 %375 to i32
  %call10.i153.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 171, i32 noundef %conv.i152.i, i32 noundef %call.i150.i) #11
  br label %s5h1409_writereg.exit157.i

s5h1409_writereg.exit157.i:                       ; preds = %do.end.i154.i, %s5h1409_readreg.exit140.i.s5h1409_writereg.exit157.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i142.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i141.i) #7
  br label %if.end32

if.else.i100:                                     ; preds = %s5h1409_readreg.exit.i90
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %271)
  %cmp22.not.i = icmp eq i8 %271, 1
  br i1 %cmp22.not.i, label %if.else.i100.if.end32_crit_edge, label %if.then24.i

if.else.i100.if.end32_crit_edge:                  ; preds = %if.else.i100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then24.i:                                      ; preds = %if.else.i100
  %393 = ptrtoint ptr %qam_state20.i to i32
  call void @__asan_store1_noabort(i32 %393)
  store i8 1, ptr %qam_state20.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i158.i) #7
  %394 = getelementptr inbounds [3 x i8], ptr %buf.i158.i, i32 0, i32 1
  %395 = getelementptr inbounds [3 x i8], ptr %buf.i158.i, i32 0, i32 2
  %396 = ptrtoint ptr %buf.i158.i to i32
  call void @__asan_store1_noabort(i32 %396)
  store i8 -106, ptr %buf.i158.i, align 1
  %397 = ptrtoint ptr %394 to i32
  call void @__asan_store1_noabort(i32 %397)
  store i8 0, ptr %394, align 1
  %398 = ptrtoint ptr %395 to i32
  call void @__asan_store1_noabort(i32 %398)
  store i8 8, ptr %395, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i159.i) #7
  %399 = getelementptr inbounds i8, ptr %msg.i159.i, i32 4
  %400 = ptrtoint ptr %399 to i32
  call void @__asan_store4_noabort(i32 %400)
  store i32 262143, ptr %399, align 4
  %401 = ptrtoint ptr %config.i.i76 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %config.i.i76, align 4
  %403 = ptrtoint ptr %402 to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %402, align 2
  %conv5.i161.i = zext i8 %404 to i16
  %405 = ptrtoint ptr %msg.i159.i to i32
  call void @__asan_store2_noabort(i32 %405)
  store i16 %conv5.i161.i, ptr %msg.i159.i, align 4
  %flags.i162.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i159.i, i32 0, i32 1
  %406 = ptrtoint ptr %flags.i162.i to i32
  call void @__asan_store2_noabort(i32 %406)
  store i16 0, ptr %flags.i162.i, align 2
  %buf6.i164.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i159.i, i32 0, i32 3
  %407 = ptrtoint ptr %buf6.i164.i to i32
  call void @__asan_store4_noabort(i32 %407)
  store ptr %buf.i158.i, ptr %buf6.i164.i, align 4
  %408 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %248, align 4
  %call.i165.i = call i32 @i2c_transfer(ptr noundef %409, ptr noundef nonnull %msg.i159.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i165.i)
  %cmp.not.i166.i = icmp eq i32 %call.i165.i, 1
  br i1 %cmp.not.i166.i, label %if.then24.i.s5h1409_writereg.exit171.i_crit_edge, label %do.end.i168.i

if.then24.i.s5h1409_writereg.exit171.i_crit_edge: ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit171.i

do.end.i168.i:                                    ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i167.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 150, i32 noundef 8, i32 noundef %call.i165.i) #11
  br label %s5h1409_writereg.exit171.i

s5h1409_writereg.exit171.i:                       ; preds = %do.end.i168.i, %if.then24.i.s5h1409_writereg.exit171.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i159.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i158.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i172.i) #7
  %410 = ptrtoint ptr %b0.i172.i to i32
  call void @__asan_store1_noabort(i32 %410)
  store i8 -85, ptr %b0.i172.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i173.i) #7
  %411 = ptrtoint ptr %b1.i173.i to i32
  call void @__asan_store2_noabort(i32 %411)
  store i16 0, ptr %b1.i173.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i174.i) #7
  %412 = getelementptr inbounds i8, ptr %msg.i174.i, i32 4
  %413 = call ptr @memset(ptr %412, i32 255, i32 16)
  %414 = ptrtoint ptr %config.i.i76 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %config.i.i76, align 4
  %416 = ptrtoint ptr %415 to i32
  call void @__asan_load1_noabort(i32 %416)
  %417 = load i8, ptr %415, align 2
  %conv.i176.i = zext i8 %417 to i16
  %418 = ptrtoint ptr %msg.i174.i to i32
  call void @__asan_store2_noabort(i32 %418)
  store i16 %conv.i176.i, ptr %msg.i174.i, align 4
  %flags.i177.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i174.i, i32 0, i32 1
  %419 = ptrtoint ptr %flags.i177.i to i32
  call void @__asan_store2_noabort(i32 %419)
  store i16 0, ptr %flags.i177.i, align 2
  %420 = ptrtoint ptr %412 to i32
  call void @__asan_store2_noabort(i32 %420)
  store i16 1, ptr %412, align 4
  %buf.i179.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i174.i, i32 0, i32 3
  %421 = ptrtoint ptr %buf.i179.i to i32
  call void @__asan_store4_noabort(i32 %421)
  store ptr %b0.i172.i, ptr %buf.i179.i, align 4
  %arrayinit.element.i180.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i174.i, i32 1
  %422 = load i8, ptr %415, align 2
  %conv5.i181.i = zext i8 %422 to i16
  %423 = ptrtoint ptr %arrayinit.element.i180.i to i32
  call void @__asan_store2_noabort(i32 %423)
  store i16 %conv5.i181.i, ptr %arrayinit.element.i180.i, align 4
  %flags6.i182.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i174.i, i32 1, i32 1
  %424 = ptrtoint ptr %flags6.i182.i to i32
  call void @__asan_store2_noabort(i32 %424)
  store i16 1, ptr %flags6.i182.i, align 2
  %len7.i183.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i174.i, i32 1, i32 2
  %425 = ptrtoint ptr %len7.i183.i to i32
  call void @__asan_store2_noabort(i32 %425)
  store i16 2, ptr %len7.i183.i, align 4
  %buf8.i184.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i174.i, i32 1, i32 3
  %426 = ptrtoint ptr %buf8.i184.i to i32
  call void @__asan_store4_noabort(i32 %426)
  store ptr %b1.i173.i, ptr %buf8.i184.i, align 4
  %427 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %248, align 4
  %call.i185.i = call i32 @i2c_transfer(ptr noundef %428, ptr noundef nonnull %msg.i174.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i185.i)
  %cmp.not.i186.i = icmp eq i32 %call.i185.i, 2
  br i1 %cmp.not.i186.i, label %s5h1409_writereg.exit171.i.s5h1409_readreg.exit194.i_crit_edge, label %do.end.i188.i

s5h1409_writereg.exit171.i.s5h1409_readreg.exit194.i_crit_edge: ; preds = %s5h1409_writereg.exit171.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_readreg.exit194.i

do.end.i188.i:                                    ; preds = %s5h1409_writereg.exit171.i
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i187.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i185.i) #11
  br label %s5h1409_readreg.exit194.i

s5h1409_readreg.exit194.i:                        ; preds = %do.end.i188.i, %s5h1409_writereg.exit171.i.s5h1409_readreg.exit194.i_crit_edge
  %429 = ptrtoint ptr %b1.i173.i to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %b1.i173.i, align 2
  %conv13.i189.i = zext i8 %430 to i16
  %shl.i190.i = shl nuw i16 %conv13.i189.i, 8
  %arrayidx14.i191.i = getelementptr inbounds [2 x i8], ptr %b1.i173.i, i32 0, i32 1
  %431 = ptrtoint ptr %arrayidx14.i191.i to i32
  call void @__asan_load1_noabort(i32 %431)
  %432 = load i8, ptr %arrayidx14.i191.i, align 1
  %conv15.i192.i = zext i8 %432 to i16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i174.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i173.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i172.i) #7
  %or.i193.i = or i16 %shl.i190.i, %conv15.i192.i
  %433 = or i16 %or.i193.i, 4097
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i195.i) #7
  %434 = getelementptr inbounds [3 x i8], ptr %buf.i195.i, i32 0, i32 1
  %435 = getelementptr inbounds [3 x i8], ptr %buf.i195.i, i32 0, i32 2
  %436 = ptrtoint ptr %buf.i195.i to i32
  call void @__asan_store1_noabort(i32 %436)
  store i8 -85, ptr %buf.i195.i, align 1
  %437 = lshr i16 %433, 8
  %conv1.i197.i = trunc i16 %437 to i8
  %438 = ptrtoint ptr %434 to i32
  call void @__asan_store1_noabort(i32 %438)
  store i8 %conv1.i197.i, ptr %434, align 1
  %conv4.i198.i = trunc i16 %433 to i8
  %439 = ptrtoint ptr %435 to i32
  call void @__asan_store1_noabort(i32 %439)
  store i8 %conv4.i198.i, ptr %435, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i196.i) #7
  %440 = getelementptr inbounds i8, ptr %msg.i196.i, i32 4
  %441 = ptrtoint ptr %440 to i32
  call void @__asan_store4_noabort(i32 %441)
  store i32 262143, ptr %440, align 4
  %442 = ptrtoint ptr %config.i.i76 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %config.i.i76, align 4
  %444 = ptrtoint ptr %443 to i32
  call void @__asan_load1_noabort(i32 %444)
  %445 = load i8, ptr %443, align 2
  %conv5.i200.i = zext i8 %445 to i16
  %446 = ptrtoint ptr %msg.i196.i to i32
  call void @__asan_store2_noabort(i32 %446)
  store i16 %conv5.i200.i, ptr %msg.i196.i, align 4
  %flags.i201.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i196.i, i32 0, i32 1
  %447 = ptrtoint ptr %flags.i201.i to i32
  call void @__asan_store2_noabort(i32 %447)
  store i16 0, ptr %flags.i201.i, align 2
  %buf6.i203.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i196.i, i32 0, i32 3
  %448 = ptrtoint ptr %buf6.i203.i to i32
  call void @__asan_store4_noabort(i32 %448)
  store ptr %buf.i195.i, ptr %buf6.i203.i, align 4
  %449 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %248, align 4
  %call.i204.i = call i32 @i2c_transfer(ptr noundef %450, ptr noundef nonnull %msg.i196.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i204.i)
  %cmp.not.i205.i = icmp eq i32 %call.i204.i, 1
  br i1 %cmp.not.i205.i, label %s5h1409_readreg.exit194.i.s5h1409_writereg.exit211.i_crit_edge, label %do.end.i208.i

s5h1409_readreg.exit194.i.s5h1409_writereg.exit211.i_crit_edge: ; preds = %s5h1409_readreg.exit194.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit211.i

do.end.i208.i:                                    ; preds = %s5h1409_readreg.exit194.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i206.i = zext i16 %433 to i32
  %call10.i207.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 171, i32 noundef %conv.i206.i, i32 noundef %call.i204.i) #11
  br label %s5h1409_writereg.exit211.i

s5h1409_writereg.exit211.i:                       ; preds = %do.end.i208.i, %s5h1409_readreg.exit194.i.s5h1409_writereg.exit211.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i196.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i195.i) #7
  br label %if.end32

if.end32:                                         ; preds = %s5h1409_writereg.exit211.i, %if.else.i100.if.end32_crit_edge, %s5h1409_writereg.exit157.i, %if.then.i.if.end32_crit_edge, %if.then30, %if.end25.if.end32_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @s5h1409_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %tune) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tune to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1000, ptr %tune, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s5h1409_get_frontend(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %p) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %current_frequency = getelementptr inbounds %struct.s5h1409_state, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %current_frequency to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_frequency, align 4
  %4 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %p, align 4
  %current_modulation = getelementptr inbounds %struct.s5h1409_state, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %current_modulation to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %current_modulation, align 4
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 1
  %7 = ptrtoint ptr %modulation to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %modulation, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5h1409_read_status(ptr noundef %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [2 x i8], align 2
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %tuner_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tuner_status) #7
  %2 = ptrtoint ptr %tuner_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tuner_status, align 4
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %status, align 4
  %current_modulation = getelementptr inbounds %struct.s5h1409_state, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %current_modulation to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_modulation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %5)
  %cmp.not = icmp eq i32 %5, 7
  br i1 %cmp.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  %config = getelementptr inbounds %struct.s5h1409_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config, align 4
  %hvr1600_opt = getelementptr inbounds %struct.s5h1409_config, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %hvr1600_opt to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hvr1600_opt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp1 = icmp eq i8 %9, 1
  br i1 %cmp1, label %if.then3, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @s5h1409_set_qam_interleave_mode(ptr noundef %fe)
  tail call fastcc void @s5h1409_set_qam_amhum_mode(ptr noundef %fe)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %10 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -15, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i) #7
  %11 = ptrtoint ptr %b1.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %b1.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %12 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %13 = call ptr @memset(ptr %12, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.s5h1409_state, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %config.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 2
  %conv.i = zext i8 %17 to i16
  %18 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %flags.i, align 2
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %12, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %21 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %22 = load i8, ptr %15, align 2
  %conv5.i = zext i8 %22 to i16
  %23 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %24 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %25 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 2, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %26 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %b1.i, ptr %buf8.i, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end4.s5h1409_readreg.exit_crit_edge, label %do.end.i

if.end4.s5h1409_readreg.exit_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_readreg.exit

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i) #11
  br label %s5h1409_readreg.exit

s5h1409_readreg.exit:                             ; preds = %do.end.i, %if.end4.s5h1409_readreg.exit_crit_edge
  %29 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %b1.i, align 2
  %conv13.i = zext i8 %30 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %31 = and i32 %conv13.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not = icmp eq i32 %31, 0
  br i1 %tobool.not, label %s5h1409_readreg.exit.if.end7_crit_edge, label %if.then6

s5h1409_readreg.exit.if.end7_crit_edge:           ; preds = %s5h1409_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %s5h1409_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %status, align 4
  %or = or i32 %33, 4
  store i32 %or, ptr %status, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %s5h1409_readreg.exit.if.end7_crit_edge
  %34 = and i32 %conv13.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool10.not = icmp eq i32 %34, 0
  br i1 %tobool10.not, label %if.end7.if.end13_crit_edge, label %if.then11

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %status, align 4
  %or12 = or i32 %36, 24
  store i32 %or12, ptr %status, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end7.if.end13_crit_edge
  %37 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %config.i, align 4
  %status_mode = getelementptr inbounds %struct.s5h1409_config, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %status_mode to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %status_mode, align 1
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %40, label %if.end13.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 0, label %sw.bb21
  ]

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end13
  %42 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %status, align 4
  %and16 = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.sw.epilog.sink.split_crit_edge

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end13
  %get_status = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 12
  %44 = ptrtoint ptr %get_status to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %get_status, align 4
  %tobool22.not = icmp eq ptr %45, null
  br i1 %tobool22.not, label %sw.bb21.if.end43_crit_edge, label %if.then23

sw.bb21.if.end43_crit_edge:                       ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then23:                                        ; preds = %sw.bb21
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %46 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool25.not = icmp eq ptr %47, null
  br i1 %tobool25.not, label %if.then23.if.end30_crit_edge, label %if.then26

if.then23.if.end30_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %call29 = call i32 %47(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.then23.if.end30_crit_edge
  %48 = ptrtoint ptr %get_status to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %get_status, align 4
  %call34 = call i32 %49(ptr noundef %fe, ptr noundef nonnull %tuner_status) #7
  %50 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool37.not = icmp eq ptr %51, null
  br i1 %tobool37.not, label %if.end30.if.end43_crit_edge, label %if.then38

if.end30.if.end43_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then38:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %call41 = call i32 %51(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end43

if.end43:                                         ; preds = %if.then38, %if.end30.if.end43_crit_edge, %sw.bb21.if.end43_crit_edge
  %52 = ptrtoint ptr %tuner_status to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tuner_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool44.not = icmp eq i32 %53, 0
  br i1 %tobool44.not, label %if.end43.sw.epilog_crit_edge, label %if.then45

if.end43.sw.epilog_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %status, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.then45, %sw.bb.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ %55, %if.then45 ], [ %43, %sw.bb.sw.epilog.sink.split_crit_edge ]
  %or46 = or i32 %.sink, 3
  %56 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or46, ptr %status, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end43.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end13.sw.epilog_crit_edge
  %57 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool48.not = icmp eq i32 %57, 0
  br i1 %tobool48.not, label %sw.epilog.if.end51_crit_edge, label %do.end

sw.epilog.if.end51_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %status, align 4
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, i32 noundef %59) #11
  br label %if.end51

if.end51:                                         ; preds = %do.end, %sw.epilog.if.end51_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tuner_status) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5h1409_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  %b0.i.i = alloca [1 x i8], align 1
  %b1.i.i = alloca [2 x i8], align 2
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i.i) #7
  %2 = ptrtoint ptr %b0.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -75, ptr %b0.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i.i) #7
  %3 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %b1.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #7
  %4 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i.i = getelementptr inbounds %struct.s5h1409_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 2
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
  store ptr %b0.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %14 = load i8, ptr %7, align 2
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
  store i16 2, ptr %len7.i.i, align 4
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b1.i.i, ptr %buf8.i.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %entry.s5h1409_read_ucblocks.exit_crit_edge, label %do.end.i.i

entry.s5h1409_read_ucblocks.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_read_ucblocks.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i.i) #11
  br label %s5h1409_read_ucblocks.exit

s5h1409_read_ucblocks.exit:                       ; preds = %do.end.i.i, %entry.s5h1409_read_ucblocks.exit_crit_edge
  %21 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b1.i.i, align 2
  %conv13.i.i = zext i8 %22 to i32
  %shl.i.i = shl nuw nsw i32 %conv13.i.i, 8
  %arrayidx14.i.i = getelementptr inbounds [2 x i8], ptr %b1.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx14.i.i, align 1
  %conv15.i.i = zext i8 %24 to i32
  %or.i.i = or i32 %shl.i.i, %conv15.i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i.i) #7
  %25 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or.i.i, ptr %ber, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5h1409_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %signal_strength) #0 align 64 {
entry:
  %snr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %snr) #7
  %0 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %snr, align 2, !annotation !164
  %call = call i32 @s5h1409_read_snr(ptr noundef %fe, ptr noundef nonnull %snr)
  %1 = ptrtoint ptr %signal_strength to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %signal_strength, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %snr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %snr, align 2
  %conv = zext i16 %3 to i32
  %mul = mul i32 %conv, 1677721
  call void @__sanitizer_cov_trace_const_cmp4(i32 587202559, i32 %mul)
  %cmp1 = icmp ugt i32 %mul, 587202559
  %div = udiv i32 %mul, 8960
  %conv4 = trunc i32 %div to i16
  %.sink = select i1 %cmp1, i16 -1, i16 %conv4
  %4 = ptrtoint ptr %signal_strength to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %.sink, ptr %signal_strength, align 2
  br label %if.end5

if.end5:                                          ; preds = %if.then, %entry.if.end5_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %snr) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5h1409_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef %snr) #0 align 64 {
entry:
  %b0.i67 = alloca [1 x i8], align 1
  %b1.i68 = alloca [2 x i8], align 2
  %msg.i69 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i29 = alloca [1 x i8], align 1
  %b1.i30 = alloca [2 x i8], align 2
  %msg.i31 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [2 x i8], align 2
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.50) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %current_modulation = getelementptr inbounds %struct.s5h1409_state, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %current_modulation to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %current_modulation, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %4, label %if.end.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 5, label %sw.bb4
    i32 7, label %sw.bb10
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %6 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -16, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i) #7
  %7 = ptrtoint ptr %b1.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %b1.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.s5h1409_state, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 2
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
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %18 = load i8, ptr %11, align 2
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
  store i16 2, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %22 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %b1.i, ptr %buf8.i, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %sw.bb.s5h1409_readreg.exit_crit_edge, label %do.end.i

sw.bb.s5h1409_readreg.exit_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_readreg.exit

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i) #11
  br label %s5h1409_readreg.exit

s5h1409_readreg.exit:                             ; preds = %do.end.i, %sw.bb.s5h1409_readreg.exit_crit_edge
  %arrayidx14.i = getelementptr inbounds [2 x i8], ptr %b1.i, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %26 to i16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %27 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %s5h1409_readreg.exit.for.body.i.preheader_crit_edge, label %do.end.i28

s5h1409_readreg.exit.for.body.i.preheader_crit_edge: ; preds = %s5h1409_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.preheader

do.end.i28:                                       ; preds = %s5h1409_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.51) #11
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %do.end.i28, %s5h1409_readreg.exit.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.02.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr [65 x %struct.qam64_snr_tab], ptr @qam64_snr_tab, i32 0, i32 %i.02.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %conv15.i)
  %cmp2.i = icmp ugt i16 %29, %conv15.i
  br i1 %cmp2.i, label %if.then4.i, label %for.inc.i

if.then4.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %data.i = getelementptr [65 x %struct.qam64_snr_tab], ptr @qam64_snr_tab, i32 0, i32 %i.02.i, i32 1
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %data.i, align 2
  %32 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %snr, align 2
  br label %cleanup

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 65
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i29) #7
  %33 = ptrtoint ptr %b0.i29 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -16, ptr %b0.i29, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i30) #7
  %34 = ptrtoint ptr %b1.i30 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %b1.i30, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i31) #7
  %35 = getelementptr inbounds i8, ptr %msg.i31, i32 4
  %36 = call ptr @memset(ptr %35, i32 255, i32 16)
  %config.i32 = getelementptr inbounds %struct.s5h1409_state, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %config.i32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %config.i32, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 2
  %conv.i33 = zext i8 %40 to i16
  %41 = ptrtoint ptr %msg.i31 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv.i33, ptr %msg.i31, align 4
  %flags.i34 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31, i32 0, i32 1
  %42 = ptrtoint ptr %flags.i34 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %flags.i34, align 2
  %43 = ptrtoint ptr %35 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 1, ptr %35, align 4
  %buf.i36 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31, i32 0, i32 3
  %44 = ptrtoint ptr %buf.i36 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %b0.i29, ptr %buf.i36, align 4
  %arrayinit.element.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31, i32 1
  %45 = load i8, ptr %38, align 2
  %conv5.i38 = zext i8 %45 to i16
  %46 = ptrtoint ptr %arrayinit.element.i37 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv5.i38, ptr %arrayinit.element.i37, align 4
  %flags6.i39 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31, i32 1, i32 1
  %47 = ptrtoint ptr %flags6.i39 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 1, ptr %flags6.i39, align 2
  %len7.i40 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31, i32 1, i32 2
  %48 = ptrtoint ptr %len7.i40 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 2, ptr %len7.i40, align 4
  %buf8.i41 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31, i32 1, i32 3
  %49 = ptrtoint ptr %buf8.i41 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %b1.i30, ptr %buf8.i41, align 4
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %call.i42 = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %msg.i31, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i42)
  %cmp.not.i43 = icmp eq i32 %call.i42, 2
  br i1 %cmp.not.i43, label %sw.bb4.s5h1409_readreg.exit52_crit_edge, label %do.end.i45

sw.bb4.s5h1409_readreg.exit52_crit_edge:          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_readreg.exit52

do.end.i45:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i42) #11
  br label %s5h1409_readreg.exit52

s5h1409_readreg.exit52:                           ; preds = %do.end.i45, %sw.bb4.s5h1409_readreg.exit52_crit_edge
  %arrayidx14.i48 = getelementptr inbounds [2 x i8], ptr %b1.i30, i32 0, i32 1
  %52 = ptrtoint ptr %arrayidx14.i48 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx14.i48, align 1
  %conv15.i49 = zext i8 %53 to i16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i31) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i30) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i29) #7
  %54 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i53 = icmp eq i32 %54, 0
  br i1 %tobool.not.i53, label %s5h1409_readreg.exit52.for.body.i60.preheader_crit_edge, label %do.end.i55

s5h1409_readreg.exit52.for.body.i60.preheader_crit_edge: ; preds = %s5h1409_readreg.exit52
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i60.preheader

do.end.i55:                                       ; preds = %s5h1409_readreg.exit52
  call void @__sanitizer_cov_trace_pc() #9
  %call.i54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.52) #11
  br label %for.body.i60.preheader

for.body.i60.preheader:                           ; preds = %do.end.i55, %s5h1409_readreg.exit52.for.body.i60.preheader_crit_edge
  br label %for.body.i60

for.body.i60:                                     ; preds = %for.inc.i65.for.body.i60_crit_edge, %for.body.i60.preheader
  %i.02.i57 = phi i32 [ %inc.i63, %for.inc.i65.for.body.i60_crit_edge ], [ 0, %for.body.i60.preheader ]
  %arrayidx.i58 = getelementptr [70 x %struct.qam256_snr_tab], ptr @qam256_snr_tab, i32 0, i32 %i.02.i57
  %55 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx.i58, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %56, i16 %conv15.i49)
  %cmp2.i59 = icmp ugt i16 %56, %conv15.i49
  br i1 %cmp2.i59, label %if.then4.i62, label %for.inc.i65

if.then4.i62:                                     ; preds = %for.body.i60
  call void @__sanitizer_cov_trace_pc() #9
  %data.i61 = getelementptr [70 x %struct.qam256_snr_tab], ptr @qam256_snr_tab, i32 0, i32 %i.02.i57, i32 1
  %57 = ptrtoint ptr %data.i61 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %data.i61, align 2
  %59 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %snr, align 2
  br label %cleanup

for.inc.i65:                                      ; preds = %for.body.i60
  %inc.i63 = add nuw nsw i32 %i.02.i57, 1
  %exitcond.not.i64 = icmp eq i32 %inc.i63, 70
  br i1 %exitcond.not.i64, label %for.inc.i65.cleanup_crit_edge, label %for.inc.i65.for.body.i60_crit_edge

for.inc.i65.for.body.i60_crit_edge:               ; preds = %for.inc.i65
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i60

for.inc.i65.cleanup_crit_edge:                    ; preds = %for.inc.i65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i67) #7
  %60 = ptrtoint ptr %b0.i67 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -15, ptr %b0.i67, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i68) #7
  %61 = ptrtoint ptr %b1.i68 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %b1.i68, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i69) #7
  %62 = getelementptr inbounds i8, ptr %msg.i69, i32 4
  %63 = call ptr @memset(ptr %62, i32 255, i32 16)
  %config.i70 = getelementptr inbounds %struct.s5h1409_state, ptr %1, i32 0, i32 1
  %64 = ptrtoint ptr %config.i70 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %config.i70, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %65, align 2
  %conv.i71 = zext i8 %67 to i16
  %68 = ptrtoint ptr %msg.i69 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv.i71, ptr %msg.i69, align 4
  %flags.i72 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69, i32 0, i32 1
  %69 = ptrtoint ptr %flags.i72 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 0, ptr %flags.i72, align 2
  %70 = ptrtoint ptr %62 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 1, ptr %62, align 4
  %buf.i74 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69, i32 0, i32 3
  %71 = ptrtoint ptr %buf.i74 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %b0.i67, ptr %buf.i74, align 4
  %arrayinit.element.i75 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69, i32 1
  %72 = load i8, ptr %65, align 2
  %conv5.i76 = zext i8 %72 to i16
  %73 = ptrtoint ptr %arrayinit.element.i75 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv5.i76, ptr %arrayinit.element.i75, align 4
  %flags6.i77 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69, i32 1, i32 1
  %74 = ptrtoint ptr %flags6.i77 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 1, ptr %flags6.i77, align 2
  %len7.i78 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69, i32 1, i32 2
  %75 = ptrtoint ptr %len7.i78 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 2, ptr %len7.i78, align 4
  %buf8.i79 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69, i32 1, i32 3
  %76 = ptrtoint ptr %buf8.i79 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %b1.i68, ptr %buf8.i79, align 4
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 4
  %call.i80 = call i32 @i2c_transfer(ptr noundef %78, ptr noundef nonnull %msg.i69, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i80)
  %cmp.not.i81 = icmp eq i32 %call.i80, 2
  br i1 %cmp.not.i81, label %sw.bb10.s5h1409_readreg.exit90_crit_edge, label %do.end.i83

sw.bb10.s5h1409_readreg.exit90_crit_edge:         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_readreg.exit90

do.end.i83:                                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i80) #11
  br label %s5h1409_readreg.exit90

s5h1409_readreg.exit90:                           ; preds = %do.end.i83, %sw.bb10.s5h1409_readreg.exit90_crit_edge
  %79 = ptrtoint ptr %b1.i68 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %b1.i68, align 2
  %conv13.i84 = zext i8 %80 to i16
  %shl.i85 = shl nuw i16 %conv13.i84, 8
  %arrayidx14.i86 = getelementptr inbounds [2 x i8], ptr %b1.i68, i32 0, i32 1
  %81 = ptrtoint ptr %arrayidx14.i86 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx14.i86, align 1
  %conv15.i87 = zext i8 %82 to i16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i69) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i68) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i67) #7
  %shl.i85.masked = and i16 %shl.i85, 768
  %83 = or i16 %shl.i85.masked, %conv15.i87
  %84 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.i91 = icmp eq i32 %84, 0
  br i1 %tobool.not.i91, label %s5h1409_readreg.exit90.for.body.i98.preheader_crit_edge, label %do.end.i93

s5h1409_readreg.exit90.for.body.i98.preheader_crit_edge: ; preds = %s5h1409_readreg.exit90
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i98.preheader

do.end.i93:                                       ; preds = %s5h1409_readreg.exit90
  call void @__sanitizer_cov_trace_pc() #9
  %call.i92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.53) #11
  br label %for.body.i98.preheader

for.body.i98.preheader:                           ; preds = %do.end.i93, %s5h1409_readreg.exit90.for.body.i98.preheader_crit_edge
  br label %for.body.i98

for.body.i98:                                     ; preds = %for.inc.i103.for.body.i98_crit_edge, %for.body.i98.preheader
  %i.02.i95 = phi i32 [ %inc.i101, %for.inc.i103.for.body.i98_crit_edge ], [ 0, %for.body.i98.preheader ]
  %arrayidx.i96 = getelementptr [40 x %struct.vsb_snr_tab], ptr @vsb_snr_tab, i32 0, i32 %i.02.i95
  %85 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx.i96, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %86, i16 %83)
  %cmp2.i97 = icmp ult i16 %86, %83
  br i1 %cmp2.i97, label %if.then4.i100, label %for.inc.i103

if.then4.i100:                                    ; preds = %for.body.i98
  call void @__sanitizer_cov_trace_pc() #9
  %data.i99 = getelementptr [40 x %struct.vsb_snr_tab], ptr @vsb_snr_tab, i32 0, i32 %i.02.i95, i32 1
  %87 = ptrtoint ptr %data.i99 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %data.i99, align 2
  %89 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %snr, align 2
  br label %for.end.i

for.inc.i103:                                     ; preds = %for.body.i98
  %inc.i101 = add nuw nsw i32 %i.02.i95, 1
  %exitcond.not.i102 = icmp eq i32 %inc.i101, 40
  br i1 %exitcond.not.i102, label %for.inc.i103.for.end.i_crit_edge, label %for.inc.i103.for.body.i98_crit_edge

for.inc.i103.for.body.i98_crit_edge:              ; preds = %for.inc.i103
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i98

for.inc.i103.for.end.i_crit_edge:                 ; preds = %for.inc.i103
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i103.for.end.i_crit_edge, %if.then4.i100
  %ret.0.i104 = phi i32 [ 0, %if.then4.i100 ], [ -22, %for.inc.i103.for.end.i_crit_edge ]
  %90 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool7.not.i = icmp eq i32 %90, 0
  br i1 %tobool7.not.i, label %for.end.i.cleanup_crit_edge, label %do.end11.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %snr to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %snr, align 2
  %conv13.i105 = zext i16 %92 to i32
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53, i32 noundef %conv13.i105) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i, %for.end.i.cleanup_crit_edge, %for.inc.i65.cleanup_crit_edge, %if.then4.i62, %for.inc.i.cleanup_crit_edge, %if.then4.i, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then4.i ], [ 0, %if.then4.i62 ], [ %ret.0.i104, %for.end.i.cleanup_crit_edge ], [ %ret.0.i104, %do.end11.i ], [ -22, %for.inc.i.cleanup_crit_edge ], [ -22, %for.inc.i65.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5h1409_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #0 align 64 {
entry:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [2 x i8], align 2
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %2 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -75, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i) #7
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %b1.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.s5h1409_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 2
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
  %14 = load i8, ptr %7, align 2
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
  store i16 2, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b1.i, ptr %buf8.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.s5h1409_readreg.exit_crit_edge, label %do.end.i

entry.s5h1409_readreg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_readreg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i) #11
  br label %s5h1409_readreg.exit

s5h1409_readreg.exit:                             ; preds = %do.end.i, %entry.s5h1409_readreg.exit_crit_edge
  %21 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b1.i, align 2
  %conv13.i = zext i8 %22 to i32
  %shl.i = shl nuw nsw i32 %conv13.i, 8
  %arrayidx14.i = getelementptr inbounds [2 x i8], ptr %b1.i, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %24 to i32
  %or.i = or i32 %shl.i, %conv15.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %25 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or.i, ptr %ucblocks, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5h1409_set_qam_interleave_mode(ptr nocapture noundef readonly %fe) unnamed_addr #0 align 64 {
entry:
  %buf.i175 = alloca [3 x i8], align 1
  %msg.i176 = alloca %struct.i2c_msg, align 4
  %b0.i152 = alloca [1 x i8], align 1
  %b1.i153 = alloca [2 x i8], align 2
  %msg.i154 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i138 = alloca [3 x i8], align 1
  %msg.i139 = alloca %struct.i2c_msg, align 4
  %buf.i123 = alloca [3 x i8], align 1
  %msg.i124 = alloca %struct.i2c_msg, align 4
  %buf.i114 = alloca [3 x i8], align 1
  %msg.i115 = alloca %struct.i2c_msg, align 4
  %b0.i91 = alloca [1 x i8], align 1
  %b1.i92 = alloca [2 x i8], align 2
  %msg.i93 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i68 = alloca [1 x i8], align 1
  %b1.i69 = alloca [2 x i8], align 2
  %msg.i70 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [2 x i8], align 2
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %qam_state = getelementptr inbounds %struct.s5h1409_state, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %qam_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %qam_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp ugt i8 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %4 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -15, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i) #7
  %5 = ptrtoint ptr %b1.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %b1.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.s5h1409_state, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 2
  %conv.i = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %6, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %16 = load i8, ptr %9, align 2
  %conv5.i = zext i8 %16 to i16
  %17 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %18 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %19 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 2, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %20 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %b1.i, ptr %buf8.i, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.s5h1409_readreg.exit_crit_edge, label %do.end.i

if.end.s5h1409_readreg.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_readreg.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i) #11
  br label %s5h1409_readreg.exit

s5h1409_readreg.exit:                             ; preds = %do.end.i, %if.end.s5h1409_readreg.exit_crit_edge
  %23 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %b1.i, align 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %tobool.not = icmp sgt i8 %24, -1
  %25 = ptrtoint ptr %qam_state to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %qam_state, align 4
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %s5h1409_readreg.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %26)
  %switch = icmp ult i8 %26, 2
  br i1 %switch, label %if.then12, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12:                                        ; preds = %if.then3
  %27 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool13.not = icmp eq i32 %27, 0
  br i1 %tobool13.not, label %if.then12.if.end16_crit_edge, label %do.end

if.then12.if.end16_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

do.end:                                           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36) #11
  br label %if.end16

if.end16:                                         ; preds = %do.end, %if.then12.if.end16_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i68) #7
  %28 = ptrtoint ptr %b0.i68 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -78, ptr %b0.i68, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i69) #7
  %29 = ptrtoint ptr %b1.i69 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %b1.i69, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i70) #7
  %30 = getelementptr inbounds i8, ptr %msg.i70, i32 4
  %31 = call ptr @memset(ptr %30, i32 255, i32 16)
  %32 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %config.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 2
  %conv.i72 = zext i8 %35 to i16
  %36 = ptrtoint ptr %msg.i70 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i72, ptr %msg.i70, align 4
  %flags.i73 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i70, i32 0, i32 1
  %37 = ptrtoint ptr %flags.i73 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %flags.i73, align 2
  %38 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %30, align 4
  %buf.i75 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i70, i32 0, i32 3
  %39 = ptrtoint ptr %buf.i75 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %b0.i68, ptr %buf.i75, align 4
  %arrayinit.element.i76 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i70, i32 1
  %40 = load i8, ptr %33, align 2
  %conv5.i77 = zext i8 %40 to i16
  %41 = ptrtoint ptr %arrayinit.element.i76 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv5.i77, ptr %arrayinit.element.i76, align 4
  %flags6.i78 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i70, i32 1, i32 1
  %42 = ptrtoint ptr %flags6.i78 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %flags6.i78, align 2
  %len7.i79 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i70, i32 1, i32 2
  %43 = ptrtoint ptr %len7.i79 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 2, ptr %len7.i79, align 4
  %buf8.i80 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i70, i32 1, i32 3
  %44 = ptrtoint ptr %buf8.i80 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %b1.i69, ptr %buf8.i80, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %call.i81 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %msg.i70, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i81)
  %cmp.not.i82 = icmp eq i32 %call.i81, 2
  br i1 %cmp.not.i82, label %if.end16.s5h1409_readreg.exit90_crit_edge, label %do.end.i84

if.end16.s5h1409_readreg.exit90_crit_edge:        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_readreg.exit90

do.end.i84:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i81) #11
  br label %s5h1409_readreg.exit90

s5h1409_readreg.exit90:                           ; preds = %do.end.i84, %if.end16.s5h1409_readreg.exit90_crit_edge
  %47 = ptrtoint ptr %b1.i69 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %b1.i69, align 2
  %conv13.i85 = zext i8 %48 to i16
  %shl.i86 = shl nuw nsw i16 %conv13.i85, 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i70) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i69) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i68) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i91) #7
  %49 = ptrtoint ptr %b0.i91 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -83, ptr %b0.i91, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i92) #7
  %50 = ptrtoint ptr %b1.i92 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %b1.i92, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i93) #7
  %51 = getelementptr inbounds i8, ptr %msg.i93, i32 4
  %52 = call ptr @memset(ptr %51, i32 255, i32 16)
  %53 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %config.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %54, align 2
  %conv.i95 = zext i8 %56 to i16
  %57 = ptrtoint ptr %msg.i93 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv.i95, ptr %msg.i93, align 4
  %flags.i96 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i93, i32 0, i32 1
  %58 = ptrtoint ptr %flags.i96 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %flags.i96, align 2
  %59 = ptrtoint ptr %51 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 1, ptr %51, align 4
  %buf.i98 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i93, i32 0, i32 3
  %60 = ptrtoint ptr %buf.i98 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %b0.i91, ptr %buf.i98, align 4
  %arrayinit.element.i99 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i93, i32 1
  %61 = load i8, ptr %54, align 2
  %conv5.i100 = zext i8 %61 to i16
  %62 = ptrtoint ptr %arrayinit.element.i99 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv5.i100, ptr %arrayinit.element.i99, align 4
  %flags6.i101 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i93, i32 1, i32 1
  %63 = ptrtoint ptr %flags6.i101 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 1, ptr %flags6.i101, align 2
  %len7.i102 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i93, i32 1, i32 2
  %64 = ptrtoint ptr %len7.i102 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 2, ptr %len7.i102, align 4
  %buf8.i103 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i93, i32 1, i32 3
  %65 = ptrtoint ptr %buf8.i103 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %b1.i92, ptr %buf8.i103, align 4
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %call.i104 = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %msg.i93, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i104)
  %cmp.not.i105 = icmp eq i32 %call.i104, 2
  br i1 %cmp.not.i105, label %s5h1409_readreg.exit90.s5h1409_readreg.exit113_crit_edge, label %do.end.i107

s5h1409_readreg.exit90.s5h1409_readreg.exit113_crit_edge: ; preds = %s5h1409_readreg.exit90
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_readreg.exit113

do.end.i107:                                      ; preds = %s5h1409_readreg.exit90
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i104) #11
  br label %s5h1409_readreg.exit113

s5h1409_readreg.exit113:                          ; preds = %do.end.i107, %s5h1409_readreg.exit90.s5h1409_readreg.exit113_crit_edge
  %68 = ptrtoint ptr %b1.i92 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %b1.i92, align 2
  %conv13.i108 = zext i8 %69 to i16
  %shl.i109 = shl nuw i16 %conv13.i108, 8
  %arrayidx14.i110 = getelementptr inbounds [2 x i8], ptr %b1.i92, i32 0, i32 1
  %70 = ptrtoint ptr %arrayidx14.i110 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx14.i110, align 1
  %conv15.i111 = zext i8 %71 to i16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i93) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i92) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i91) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i114) #7
  %72 = getelementptr inbounds [3 x i8], ptr %buf.i114, i32 0, i32 1
  %73 = getelementptr inbounds [3 x i8], ptr %buf.i114, i32 0, i32 2
  %74 = ptrtoint ptr %buf.i114 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -106, ptr %buf.i114, align 1
  %75 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %72, align 1
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 32, ptr %73, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i115) #7
  %77 = getelementptr inbounds i8, ptr %msg.i115, i32 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 262143, ptr %77, align 4
  %79 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %config.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %80, align 2
  %conv5.i117 = zext i8 %82 to i16
  %83 = ptrtoint ptr %msg.i115 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv5.i117, ptr %msg.i115, align 4
  %flags.i118 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i115, i32 0, i32 1
  %84 = ptrtoint ptr %flags.i118 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 0, ptr %flags.i118, align 2
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i115, i32 0, i32 3
  %85 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %buf.i114, ptr %buf6.i, align 4
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 4
  %call.i120 = call i32 @i2c_transfer(ptr noundef %87, ptr noundef nonnull %msg.i115, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i120)
  %cmp.not.i121 = icmp eq i32 %call.i120, 1
  br i1 %cmp.not.i121, label %s5h1409_readreg.exit113.s5h1409_writereg.exit_crit_edge, label %do.end.i122

s5h1409_readreg.exit113.s5h1409_writereg.exit_crit_edge: ; preds = %s5h1409_readreg.exit113
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit

do.end.i122:                                      ; preds = %s5h1409_readreg.exit113
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 150, i32 noundef 32, i32 noundef %call.i120) #11
  br label %s5h1409_writereg.exit

s5h1409_writereg.exit:                            ; preds = %do.end.i122, %s5h1409_readreg.exit113.s5h1409_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i115) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i114) #7
  %88 = and i16 %shl.i86, 3840
  %shl.i109.masked = and i16 %shl.i109, -4096
  %89 = or i16 %88, %conv15.i111
  %or67 = or i16 %89, %shl.i109.masked
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i123) #7
  %90 = getelementptr inbounds [3 x i8], ptr %buf.i123, i32 0, i32 1
  %91 = getelementptr inbounds [3 x i8], ptr %buf.i123, i32 0, i32 2
  %92 = ptrtoint ptr %buf.i123 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -83, ptr %buf.i123, align 1
  %93 = lshr i16 %or67, 8
  %conv1.i = trunc i16 %93 to i8
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv1.i, ptr %90, align 1
  %95 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %71, ptr %91, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i124) #7
  %96 = getelementptr inbounds i8, ptr %msg.i124, i32 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 262143, ptr %96, align 4
  %98 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %config.i, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %99, align 2
  %conv5.i126 = zext i8 %101 to i16
  %102 = ptrtoint ptr %msg.i124 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %conv5.i126, ptr %msg.i124, align 4
  %flags.i127 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i124, i32 0, i32 1
  %103 = ptrtoint ptr %flags.i127 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 0, ptr %flags.i127, align 2
  %buf6.i129 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i124, i32 0, i32 3
  %104 = ptrtoint ptr %buf6.i129 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %buf.i123, ptr %buf6.i129, align 4
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %1, align 4
  %call.i130 = call i32 @i2c_transfer(ptr noundef %106, ptr noundef nonnull %msg.i124, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i130)
  %cmp.not.i131 = icmp eq i32 %call.i130, 1
  br i1 %cmp.not.i131, label %s5h1409_writereg.exit.s5h1409_writereg.exit137_crit_edge, label %do.end.i134

s5h1409_writereg.exit.s5h1409_writereg.exit137_crit_edge: ; preds = %s5h1409_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit137

do.end.i134:                                      ; preds = %s5h1409_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i132 = zext i16 %or67 to i32
  %call10.i133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 173, i32 noundef %conv.i132, i32 noundef %call.i130) #11
  br label %s5h1409_writereg.exit137

s5h1409_writereg.exit137:                         ; preds = %do.end.i134, %s5h1409_writereg.exit.s5h1409_writereg.exit137_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i124) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i123) #7
  br label %cleanup.sink.split

if.else:                                          ; preds = %s5h1409_readreg.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp31 = icmp eq i8 %26, 0
  br i1 %cmp31, label %if.then33, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then33:                                        ; preds = %if.else
  %107 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool34.not = icmp eq i32 %107, 0
  br i1 %tobool34.not, label %if.then33.if.end41_crit_edge, label %do.end38

if.then33.if.end41_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

do.end38:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36) #11
  br label %if.end41

if.end41:                                         ; preds = %do.end38, %if.then33.if.end41_crit_edge
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i138) #7
  %108 = getelementptr inbounds [3 x i8], ptr %buf.i138, i32 0, i32 1
  %109 = getelementptr inbounds [3 x i8], ptr %buf.i138, i32 0, i32 2
  %110 = ptrtoint ptr %buf.i138 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 -106, ptr %buf.i138, align 1
  %111 = ptrtoint ptr %108 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %108, align 1
  %112 = ptrtoint ptr %109 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 8, ptr %109, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i139) #7
  %113 = getelementptr inbounds i8, ptr %msg.i139, i32 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 262143, ptr %113, align 4
  %115 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %config.i, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %116, align 2
  %conv5.i141 = zext i8 %118 to i16
  %119 = ptrtoint ptr %msg.i139 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %conv5.i141, ptr %msg.i139, align 4
  %flags.i142 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i139, i32 0, i32 1
  %120 = ptrtoint ptr %flags.i142 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 0, ptr %flags.i142, align 2
  %buf6.i144 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i139, i32 0, i32 3
  %121 = ptrtoint ptr %buf6.i144 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %buf.i138, ptr %buf6.i144, align 4
  %122 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %1, align 4
  %call.i145 = call i32 @i2c_transfer(ptr noundef %123, ptr noundef nonnull %msg.i139, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i145)
  %cmp.not.i146 = icmp eq i32 %call.i145, 1
  br i1 %cmp.not.i146, label %if.end41.s5h1409_writereg.exit151_crit_edge, label %do.end.i148

if.end41.s5h1409_writereg.exit151_crit_edge:      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit151

do.end.i148:                                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 150, i32 noundef 8, i32 noundef %call.i145) #11
  br label %s5h1409_writereg.exit151

s5h1409_writereg.exit151:                         ; preds = %do.end.i148, %if.end41.s5h1409_writereg.exit151_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i139) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i138) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i152) #7
  %124 = ptrtoint ptr %b0.i152 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 -85, ptr %b0.i152, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i153) #7
  %125 = ptrtoint ptr %b1.i153 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 0, ptr %b1.i153, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i154) #7
  %126 = getelementptr inbounds i8, ptr %msg.i154, i32 4
  %127 = call ptr @memset(ptr %126, i32 255, i32 16)
  %128 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %config.i, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %129, align 2
  %conv.i156 = zext i8 %131 to i16
  %132 = ptrtoint ptr %msg.i154 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %conv.i156, ptr %msg.i154, align 4
  %flags.i157 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i154, i32 0, i32 1
  %133 = ptrtoint ptr %flags.i157 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 0, ptr %flags.i157, align 2
  %134 = ptrtoint ptr %126 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 1, ptr %126, align 4
  %buf.i159 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i154, i32 0, i32 3
  %135 = ptrtoint ptr %buf.i159 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %b0.i152, ptr %buf.i159, align 4
  %arrayinit.element.i160 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i154, i32 1
  %136 = load i8, ptr %129, align 2
  %conv5.i161 = zext i8 %136 to i16
  %137 = ptrtoint ptr %arrayinit.element.i160 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %conv5.i161, ptr %arrayinit.element.i160, align 4
  %flags6.i162 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i154, i32 1, i32 1
  %138 = ptrtoint ptr %flags6.i162 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 1, ptr %flags6.i162, align 2
  %len7.i163 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i154, i32 1, i32 2
  %139 = ptrtoint ptr %len7.i163 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 2, ptr %len7.i163, align 4
  %buf8.i164 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i154, i32 1, i32 3
  %140 = ptrtoint ptr %buf8.i164 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %b1.i153, ptr %buf8.i164, align 4
  %141 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %1, align 4
  %call.i165 = call i32 @i2c_transfer(ptr noundef %142, ptr noundef nonnull %msg.i154, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i165)
  %cmp.not.i166 = icmp eq i32 %call.i165, 2
  br i1 %cmp.not.i166, label %s5h1409_writereg.exit151.s5h1409_readreg.exit174_crit_edge, label %do.end.i168

s5h1409_writereg.exit151.s5h1409_readreg.exit174_crit_edge: ; preds = %s5h1409_writereg.exit151
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_readreg.exit174

do.end.i168:                                      ; preds = %s5h1409_writereg.exit151
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i167 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i165) #11
  br label %s5h1409_readreg.exit174

s5h1409_readreg.exit174:                          ; preds = %do.end.i168, %s5h1409_writereg.exit151.s5h1409_readreg.exit174_crit_edge
  %143 = ptrtoint ptr %b1.i153 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %b1.i153, align 2
  %conv13.i169 = zext i8 %144 to i16
  %shl.i170 = shl nuw i16 %conv13.i169, 8
  %arrayidx14.i171 = getelementptr inbounds [2 x i8], ptr %b1.i153, i32 0, i32 1
  %145 = ptrtoint ptr %arrayidx14.i171 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx14.i171, align 1
  %conv15.i172 = zext i8 %146 to i16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i154) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i153) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i152) #7
  %or.i173 = or i16 %shl.i170, %conv15.i172
  %147 = or i16 %or.i173, 4097
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i175) #7
  %148 = getelementptr inbounds [3 x i8], ptr %buf.i175, i32 0, i32 1
  %149 = getelementptr inbounds [3 x i8], ptr %buf.i175, i32 0, i32 2
  %150 = ptrtoint ptr %buf.i175 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 -85, ptr %buf.i175, align 1
  %151 = lshr i16 %147, 8
  %conv1.i177 = trunc i16 %151 to i8
  %152 = ptrtoint ptr %148 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %conv1.i177, ptr %148, align 1
  %conv4.i178 = trunc i16 %147 to i8
  %153 = ptrtoint ptr %149 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %conv4.i178, ptr %149, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i176) #7
  %154 = getelementptr inbounds i8, ptr %msg.i176, i32 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 262143, ptr %154, align 4
  %156 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %config.i, align 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %157, align 2
  %conv5.i180 = zext i8 %159 to i16
  %160 = ptrtoint ptr %msg.i176 to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %conv5.i180, ptr %msg.i176, align 4
  %flags.i181 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i176, i32 0, i32 1
  %161 = ptrtoint ptr %flags.i181 to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 0, ptr %flags.i181, align 2
  %buf6.i183 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i176, i32 0, i32 3
  %162 = ptrtoint ptr %buf6.i183 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %buf.i175, ptr %buf6.i183, align 4
  %163 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %1, align 4
  %call.i184 = call i32 @i2c_transfer(ptr noundef %164, ptr noundef nonnull %msg.i176, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i184)
  %cmp.not.i185 = icmp eq i32 %call.i184, 1
  br i1 %cmp.not.i185, label %s5h1409_readreg.exit174.s5h1409_writereg.exit191_crit_edge, label %do.end.i188

s5h1409_readreg.exit174.s5h1409_writereg.exit191_crit_edge: ; preds = %s5h1409_readreg.exit174
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit191

do.end.i188:                                      ; preds = %s5h1409_readreg.exit174
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i186 = zext i16 %147 to i32
  %call10.i187 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 171, i32 noundef %conv.i186, i32 noundef %call.i184) #11
  br label %s5h1409_writereg.exit191

s5h1409_writereg.exit191:                         ; preds = %do.end.i188, %s5h1409_readreg.exit174.s5h1409_writereg.exit191_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i176) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i175) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %s5h1409_writereg.exit191, %s5h1409_writereg.exit137
  %.sink = phi i8 [ 2, %s5h1409_writereg.exit137 ], [ 1, %s5h1409_writereg.exit191 ]
  %165 = ptrtoint ptr %qam_state to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %.sink, ptr %qam_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5h1409_set_qam_amhum_mode(ptr nocapture noundef readonly %fe) unnamed_addr #0 align 64 {
entry:
  %buf.i181 = alloca [3 x i8], align 1
  %msg.i182 = alloca %struct.i2c_msg, align 4
  %buf.i167 = alloca [3 x i8], align 1
  %msg.i168 = alloca %struct.i2c_msg, align 4
  %buf.i153 = alloca [3 x i8], align 1
  %msg.i154 = alloca %struct.i2c_msg, align 4
  %buf.i139 = alloca [3 x i8], align 1
  %msg.i140 = alloca %struct.i2c_msg, align 4
  %buf.i125 = alloca [3 x i8], align 1
  %msg.i126 = alloca %struct.i2c_msg, align 4
  %buf.i111 = alloca [3 x i8], align 1
  %msg.i112 = alloca %struct.i2c_msg, align 4
  %buf.i97 = alloca [3 x i8], align 1
  %msg.i98 = alloca %struct.i2c_msg, align 4
  %buf.i88 = alloca [3 x i8], align 1
  %msg.i89 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [2 x i8], align 2
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %qam_state = getelementptr inbounds %struct.s5h1409_state, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %qam_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %qam_state, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %3, label %if.end7 [
    i8 5, label %entry.cleanup_crit_edge
    i8 1, label %entry.cleanup_crit_edge195
    i8 0, label %entry.cleanup_crit_edge196
  ]

entry.cleanup_crit_edge196:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.cleanup_crit_edge195:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %5 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -16, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i) #7
  %6 = ptrtoint ptr %b1.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %b1.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.s5h1409_state, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 2
  %conv.i = zext i8 %12 to i16
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %7, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %17 = load i8, ptr %10, align 2
  %conv5.i = zext i8 %17 to i16
  %18 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %19 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %20 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %21 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %b1.i, ptr %buf8.i, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end7.s5h1409_readreg.exit_crit_edge, label %do.end.i

if.end7.s5h1409_readreg.exit_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_readreg.exit

do.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i) #11
  br label %s5h1409_readreg.exit

s5h1409_readreg.exit:                             ; preds = %do.end.i, %if.end7.s5h1409_readreg.exit_crit_edge
  %24 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %b1.i, align 2
  %arrayidx14.i = getelementptr inbounds [2 x i8], ptr %b1.i, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx14.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %28 = and i8 %25, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not = icmp eq i8 %28, 0
  br i1 %tobool.not, label %if.else49, label %if.then9

if.then9:                                         ; preds = %s5h1409_readreg.exit
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i88) #7
  %29 = getelementptr inbounds [3 x i8], ptr %buf.i88, i32 0, i32 1
  %30 = getelementptr inbounds [3 x i8], ptr %buf.i88, i32 0, i32 2
  %31 = ptrtoint ptr %buf.i88 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -106, ptr %buf.i88, align 1
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %29, align 1
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 12, ptr %30, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i89) #7
  %34 = getelementptr inbounds i8, ptr %msg.i89, i32 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 262143, ptr %34, align 4
  %36 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %config.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %37, align 2
  %conv5.i91 = zext i8 %39 to i16
  %40 = ptrtoint ptr %msg.i89 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv5.i91, ptr %msg.i89, align 4
  %flags.i92 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i89, i32 0, i32 1
  %41 = ptrtoint ptr %flags.i92 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %flags.i92, align 2
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i89, i32 0, i32 3
  %42 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %buf.i88, ptr %buf6.i, align 4
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %call.i94 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %msg.i89, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i94)
  %cmp.not.i95 = icmp eq i32 %call.i94, 1
  br i1 %cmp.not.i95, label %if.then9.s5h1409_writereg.exit_crit_edge, label %do.end.i96

if.then9.s5h1409_writereg.exit_crit_edge:         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit

do.end.i96:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 150, i32 noundef 12, i32 noundef %call.i94) #11
  br label %s5h1409_writereg.exit

s5h1409_writereg.exit:                            ; preds = %do.end.i96, %if.then9.s5h1409_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i89) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i88) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 104, i8 %27)
  %cmp15 = icmp ult i8 %27, 104
  %45 = ptrtoint ptr %qam_state to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %qam_state, align 4
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %s5h1409_writereg.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %46)
  %cmp20 = icmp ult i8 %46, 5
  br i1 %cmp20, label %if.then22, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then22:                                        ; preds = %if.then17
  %47 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool23.not = icmp eq i32 %47, 0
  br i1 %tobool23.not, label %if.then22.if.end26_crit_edge, label %do.end

if.then22.if.end26_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

do.end:                                           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #11
  br label %if.end26

if.end26:                                         ; preds = %do.end, %if.then22.if.end26_crit_edge
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i97) #7
  %48 = getelementptr inbounds [3 x i8], ptr %buf.i97, i32 0, i32 1
  %49 = getelementptr inbounds [3 x i8], ptr %buf.i97, i32 0, i32 2
  %50 = ptrtoint ptr %buf.i97 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -109, ptr %buf.i97, align 1
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 49, ptr %48, align 1
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 48, ptr %49, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i98) #7
  %53 = getelementptr inbounds i8, ptr %msg.i98, i32 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 262143, ptr %53, align 4
  %55 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %config.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %56, align 2
  %conv5.i100 = zext i8 %58 to i16
  %59 = ptrtoint ptr %msg.i98 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv5.i100, ptr %msg.i98, align 4
  %flags.i101 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i98, i32 0, i32 1
  %60 = ptrtoint ptr %flags.i101 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 0, ptr %flags.i101, align 2
  %buf6.i103 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i98, i32 0, i32 3
  %61 = ptrtoint ptr %buf6.i103 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %buf.i97, ptr %buf6.i103, align 4
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %call.i104 = call i32 @i2c_transfer(ptr noundef %63, ptr noundef nonnull %msg.i98, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i104)
  %cmp.not.i105 = icmp eq i32 %call.i104, 1
  br i1 %cmp.not.i105, label %if.end26.s5h1409_writereg.exit110_crit_edge, label %do.end.i107

if.end26.s5h1409_writereg.exit110_crit_edge:      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit110

do.end.i107:                                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 147, i32 noundef 12592, i32 noundef %call.i104) #11
  br label %s5h1409_writereg.exit110

s5h1409_writereg.exit110:                         ; preds = %do.end.i107, %if.end26.s5h1409_writereg.exit110_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i98) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i97) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i111) #7
  %64 = getelementptr inbounds [3 x i8], ptr %buf.i111, i32 0, i32 1
  %65 = getelementptr inbounds [3 x i8], ptr %buf.i111, i32 0, i32 2
  %66 = ptrtoint ptr %buf.i111 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 -98, ptr %buf.i111, align 1
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 40, ptr %64, align 1
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 54, ptr %65, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i112) #7
  %69 = getelementptr inbounds i8, ptr %msg.i112, i32 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 262143, ptr %69, align 4
  %71 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %config.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %72, align 2
  %conv5.i114 = zext i8 %74 to i16
  %75 = ptrtoint ptr %msg.i112 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv5.i114, ptr %msg.i112, align 4
  %flags.i115 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i112, i32 0, i32 1
  %76 = ptrtoint ptr %flags.i115 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %flags.i115, align 2
  %buf6.i117 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i112, i32 0, i32 3
  %77 = ptrtoint ptr %buf6.i117 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %buf.i111, ptr %buf6.i117, align 4
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %call.i118 = call i32 @i2c_transfer(ptr noundef %79, ptr noundef nonnull %msg.i112, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i118)
  %cmp.not.i119 = icmp eq i32 %call.i118, 1
  br i1 %cmp.not.i119, label %s5h1409_writereg.exit110.s5h1409_writereg.exit124_crit_edge, label %do.end.i121

s5h1409_writereg.exit110.s5h1409_writereg.exit124_crit_edge: ; preds = %s5h1409_writereg.exit110
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit124

do.end.i121:                                      ; preds = %s5h1409_writereg.exit110
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 158, i32 noundef 10294, i32 noundef %call.i118) #11
  br label %s5h1409_writereg.exit124

s5h1409_writereg.exit124:                         ; preds = %do.end.i121, %s5h1409_writereg.exit110.s5h1409_writereg.exit124_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i112) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i111) #7
  br label %cleanup.sink.split

if.else:                                          ; preds = %s5h1409_writereg.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %46)
  %cmp33 = icmp ult i8 %46, 4
  br i1 %cmp33, label %if.then35, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then35:                                        ; preds = %if.else
  %80 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool36.not = icmp eq i32 %80, 0
  br i1 %tobool36.not, label %if.then35.if.end43_crit_edge, label %do.end40

if.then35.if.end43_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

do.end40:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41) #11
  br label %if.end43

if.end43:                                         ; preds = %do.end40, %if.then35.if.end43_crit_edge
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i125) #7
  %81 = getelementptr inbounds [3 x i8], ptr %buf.i125, i32 0, i32 1
  %82 = getelementptr inbounds [3 x i8], ptr %buf.i125, i32 0, i32 2
  %83 = ptrtoint ptr %buf.i125 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 -109, ptr %buf.i125, align 1
  %84 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 51, ptr %81, align 1
  %85 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 50, ptr %82, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i126) #7
  %86 = getelementptr inbounds i8, ptr %msg.i126, i32 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 262143, ptr %86, align 4
  %88 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %config.i, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %89, align 2
  %conv5.i128 = zext i8 %91 to i16
  %92 = ptrtoint ptr %msg.i126 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv5.i128, ptr %msg.i126, align 4
  %flags.i129 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i126, i32 0, i32 1
  %93 = ptrtoint ptr %flags.i129 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 0, ptr %flags.i129, align 2
  %buf6.i131 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i126, i32 0, i32 3
  %94 = ptrtoint ptr %buf6.i131 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %buf.i125, ptr %buf6.i131, align 4
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %1, align 4
  %call.i132 = call i32 @i2c_transfer(ptr noundef %96, ptr noundef nonnull %msg.i126, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i132)
  %cmp.not.i133 = icmp eq i32 %call.i132, 1
  br i1 %cmp.not.i133, label %if.end43.s5h1409_writereg.exit138_crit_edge, label %do.end.i135

if.end43.s5h1409_writereg.exit138_crit_edge:      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit138

do.end.i135:                                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 147, i32 noundef 13106, i32 noundef %call.i132) #11
  br label %s5h1409_writereg.exit138

s5h1409_writereg.exit138:                         ; preds = %do.end.i135, %if.end43.s5h1409_writereg.exit138_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i126) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i125) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i139) #7
  %97 = getelementptr inbounds [3 x i8], ptr %buf.i139, i32 0, i32 1
  %98 = getelementptr inbounds [3 x i8], ptr %buf.i139, i32 0, i32 2
  %99 = ptrtoint ptr %buf.i139 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 -98, ptr %buf.i139, align 1
  %100 = ptrtoint ptr %97 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 44, ptr %97, align 1
  %101 = ptrtoint ptr %98 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 55, ptr %98, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i140) #7
  %102 = getelementptr inbounds i8, ptr %msg.i140, i32 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 262143, ptr %102, align 4
  %104 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %config.i, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %105, align 2
  %conv5.i142 = zext i8 %107 to i16
  %108 = ptrtoint ptr %msg.i140 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %conv5.i142, ptr %msg.i140, align 4
  %flags.i143 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i140, i32 0, i32 1
  %109 = ptrtoint ptr %flags.i143 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 0, ptr %flags.i143, align 2
  %buf6.i145 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i140, i32 0, i32 3
  %110 = ptrtoint ptr %buf6.i145 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %buf.i139, ptr %buf6.i145, align 4
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %1, align 4
  %call.i146 = call i32 @i2c_transfer(ptr noundef %112, ptr noundef nonnull %msg.i140, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i146)
  %cmp.not.i147 = icmp eq i32 %call.i146, 1
  br i1 %cmp.not.i147, label %s5h1409_writereg.exit138.s5h1409_writereg.exit152_crit_edge, label %do.end.i149

s5h1409_writereg.exit138.s5h1409_writereg.exit152_crit_edge: ; preds = %s5h1409_writereg.exit138
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit152

do.end.i149:                                      ; preds = %s5h1409_writereg.exit138
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 158, i32 noundef 11319, i32 noundef %call.i146) #11
  br label %s5h1409_writereg.exit152

s5h1409_writereg.exit152:                         ; preds = %do.end.i149, %s5h1409_writereg.exit138.s5h1409_writereg.exit152_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i140) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i139) #7
  br label %cleanup.sink.split

if.else49:                                        ; preds = %s5h1409_readreg.exit
  %113 = ptrtoint ptr %qam_state to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %qam_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %114)
  %cmp52 = icmp ult i8 %114, 3
  br i1 %cmp52, label %if.then54, label %if.else49.cleanup_crit_edge

if.else49.cleanup_crit_edge:                      ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then54:                                        ; preds = %if.else49
  %115 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool55.not = icmp eq i32 %115, 0
  br i1 %tobool55.not, label %if.then54.if.end62_crit_edge, label %do.end59

if.then54.if.end62_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

do.end59:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.41) #11
  br label %if.end62

if.end62:                                         ; preds = %do.end59, %if.then54.if.end62_crit_edge
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i153) #7
  %116 = getelementptr inbounds [3 x i8], ptr %buf.i153, i32 0, i32 1
  %117 = getelementptr inbounds [3 x i8], ptr %buf.i153, i32 0, i32 2
  %118 = ptrtoint ptr %buf.i153 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 -106, ptr %buf.i153, align 1
  %119 = ptrtoint ptr %116 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %116, align 1
  %120 = ptrtoint ptr %117 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 8, ptr %117, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i154) #7
  %121 = getelementptr inbounds i8, ptr %msg.i154, i32 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 262143, ptr %121, align 4
  %123 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %config.i, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %124, align 2
  %conv5.i156 = zext i8 %126 to i16
  %127 = ptrtoint ptr %msg.i154 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %conv5.i156, ptr %msg.i154, align 4
  %flags.i157 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i154, i32 0, i32 1
  %128 = ptrtoint ptr %flags.i157 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 0, ptr %flags.i157, align 2
  %buf6.i159 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i154, i32 0, i32 3
  %129 = ptrtoint ptr %buf6.i159 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %buf.i153, ptr %buf6.i159, align 4
  %130 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %1, align 4
  %call.i160 = call i32 @i2c_transfer(ptr noundef %131, ptr noundef nonnull %msg.i154, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i160)
  %cmp.not.i161 = icmp eq i32 %call.i160, 1
  br i1 %cmp.not.i161, label %if.end62.s5h1409_writereg.exit166_crit_edge, label %do.end.i163

if.end62.s5h1409_writereg.exit166_crit_edge:      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit166

do.end.i163:                                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 150, i32 noundef 8, i32 noundef %call.i160) #11
  br label %s5h1409_writereg.exit166

s5h1409_writereg.exit166:                         ; preds = %do.end.i163, %if.end62.s5h1409_writereg.exit166_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i154) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i153) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i167) #7
  %132 = getelementptr inbounds [3 x i8], ptr %buf.i167, i32 0, i32 1
  %133 = getelementptr inbounds [3 x i8], ptr %buf.i167, i32 0, i32 2
  %134 = ptrtoint ptr %buf.i167 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 -109, ptr %buf.i167, align 1
  %135 = ptrtoint ptr %132 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 51, ptr %132, align 1
  %136 = ptrtoint ptr %133 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 50, ptr %133, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i168) #7
  %137 = getelementptr inbounds i8, ptr %msg.i168, i32 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 262143, ptr %137, align 4
  %139 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %config.i, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %140, align 2
  %conv5.i170 = zext i8 %142 to i16
  %143 = ptrtoint ptr %msg.i168 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %conv5.i170, ptr %msg.i168, align 4
  %flags.i171 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i168, i32 0, i32 1
  %144 = ptrtoint ptr %flags.i171 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 0, ptr %flags.i171, align 2
  %buf6.i173 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i168, i32 0, i32 3
  %145 = ptrtoint ptr %buf6.i173 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %buf.i167, ptr %buf6.i173, align 4
  %146 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %1, align 4
  %call.i174 = call i32 @i2c_transfer(ptr noundef %147, ptr noundef nonnull %msg.i168, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i174)
  %cmp.not.i175 = icmp eq i32 %call.i174, 1
  br i1 %cmp.not.i175, label %s5h1409_writereg.exit166.s5h1409_writereg.exit180_crit_edge, label %do.end.i177

s5h1409_writereg.exit166.s5h1409_writereg.exit180_crit_edge: ; preds = %s5h1409_writereg.exit166
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit180

do.end.i177:                                      ; preds = %s5h1409_writereg.exit166
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i176 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 147, i32 noundef 13106, i32 noundef %call.i174) #11
  br label %s5h1409_writereg.exit180

s5h1409_writereg.exit180:                         ; preds = %do.end.i177, %s5h1409_writereg.exit166.s5h1409_writereg.exit180_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i168) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i167) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i181) #7
  %148 = getelementptr inbounds [3 x i8], ptr %buf.i181, i32 0, i32 1
  %149 = getelementptr inbounds [3 x i8], ptr %buf.i181, i32 0, i32 2
  %150 = ptrtoint ptr %buf.i181 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 -98, ptr %buf.i181, align 1
  %151 = ptrtoint ptr %148 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 44, ptr %148, align 1
  %152 = ptrtoint ptr %149 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 55, ptr %149, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i182) #7
  %153 = getelementptr inbounds i8, ptr %msg.i182, i32 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 262143, ptr %153, align 4
  %155 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %config.i, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %156, align 2
  %conv5.i184 = zext i8 %158 to i16
  %159 = ptrtoint ptr %msg.i182 to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %conv5.i184, ptr %msg.i182, align 4
  %flags.i185 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i182, i32 0, i32 1
  %160 = ptrtoint ptr %flags.i185 to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 0, ptr %flags.i185, align 2
  %buf6.i187 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i182, i32 0, i32 3
  %161 = ptrtoint ptr %buf6.i187 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %buf.i181, ptr %buf6.i187, align 4
  %162 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %1, align 4
  %call.i188 = call i32 @i2c_transfer(ptr noundef %163, ptr noundef nonnull %msg.i182, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i188)
  %cmp.not.i189 = icmp eq i32 %call.i188, 1
  br i1 %cmp.not.i189, label %s5h1409_writereg.exit180.s5h1409_writereg.exit194_crit_edge, label %do.end.i191

s5h1409_writereg.exit180.s5h1409_writereg.exit194_crit_edge: ; preds = %s5h1409_writereg.exit180
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1409_writereg.exit194

do.end.i191:                                      ; preds = %s5h1409_writereg.exit180
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i190 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 158, i32 noundef 11319, i32 noundef %call.i188) #11
  br label %s5h1409_writereg.exit194

s5h1409_writereg.exit194:                         ; preds = %do.end.i191, %s5h1409_writereg.exit180.s5h1409_writereg.exit194_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i182) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i181) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %s5h1409_writereg.exit194, %s5h1409_writereg.exit152, %s5h1409_writereg.exit124
  %.sink = phi i8 [ 4, %s5h1409_writereg.exit152 ], [ 5, %s5h1409_writereg.exit124 ], [ 3, %s5h1409_writereg.exit194 ]
  %164 = ptrtoint ptr %qam_state to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %.sink, ptr %qam_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else49.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge195, %entry.cleanup_crit_edge196
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !15, !17, !19, !20, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !141, !142, !143, !145, !147, !148, !149, !151, !152, !153}
!llvm.module.flags = !{!155, !156, !157, !158, !159, !160, !161, !162}
!llvm.ident = !{!163}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 47, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 48, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 970, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @s5h1409_attach._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @s5h1409_attach._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @__ksymtab_s5h1409_attach, !12, !"__ksymtab_s5h1409_attach", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 984, i32 1}
!13 = !{ptr @__UNIQUE_ID_description292, !14, !"__UNIQUE_ID_description292", i1 false, i1 false}
!14 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 1009, i32 1}
!15 = !{ptr @__UNIQUE_ID_author293, !16, !"__UNIQUE_ID_author293", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 1010, i32 1}
!17 = !{ptr @__UNIQUE_ID_file294, !18, !"__UNIQUE_ID_file294", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 1011, i32 1}
!19 = !{ptr @__UNIQUE_ID_license295, !18, !"__UNIQUE_ID_license295", i1 false, i1 false}
!20 = !{ptr @debug, !21, !"debug", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 46, i32 12}
!22 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 333, i32 3}
!25 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @s5h1409_readreg._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @s5h1409_readreg._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 701, i32 2}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @s5h1409_init._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @s5h1409_init._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 454, i32 2}
!35 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @s5h1409_sleep._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @s5h1409_sleep._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 463, i32 2}
!40 = !{ptr @s5h1409_register_reset._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @s5h1409_register_reset._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 312, i32 3}
!44 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @s5h1409_writereg._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @s5h1409_writereg._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @init_tab, !48, !"init_tab", i1 false, i1 false}
!48 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 56, i32 3}
!49 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 382, i32 2}
!51 = !{ptr @s5h1409_set_spectralinversion._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @s5h1409_set_spectralinversion._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 357, i32 2}
!55 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @s5h1409_set_if_freq._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @s5h1409_set_if_freq._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 440, i32 2}
!60 = !{ptr @s5h1409_set_gpio._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @s5h1409_set_gpio._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.16, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 669, i32 2}
!64 = !{ptr @s5h1409_set_mpeg_timing._entry, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @s5h1409_set_mpeg_timing._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 677, i32 3}
!68 = !{ptr @s5h1409_set_mpeg_timing._entry.17, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @s5h1409_set_mpeg_timing._entry_ptr.19, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 341, i32 2}
!72 = !{ptr @s5h1409_softreset._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @s5h1409_softreset._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 428, i32 2}
!76 = !{ptr @s5h1409_i2c_gate_ctrl._entry, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @s5h1409_i2c_gate_ctrl._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @s5h1409_ops, !79, !"s5h1409_ops", i1 false, i1 false}
!79 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 986, i32 38}
!80 = !{ptr @.str.22, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 627, i32 2}
!82 = !{ptr @.str.23, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @s5h1409_set_frontend._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @s5h1409_set_frontend._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.24, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 395, i32 2}
!87 = !{ptr @.str.25, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @s5h1409_enable_modulation._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @s5h1409_enable_modulation._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.27, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 399, i32 3}
!92 = !{ptr @s5h1409_enable_modulation._entry.26, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @s5h1409_enable_modulation._entry_ptr.28, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 407, i32 3}
!96 = !{ptr @s5h1409_enable_modulation._entry.29, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @s5h1409_enable_modulation._entry_ptr.31, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.33, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 414, i32 3}
!100 = !{ptr @s5h1409_enable_modulation._entry.32, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @s5h1409_enable_modulation._entry_ptr.34, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.35, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 569, i32 4}
!104 = !{ptr @.str.36, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @s5h1409_set_qam_interleave_mode._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @s5h1409_set_qam_interleave_mode._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.38, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 581, i32 4}
!109 = !{ptr @s5h1409_set_qam_interleave_mode._entry.37, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @s5h1409_set_qam_interleave_mode._entry_ptr.39, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.40, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 494, i32 5}
!113 = !{ptr @.str.41, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @s5h1409_set_qam_amhum_mode._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @s5h1409_set_qam_amhum_mode._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.43, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 502, i32 5}
!118 = !{ptr @s5h1409_set_qam_amhum_mode._entry.42, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @s5h1409_set_qam_amhum_mode._entry_ptr.44, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.46, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 512, i32 4}
!122 = !{ptr @s5h1409_set_qam_amhum_mode._entry.45, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @s5h1409_set_qam_amhum_mode._entry_ptr.47, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.48, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 793, i32 2}
!126 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @s5h1409_read_status._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @s5h1409_read_status._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.50, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 848, i32 2}
!131 = !{ptr @s5h1409_read_snr._entry, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @s5h1409_read_snr._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.51, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 816, i32 2}
!135 = !{ptr @s5h1409_qam64_lookup_snr._entry, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @s5h1409_qam64_lookup_snr._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @qam64_snr_tab, !138, !"qam64_snr_tab", i1 false, i1 false}
!138 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 155, i32 3}
!139 = !{ptr @.str.52, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 801, i32 2}
!141 = !{ptr @s5h1409_qam256_lookup_snr._entry, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @s5h1409_qam256_lookup_snr._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @qam256_snr_tab, !144, !"qam256_snr_tab", i1 false, i1 false}
!144 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 227, i32 3}
!145 = !{ptr @.str.53, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 831, i32 2}
!147 = !{ptr @s5h1409_vsb_lookup_snr._entry, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @s5h1409_vsb_lookup_snr._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.55, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 840, i32 2}
!151 = !{ptr @s5h1409_vsb_lookup_snr._entry.54, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @s5h1409_vsb_lookup_snr._entry_ptr.56, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @vsb_snr_tab, !154, !"vsb_snr_tab", i1 false, i1 false}
!154 = !{!"../drivers/media/dvb-frontends/s5h1409.c", i32 108, i32 3}
!155 = !{i32 1, !"wchar_size", i32 2}
!156 = !{i32 1, !"min_enum_size", i32 4}
!157 = !{i32 8, !"branch-target-enforcement", i32 0}
!158 = !{i32 8, !"sign-return-address", i32 0}
!159 = !{i32 8, !"sign-return-address-all", i32 0}
!160 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!161 = !{i32 7, !"uwtable", i32 1}
!162 = !{i32 7, !"frame-pointer", i32 2}
!163 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!164 = !{!"auto-init"}
