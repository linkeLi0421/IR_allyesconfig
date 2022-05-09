; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/s5h1411.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/s5h1411.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+s5h1411_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_s5h1411_attach\09\09\09\09"
module asm "\09.long\09__crc_s5h1411_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s5h1411_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22s5h1411_attach\22\09\09\09\09\09"
module asm "__kstrtabns_s5h1411_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.78 }
%union.anon.78 = type { ptr }
%struct.init_tab = type { i8, i8, i16 }
%struct.qam64_snr_tab = type { i16, i16 }
%struct.qam256_snr_tab = type { i16, i16 }
%struct.vsb_snr_tab = type { i16, i16 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.s5h1411_state = type { ptr, ptr, %struct.dvb_frontend, i32, i8, i32, i32, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.s5h1411_config = type { i8, i8, i16, i16, i16, i8, i8 }

@s5h1411_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Samsung S5H1411 QAM/8VSB Frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 54000000, i32 858000000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 2138112 }, [8 x i8] c"\0B\02\00\00\00\00\00\00", ptr null, ptr @s5h1411_release, ptr null, ptr @s5h1411_init, ptr @s5h1411_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5h1411_set_frontend, ptr @s5h1411_get_tune_settings, ptr @s5h1411_get_frontend, ptr @s5h1411_read_status, ptr @s5h1411_read_ber, ptr @s5h1411_read_signal_strength, ptr @s5h1411_read_snr, ptr @s5h1411_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5h1411_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@s5h1411_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Failed to initialize correctly\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s5h1411_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/s5h1411.c\00", [58 x i8] zeroinitializer }, align 32
@s5h1411_attach._entry_ptr = internal global ptr @s5h1411_attach._entry, section ".printk_index", align 4
@__kstrtab_s5h1411_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_s5h1411_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_s5h1411_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s5h1411_attach to i32), ptr @__kstrtab_s5h1411_attach, ptr @__kstrtabns_s5h1411_attach }, section "___ksymtab+s5h1411_attach", align 4
@__param_str_debug = internal constant [14 x i8] c"s5h1411.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [27 x i8] c"s5h1411.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [49 x i8] c"s5h1411.parm=debug:Enable verbose debug messages\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [66 x i8] c"s5h1411.description=Samsung S5H1411 QAM-B/ATSC Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [27 x i8] c"s5h1411.author=Steven Toth\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [49 x i8] c"s5h1411.file=drivers/media/dvb-frontends/s5h1411\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"s5h1411.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@s5h1411_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: readreg error (ret == %i)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s5h1411_readreg\00", [16 x i8] zeroinitializer }, align 32
@s5h1411_readreg._entry_ptr = internal global ptr @s5h1411_readreg._entry, section ".printk_index", align 4
@s5h1411_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"s5h1411_init\00", [19 x i8] zeroinitializer }, align 32
@s5h1411_init._entry_ptr = internal global ptr @s5h1411_init._entry, section ".printk_index", align 4
@init_tab = internal constant { [80 x %struct.init_tab], [64 x i8] } { [80 x %struct.init_tab] [%struct.init_tab { i8 25, i8 0, i16 113 }, %struct.init_tab { i8 25, i8 8, i16 71 }, %struct.init_tab { i8 25, i8 28, i16 1024 }, %struct.init_tab { i8 25, i8 30, i16 880 }, %struct.init_tab { i8 25, i8 31, i16 13356 }, %struct.init_tab { i8 25, i8 36, i16 561 }, %struct.init_tab { i8 25, i8 37, i16 4113 }, %struct.init_tab { i8 25, i8 38, i16 3847 }, %struct.init_tab { i8 25, i8 39, i16 3844 }, %struct.init_tab { i8 25, i8 40, i16 1807 }, %struct.init_tab { i8 25, i8 41, i16 10272 }, %struct.init_tab { i8 25, i8 42, i16 4142 }, %struct.init_tab { i8 25, i8 43, i16 544 }, %struct.init_tab { i8 25, i8 46, i16 3342 }, %struct.init_tab { i8 25, i8 47, i16 4115 }, %struct.init_tab { i8 25, i8 49, i16 5915 }, %struct.init_tab { i8 25, i8 50, i16 3599 }, %struct.init_tab { i8 25, i8 51, i16 3856 }, %struct.init_tab { i8 25, i8 52, i16 5902 }, %struct.init_tab { i8 25, i8 53, i16 19216 }, %struct.init_tab { i8 25, i8 54, i16 3863 }, %struct.init_tab { i8 25, i8 60, i16 5495 }, %struct.init_tab { i8 25, i8 61, i16 2074 }, %struct.init_tab { i8 25, i8 62, i16 30702 }, %struct.init_tab { i8 25, i8 64, i16 7689 }, %struct.init_tab { i8 25, i8 65, i16 3852 }, %struct.init_tab { i8 25, i8 66, i16 7952 }, %struct.init_tab { i8 25, i8 77, i16 1289 }, %struct.init_tab { i8 25, i8 78, i16 2560 }, %struct.init_tab { i8 25, i8 80, i16 0 }, %struct.init_tab { i8 25, i8 91, i16 0 }, %struct.init_tab { i8 25, i8 92, i16 8 }, %struct.init_tab { i8 25, i8 87, i16 4353 }, %struct.init_tab { i8 25, i8 101, i16 124 }, %struct.init_tab { i8 25, i8 104, i16 1298 }, %struct.init_tab { i8 25, i8 105, i16 600 }, %struct.init_tab { i8 25, i8 112, i16 4 }, %struct.init_tab { i8 25, i8 113, i16 7 }, %struct.init_tab { i8 25, i8 118, i16 169 }, %struct.init_tab { i8 25, i8 120, i16 12609 }, %struct.init_tab { i8 25, i8 122, i16 12609 }, %struct.init_tab { i8 25, i8 -77, i16 -32765 }, %struct.init_tab { i8 25, i8 -75, i16 -22853 }, %struct.init_tab { i8 25, i8 -74, i16 1545 }, %struct.init_tab { i8 25, i8 -73, i16 12038 }, %struct.init_tab { i8 25, i8 -72, i16 63 }, %struct.init_tab { i8 25, i8 -71, i16 9984 }, %struct.init_tab { i8 25, i8 -70, i16 -1336 }, %struct.init_tab { i8 25, i8 -66, i16 4099 }, %struct.init_tab { i8 25, i8 -65, i16 4159 }, %struct.init_tab { i8 25, i8 -50, i16 8192 }, %struct.init_tab { i8 25, i8 -49, i16 2048 }, %struct.init_tab { i8 25, i8 -48, i16 2048 }, %struct.init_tab { i8 25, i8 -47, i16 1024 }, %struct.init_tab { i8 25, i8 -46, i16 2048 }, %struct.init_tab { i8 25, i8 -45, i16 8192 }, %struct.init_tab { i8 25, i8 -44, i16 12288 }, %struct.init_tab { i8 25, i8 -37, i16 19099 }, %struct.init_tab { i8 25, i8 -36, i16 4096 }, %struct.init_tab { i8 25, i8 -34, i16 1 }, %struct.init_tab { i8 25, i8 -33, i16 0 }, %struct.init_tab { i8 25, i8 -29, i16 769 }, %struct.init_tab { i8 26, i8 -13, i16 0 }, %struct.init_tab { i8 26, i8 -13, i16 1 }, %struct.init_tab { i8 26, i8 8, i16 1536 }, %struct.init_tab { i8 26, i8 24, i16 16897 }, %struct.init_tab { i8 26, i8 30, i16 25718 }, %struct.init_tab { i8 26, i8 33, i16 2096 }, %struct.init_tab { i8 26, i8 12, i16 22137 }, %struct.init_tab { i8 26, i8 13, i16 22427 }, %struct.init_tab { i8 26, i8 36, i16 258 }, %struct.init_tab { i8 26, i8 49, i16 29832 }, %struct.init_tab { i8 26, i8 50, i16 2568 }, %struct.init_tab { i8 26, i8 61, i16 -31095 }, %struct.init_tab { i8 26, i8 73, i16 72 }, %struct.init_tab { i8 26, i8 87, i16 8210 }, %struct.init_tab { i8 26, i8 93, i16 30326 }, %struct.init_tab { i8 26, i8 4, i16 1024 }, %struct.init_tab { i8 26, i8 88, i16 192 }, %struct.init_tab { i8 26, i8 91, i16 256 }], [64 x i8] zeroinitializer }, align 32
@s5h1411_register_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.7, ptr @.str.2, i32 570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s5h1411_register_reset\00", [41 x i8] zeroinitializer }, align 32
@s5h1411_register_reset._entry_ptr = internal global ptr @s5h1411_register_reset._entry, section ".printk_index", align 4
@s5h1411_set_serialmode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s(%d)\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s5h1411_set_serialmode\00", [41 x i8] zeroinitializer }, align 32
@s5h1411_set_serialmode._entry_ptr = internal global ptr @s5h1411_set_serialmode._entry, section ".printk_index", align 4
@s5h1411_set_spectralinversion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.10, ptr @.str.2, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"s5h1411_set_spectralinversion\00", [34 x i8] zeroinitializer }, align 32
@s5h1411_set_spectralinversion._entry_ptr = internal global ptr @s5h1411_set_spectralinversion._entry, section ".printk_index", align 4
@s5h1411_set_if_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s(%d KHz)\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s5h1411_set_if_freq\00", [44 x i8] zeroinitializer }, align 32
@s5h1411_set_if_freq._entry_ptr = internal global ptr @s5h1411_set_if_freq._entry, section ".printk_index", align 4
@s5h1411_set_if_freq._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s(%d KHz) Invalid, defaulting to 5380\0A\00", [56 x i8] zeroinitializer }, align 32
@s5h1411_set_if_freq._entry_ptr.15 = internal global ptr @s5h1411_set_if_freq._entry.13, section ".printk_index", align 4
@s5h1411_set_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.16, ptr @.str.2, i32 534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s5h1411_set_gpio\00", [47 x i8] zeroinitializer }, align 32
@s5h1411_set_gpio._entry_ptr = internal global ptr @s5h1411_set_gpio._entry, section ".printk_index", align 4
@s5h1411_set_mpeg_timing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.17, ptr @.str.2, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"s5h1411_set_mpeg_timing\00", [40 x i8] zeroinitializer }, align 32
@s5h1411_set_mpeg_timing._entry_ptr = internal global ptr @s5h1411_set_mpeg_timing._entry, section ".printk_index", align 4
@s5h1411_set_mpeg_timing._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s(%d) Mode1 or Defaulting\0A\00", [36 x i8] zeroinitializer }, align 32
@s5h1411_set_mpeg_timing._entry_ptr.20 = internal global ptr @s5h1411_set_mpeg_timing._entry.18, section ".printk_index", align 4
@s5h1411_softreset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.21, ptr @.str.2, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s5h1411_softreset\00", [46 x i8] zeroinitializer }, align 32
@s5h1411_softreset._entry_ptr = internal global ptr @s5h1411_softreset._entry, section ".printk_index", align 4
@s5h1411_i2c_gate_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.22, ptr @.str.2, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s5h1411_i2c_gate_ctrl\00", [42 x i8] zeroinitializer }, align 32
@s5h1411_i2c_gate_ctrl._entry_ptr = internal global ptr @s5h1411_i2c_gate_ctrl._entry, section ".printk_index", align 4
@s5h1411_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: writereg error 0x%02x 0x%02x 0x%04x, ret == %i)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s5h1411_writereg\00", [47 x i8] zeroinitializer }, align 32
@s5h1411_writereg._entry_ptr = internal global ptr @s5h1411_writereg._entry, section ".printk_index", align 4
@s5h1411_set_powerstate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.25, ptr @.str.2, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s5h1411_set_powerstate\00", [41 x i8] zeroinitializer }, align 32
@s5h1411_set_powerstate._entry_ptr = internal global ptr @s5h1411_set_powerstate._entry, section ".printk_index", align 4
@s5h1411_set_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s(frequency=%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s5h1411_set_frontend\00", [43 x i8] zeroinitializer }, align 32
@s5h1411_set_frontend._entry_ptr = internal global ptr @s5h1411_set_frontend._entry, section ".printk_index", align 4
@s5h1411_enable_modulation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s(0x%08x)\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"s5h1411_enable_modulation\00", [38 x i8] zeroinitializer }, align 32
@s5h1411_enable_modulation._entry_ptr = internal global ptr @s5h1411_enable_modulation._entry, section ".printk_index", align 4
@s5h1411_enable_modulation._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s() Already at desired modulation.  Skipping...\0A\00", [46 x i8] zeroinitializer }, align 32
@s5h1411_enable_modulation._entry_ptr.32 = internal global ptr @s5h1411_enable_modulation._entry.30, section ".printk_index", align 4
@s5h1411_enable_modulation._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.2, i32 489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s() VSB_8\0A\00", [20 x i8] zeroinitializer }, align 32
@s5h1411_enable_modulation._entry_ptr.35 = internal global ptr @s5h1411_enable_modulation._entry.33, section ".printk_index", align 4
@s5h1411_enable_modulation._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.2, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s() QAM_AUTO (64/256)\0A\00", [40 x i8] zeroinitializer }, align 32
@s5h1411_enable_modulation._entry_ptr.38 = internal global ptr @s5h1411_enable_modulation._entry.36, section ".printk_index", align 4
@s5h1411_enable_modulation._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.29, ptr @.str.2, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s() Invalid modulation\0A\00", [39 x i8] zeroinitializer }, align 32
@s5h1411_enable_modulation._entry_ptr.41 = internal global ptr @s5h1411_enable_modulation._entry.39, section ".printk_index", align 4
@s5h1411_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s() status 0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s5h1411_read_status\00", [44 x i8] zeroinitializer }, align 32
@s5h1411_read_status._entry_ptr = internal global ptr @s5h1411_read_status._entry, section ".printk_index", align 4
@s5h1411_read_snr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.44, ptr @.str.2, i32 762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s5h1411_read_snr\00", [47 x i8] zeroinitializer }, align 32
@s5h1411_read_snr._entry_ptr = internal global ptr @s5h1411_read_snr._entry, section ".printk_index", align 4
@s5h1411_qam64_lookup_snr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.45, ptr @.str.2, i32 730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"s5h1411_qam64_lookup_snr\00", [39 x i8] zeroinitializer }, align 32
@s5h1411_qam64_lookup_snr._entry_ptr = internal global ptr @s5h1411_qam64_lookup_snr._entry, section ".printk_index", align 4
@qam64_snr_tab = internal constant { [66 x %struct.qam64_snr_tab], [88 x i8] } { [66 x %struct.qam64_snr_tab] [%struct.qam64_snr_tab { i16 1, i16 0 }, %struct.qam64_snr_tab { i16 2800, i16 300 }, %struct.qam64_snr_tab { i16 3456, i16 290 }, %struct.qam64_snr_tab { i16 4256, i16 280 }, %struct.qam64_snr_tab { i16 5301, i16 270 }, %struct.qam64_snr_tab { i16 5520, i16 268 }, %struct.qam64_snr_tab { i16 5760, i16 266 }, %struct.qam64_snr_tab { i16 6064, i16 264 }, %struct.qam64_snr_tab { i16 6336, i16 262 }, %struct.qam64_snr_tab { i16 6576, i16 260 }, %struct.qam64_snr_tab { i16 6864, i16 258 }, %struct.qam64_snr_tab { i16 7424, i16 256 }, %struct.qam64_snr_tab { i16 7584, i16 254 }, %struct.qam64_snr_tab { i16 7920, i16 252 }, %struct.qam64_snr_tab { i16 8272, i16 250 }, %struct.qam64_snr_tab { i16 8432, i16 249 }, %struct.qam64_snr_tab { i16 8656, i16 248 }, %struct.qam64_snr_tab { i16 8880, i16 247 }, %struct.qam64_snr_tab { i16 9120, i16 246 }, %struct.qam64_snr_tab { i16 9328, i16 245 }, %struct.qam64_snr_tab { i16 9456, i16 244 }, %struct.qam64_snr_tab { i16 9632, i16 243 }, %struct.qam64_snr_tab { i16 9920, i16 242 }, %struct.qam64_snr_tab { i16 10160, i16 241 }, %struct.qam64_snr_tab { i16 10448, i16 240 }, %struct.qam64_snr_tab { i16 10672, i16 239 }, %struct.qam64_snr_tab { i16 10960, i16 238 }, %struct.qam64_snr_tab { i16 11168, i16 237 }, %struct.qam64_snr_tab { i16 11392, i16 236 }, %struct.qam64_snr_tab { i16 11552, i16 235 }, %struct.qam64_snr_tab { i16 11776, i16 234 }, %struct.qam64_snr_tab { i16 12048, i16 233 }, %struct.qam64_snr_tab { i16 12368, i16 232 }, %struct.qam64_snr_tab { i16 12688, i16 231 }, %struct.qam64_snr_tab { i16 13056, i16 230 }, %struct.qam64_snr_tab { i16 13120, i16 229 }, %struct.qam64_snr_tab { i16 12800, i16 228 }, %struct.qam64_snr_tab { i16 13648, i16 227 }, %struct.qam64_snr_tab { i16 13840, i16 226 }, %struct.qam64_snr_tab { i16 13824, i16 225 }, %struct.qam64_snr_tab { i16 14080, i16 224 }, %struct.qam64_snr_tab { i16 14336, i16 223 }, %struct.qam64_snr_tab { i16 14624, i16 222 }, %struct.qam64_snr_tab { i16 14880, i16 221 }, %struct.qam64_snr_tab { i16 15152, i16 220 }, %struct.qam64_snr_tab { i16 15616, i16 219 }, %struct.qam64_snr_tab { i16 15872, i16 218 }, %struct.qam64_snr_tab { i16 16384, i16 217 }, %struct.qam64_snr_tab { i16 16640, i16 216 }, %struct.qam64_snr_tab { i16 17152, i16 215 }, %struct.qam64_snr_tab { i16 17408, i16 214 }, %struct.qam64_snr_tab { i16 17920, i16 213 }, %struct.qam64_snr_tab { i16 18176, i16 212 }, %struct.qam64_snr_tab { i16 18432, i16 211 }, %struct.qam64_snr_tab { i16 18944, i16 210 }, %struct.qam64_snr_tab { i16 19200, i16 209 }, %struct.qam64_snr_tab { i16 19712, i16 208 }, %struct.qam64_snr_tab { i16 20224, i16 207 }, %struct.qam64_snr_tab { i16 20560, i16 206 }, %struct.qam64_snr_tab { i16 20992, i16 205 }, %struct.qam64_snr_tab { i16 21440, i16 204 }, %struct.qam64_snr_tab { i16 21584, i16 203 }, %struct.qam64_snr_tab { i16 22096, i16 202 }, %struct.qam64_snr_tab { i16 22560, i16 201 }, %struct.qam64_snr_tab { i16 24576, i16 200 }, %struct.qam64_snr_tab { i16 -1, i16 0 }], [88 x i8] zeroinitializer }, align 32
@s5h1411_qam256_lookup_snr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.46, ptr @.str.2, i32 715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"s5h1411_qam256_lookup_snr\00", [38 x i8] zeroinitializer }, align 32
@s5h1411_qam256_lookup_snr._entry_ptr = internal global ptr @s5h1411_qam256_lookup_snr._entry, section ".printk_index", align 4
@qam256_snr_tab = internal constant { [72 x %struct.qam256_snr_tab], [64 x i8] } { [72 x %struct.qam256_snr_tab] [%struct.qam256_snr_tab { i16 1, i16 0 }, %struct.qam256_snr_tab { i16 2416, i16 400 }, %struct.qam256_snr_tab { i16 2704, i16 390 }, %struct.qam256_snr_tab { i16 2960, i16 380 }, %struct.qam256_snr_tab { i16 3472, i16 370 }, %struct.qam256_snr_tab { i16 4080, i16 360 }, %struct.qam256_snr_tab { i16 4672, i16 350 }, %struct.qam256_snr_tab { i16 4933, i16 348 }, %struct.qam256_snr_tab { i16 5056, i16 346 }, %struct.qam256_snr_tab { i16 5312, i16 344 }, %struct.qam256_snr_tab { i16 5376, i16 342 }, %struct.qam256_snr_tab { i16 5648, i16 340 }, %struct.qam256_snr_tab { i16 5888, i16 338 }, %struct.qam256_snr_tab { i16 6144, i16 336 }, %struct.qam256_snr_tab { i16 6320, i16 334 }, %struct.qam256_snr_tab { i16 6400, i16 332 }, %struct.qam256_snr_tab { i16 6832, i16 330 }, %struct.qam256_snr_tab { i16 7104, i16 328 }, %struct.qam256_snr_tab { i16 7344, i16 326 }, %struct.qam256_snr_tab { i16 7600, i16 324 }, %struct.qam256_snr_tab { i16 7856, i16 322 }, %struct.qam256_snr_tab { i16 8240, i16 320 }, %struct.qam256_snr_tab { i16 8704, i16 318 }, %struct.qam256_snr_tab { i16 8832, i16 316 }, %struct.qam256_snr_tab { i16 9232, i16 314 }, %struct.qam256_snr_tab { i16 9648, i16 312 }, %struct.qam256_snr_tab { i16 10144, i16 310 }, %struct.qam256_snr_tab { i16 10304, i16 308 }, %struct.qam256_snr_tab { i16 10704, i16 306 }, %struct.qam256_snr_tab { i16 11024, i16 304 }, %struct.qam256_snr_tab { i16 11568, i16 302 }, %struct.qam256_snr_tab { i16 12064, i16 300 }, %struct.qam256_snr_tab { i16 12480, i16 298 }, %struct.qam256_snr_tab { i16 12896, i16 297 }, %struct.qam256_snr_tab { i16 12992, i16 296 }, %struct.qam256_snr_tab { i16 13056, i16 295 }, %struct.qam256_snr_tab { i16 13232, i16 294 }, %struct.qam256_snr_tab { i16 13488, i16 293 }, %struct.qam256_snr_tab { i16 13728, i16 292 }, %struct.qam256_snr_tab { i16 13904, i16 291 }, %struct.qam256_snr_tab { i16 14336, i16 290 }, %struct.qam256_snr_tab { i16 14592, i16 289 }, %struct.qam256_snr_tab { i16 14928, i16 288 }, %struct.qam256_snr_tab { i16 15152, i16 287 }, %struct.qam256_snr_tab { i16 15536, i16 286 }, %struct.qam256_snr_tab { i16 15904, i16 285 }, %struct.qam256_snr_tab { i16 16288, i16 284 }, %struct.qam256_snr_tab { i16 16544, i16 283 }, %struct.qam256_snr_tab { i16 16832, i16 282 }, %struct.qam256_snr_tab { i16 17136, i16 281 }, %struct.qam256_snr_tab { i16 17568, i16 280 }, %struct.qam256_snr_tab { i16 17920, i16 279 }, %struct.qam256_snr_tab { i16 18352, i16 278 }, %struct.qam256_snr_tab { i16 18688, i16 277 }, %struct.qam256_snr_tab { i16 18944, i16 276 }, %struct.qam256_snr_tab { i16 19360, i16 275 }, %struct.qam256_snr_tab { i16 19712, i16 274 }, %struct.qam256_snr_tab { i16 20224, i16 273 }, %struct.qam256_snr_tab { i16 20480, i16 272 }, %struct.qam256_snr_tab { i16 20976, i16 272 }, %struct.qam256_snr_tab { i16 21408, i16 270 }, %struct.qam256_snr_tab { i16 21792, i16 269 }, %struct.qam256_snr_tab { i16 22272, i16 268 }, %struct.qam256_snr_tab { i16 22528, i16 267 }, %struct.qam256_snr_tab { i16 23040, i16 266 }, %struct.qam256_snr_tab { i16 23552, i16 265 }, %struct.qam256_snr_tab { i16 23808, i16 264 }, %struct.qam256_snr_tab { i16 24320, i16 263 }, %struct.qam256_snr_tab { i16 24576, i16 262 }, %struct.qam256_snr_tab { i16 25088, i16 261 }, %struct.qam256_snr_tab { i16 25600, i16 260 }, %struct.qam256_snr_tab { i16 -1, i16 0 }], [64 x i8] zeroinitializer }, align 32
@s5h1411_vsb_lookup_snr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.47, ptr @.str.2, i32 745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s5h1411_vsb_lookup_snr\00", [41 x i8] zeroinitializer }, align 32
@s5h1411_vsb_lookup_snr._entry_ptr = internal global ptr @s5h1411_vsb_lookup_snr._entry, section ".printk_index", align 4
@vsb_snr_tab = internal constant { [38 x %struct.vsb_snr_tab], [40 x i8] } { [38 x %struct.vsb_snr_tab] [%struct.vsb_snr_tab { i16 927, i16 300 }, %struct.vsb_snr_tab { i16 923, i16 295 }, %struct.vsb_snr_tab { i16 919, i16 290 }, %struct.vsb_snr_tab { i16 916, i16 285 }, %struct.vsb_snr_tab { i16 911, i16 280 }, %struct.vsb_snr_tab { i16 907, i16 275 }, %struct.vsb_snr_tab { i16 903, i16 270 }, %struct.vsb_snr_tab { i16 898, i16 265 }, %struct.vsb_snr_tab { i16 893, i16 260 }, %struct.vsb_snr_tab { i16 887, i16 255 }, %struct.vsb_snr_tab { i16 880, i16 250 }, %struct.vsb_snr_tab { i16 874, i16 245 }, %struct.vsb_snr_tab { i16 868, i16 240 }, %struct.vsb_snr_tab { i16 859, i16 235 }, %struct.vsb_snr_tab { i16 851, i16 230 }, %struct.vsb_snr_tab { i16 841, i16 225 }, %struct.vsb_snr_tab { i16 832, i16 220 }, %struct.vsb_snr_tab { i16 823, i16 215 }, %struct.vsb_snr_tab { i16 807, i16 210 }, %struct.vsb_snr_tab { i16 795, i16 205 }, %struct.vsb_snr_tab { i16 784, i16 200 }, %struct.vsb_snr_tab { i16 770, i16 195 }, %struct.vsb_snr_tab { i16 755, i16 190 }, %struct.vsb_snr_tab { i16 740, i16 185 }, %struct.vsb_snr_tab { i16 727, i16 180 }, %struct.vsb_snr_tab { i16 717, i16 175 }, %struct.vsb_snr_tab { i16 699, i16 170 }, %struct.vsb_snr_tab { i16 681, i16 165 }, %struct.vsb_snr_tab { i16 670, i16 160 }, %struct.vsb_snr_tab { i16 644, i16 155 }, %struct.vsb_snr_tab { i16 634, i16 150 }, %struct.vsb_snr_tab { i16 608, i16 145 }, %struct.vsb_snr_tab { i16 570, i16 140 }, %struct.vsb_snr_tab { i16 548, i16 135 }, %struct.vsb_snr_tab { i16 531, i16 130 }, %struct.vsb_snr_tab { i16 516, i16 125 }, %struct.vsb_snr_tab { i16 510, i16 120 }, %struct.vsb_snr_tab zeroinitializer], [40 x i8] zeroinitializer }, align 32
@s5h1411_vsb_lookup_snr._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s() snr=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@s5h1411_vsb_lookup_snr._entry_ptr.50 = internal global ptr @s5h1411_vsb_lookup_snr._entry.48, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.51 = internal global [7 x i64] [i64 5, i64 32, i64 3250, i64 3500, i64 4000, i64 5380, i64 44000]
@__sancov_gen_cov_switch_values.52 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 7]
@___asan_gen_.56 = private unnamed_addr constant [12 x i8] c"s5h1411_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 905, i32 38 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 886, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 37, i32 12 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 360, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 613, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [9 x i8] c"init_tab\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 49, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 570, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 465, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 450, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 380, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 399, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 534, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 420, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 428, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 369, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 521, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 341, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 549, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 581, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 479, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 482, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 489, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 498, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 506, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 707, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 762, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 730, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant [14 x i8] c"qam64_snr_tab\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 181, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 715, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant [15 x i8] c"qam256_snr_tab\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 254, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 745, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant [12 x i8] c"vsb_snr_tab\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 136, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.264 = private constant [41 x i8] c"../drivers/media/dvb-frontends/s5h1411.c\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 754, i32 2 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_s5h1411_attach, ptr @__param_debug, ptr @s5h1411_attach._entry, ptr @s5h1411_attach._entry_ptr, ptr @s5h1411_enable_modulation._entry, ptr @s5h1411_enable_modulation._entry.30, ptr @s5h1411_enable_modulation._entry.33, ptr @s5h1411_enable_modulation._entry.36, ptr @s5h1411_enable_modulation._entry.39, ptr @s5h1411_enable_modulation._entry_ptr, ptr @s5h1411_enable_modulation._entry_ptr.32, ptr @s5h1411_enable_modulation._entry_ptr.35, ptr @s5h1411_enable_modulation._entry_ptr.38, ptr @s5h1411_enable_modulation._entry_ptr.41, ptr @s5h1411_i2c_gate_ctrl._entry, ptr @s5h1411_i2c_gate_ctrl._entry_ptr, ptr @s5h1411_init._entry, ptr @s5h1411_init._entry_ptr, ptr @s5h1411_qam256_lookup_snr._entry, ptr @s5h1411_qam256_lookup_snr._entry_ptr, ptr @s5h1411_qam64_lookup_snr._entry, ptr @s5h1411_qam64_lookup_snr._entry_ptr, ptr @s5h1411_read_snr._entry, ptr @s5h1411_read_snr._entry_ptr, ptr @s5h1411_read_status._entry, ptr @s5h1411_read_status._entry_ptr, ptr @s5h1411_readreg._entry, ptr @s5h1411_readreg._entry_ptr, ptr @s5h1411_register_reset._entry, ptr @s5h1411_register_reset._entry_ptr, ptr @s5h1411_set_frontend._entry, ptr @s5h1411_set_frontend._entry_ptr, ptr @s5h1411_set_gpio._entry, ptr @s5h1411_set_gpio._entry_ptr, ptr @s5h1411_set_if_freq._entry, ptr @s5h1411_set_if_freq._entry.13, ptr @s5h1411_set_if_freq._entry_ptr, ptr @s5h1411_set_if_freq._entry_ptr.15, ptr @s5h1411_set_mpeg_timing._entry, ptr @s5h1411_set_mpeg_timing._entry.18, ptr @s5h1411_set_mpeg_timing._entry_ptr, ptr @s5h1411_set_mpeg_timing._entry_ptr.20, ptr @s5h1411_set_powerstate._entry, ptr @s5h1411_set_powerstate._entry_ptr, ptr @s5h1411_set_serialmode._entry, ptr @s5h1411_set_serialmode._entry_ptr, ptr @s5h1411_set_spectralinversion._entry, ptr @s5h1411_set_spectralinversion._entry_ptr, ptr @s5h1411_softreset._entry, ptr @s5h1411_softreset._entry_ptr, ptr @s5h1411_vsb_lookup_snr._entry, ptr @s5h1411_vsb_lookup_snr._entry.48, ptr @s5h1411_vsb_lookup_snr._entry_ptr, ptr @s5h1411_vsb_lookup_snr._entry_ptr.50, ptr @s5h1411_writereg._entry, ptr @s5h1411_writereg._entry_ptr, ptr @s5h1411_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @debug, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @init_tab, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @qam64_snr_tab, ptr @.str.46, ptr @qam256_snr_tab, ptr @.str.47, ptr @vsb_snr_tab, ptr @.str.49], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1411_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1411_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1411_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1411_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_tab to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1411_register_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1411_set_serialmode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1411_set_spectralinversion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1411_set_if_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1411_set_if_freq._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1411_set_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1411_set_mpeg_timing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1411_set_mpeg_timing._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1411_softreset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1411_i2c_gate_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1411_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1411_set_powerstate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1411_set_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1411_enable_modulation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1411_enable_modulation._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1411_enable_modulation._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1411_enable_modulation._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1411_enable_modulation._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1411_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1411_read_snr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1411_qam64_lookup_snr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qam64_snr_tab to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1411_qam256_lookup_snr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qam256_snr_tab to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1411_vsb_lookup_snr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsb_snr_tab to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1411_vsb_lookup_snr._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @s5h1411_attach(ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  %buf.i.i = alloca [3 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i37 = alloca [3 x i8], align 1
  %msg.i38 = alloca %struct.i2c_msg, align 4
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
  %config1 = getelementptr inbounds %struct.s5h1411_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %config, ptr %config1, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %call7.i.i, align 8
  %current_modulation = getelementptr inbounds %struct.s5h1411_state, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %current_modulation to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 7, ptr %current_modulation, align 8
  %inversion = getelementptr inbounds %struct.s5h1411_config, ptr %config, i32 0, i32 5
  %4 = ptrtoint ptr %inversion to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %inversion, align 2
  %inversion4 = getelementptr inbounds %struct.s5h1411_state, ptr %call7.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %inversion4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %inversion4, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %7 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 5, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i) #7
  %8 = ptrtoint ptr %b1.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %b1.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 16)
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 25, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %9, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 25, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %17 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 2, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b1.i, ptr %buf7.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.s5h1411_readreg.exit_crit_edge, label %do.end.i

if.end.s5h1411_readreg.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_readreg.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i) #11
  br label %s5h1411_readreg.exit

s5h1411_readreg.exit:                             ; preds = %do.end.i, %if.end.s5h1411_readreg.exit_crit_edge
  %19 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %b1.i, align 2
  %conv12.i = zext i8 %20 to i16
  %shl.i = shl nuw i16 %conv12.i, 8
  %arrayidx13.i = getelementptr inbounds [2 x i8], ptr %b1.i, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %22 to i16
  %or.i = or i16 %shl.i, %conv14.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 102, i16 %or.i)
  %cmp6.not = icmp eq i16 %or.i, 102
  br i1 %cmp6.not, label %if.end9, label %s5h1411_readreg.exit.error_crit_edge

s5h1411_readreg.exit.error_crit_edge:             ; preds = %s5h1411_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end9:                                          ; preds = %s5h1411_readreg.exit
  %frontend = getelementptr inbounds %struct.s5h1411_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.s5h1411_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %23 = call ptr @memcpy(ptr %ops, ptr @s5h1411_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.s5h1411_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  %call12 = call i32 @s5h1411_init(ptr noundef %frontend)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i37) #7
  %25 = getelementptr inbounds [3 x i8], ptr %buf.i37, i32 0, i32 1
  %26 = getelementptr inbounds [3 x i8], ptr %buf.i37, i32 0, i32 2
  %27 = ptrtoint ptr %buf.i37 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -11, ptr %buf.i37, align 1
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %25, align 1
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %26, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i38) #7
  %30 = getelementptr inbounds i8, ptr %msg.i38, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 262143, ptr %30, align 4
  %32 = ptrtoint ptr %msg.i38 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 25, ptr %msg.i38, align 4
  %flags.i39 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i39 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i39, align 2
  %buf7.i41 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 0, i32 3
  %34 = ptrtoint ptr %buf7.i41 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %buf.i37, ptr %buf7.i41, align 4
  %35 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call7.i.i, align 8
  %call.i42 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %msg.i38, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i42)
  %cmp.not.i43 = icmp eq i32 %call.i42, 1
  br i1 %cmp.not.i43, label %if.end9.s5h1411_writereg.exit_crit_edge, label %do.end.i44

if.end9.s5h1411_writereg.exit_crit_edge:          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_writereg.exit

do.end.i44:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 25, i32 noundef 245, i32 noundef 1, i32 noundef %call.i42) #11
  br label %s5h1411_writereg.exit

s5h1411_writereg.exit:                            ; preds = %do.end.i44, %if.end9.s5h1411_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i38) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i37) #7
  %37 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %demodulator_priv, align 8
  %39 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i, label %s5h1411_writereg.exit.do.end3.i_crit_edge, label %do.end.i46

s5h1411_writereg.exit.do.end3.i_crit_edge:        ; preds = %s5h1411_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i46:                                       ; preds = %s5h1411_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.25, i32 noundef 1) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i46, %s5h1411_writereg.exit.do.end3.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i) #7
  %40 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 1
  %41 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -12, ptr %buf.i.i, align 1
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %40, align 1
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %41, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %45 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 262143, ptr %45, align 4
  %47 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 25, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %flags.i.i, align 2
  %buf7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %49 = ptrtoint ptr %buf7.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %buf.i.i, ptr %buf7.i.i, align 4
  %50 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %38, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %do.end3.i.s5h1411_set_powerstate.exit_crit_edge, label %do.end.i.i

do.end3.i.s5h1411_set_powerstate.exit_crit_edge:  ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_set_powerstate.exit

do.end.i.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 25, i32 noundef 244, i32 noundef 1, i32 noundef %call.i.i) #11
  br label %s5h1411_set_powerstate.exit

s5h1411_set_powerstate.exit:                      ; preds = %do.end.i.i, %do.end3.i.s5h1411_set_powerstate.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #7
  br label %cleanup

error:                                            ; preds = %s5h1411_readreg.exit.error_crit_edge, %entry.error_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %s5h1411_set_powerstate.exit
  %retval.0 = phi ptr [ null, %error ], [ %frontend, %s5h1411_set_powerstate.exit ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5h1411_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i10.i = alloca [3 x i8], align 1
  %msg.i11.i = alloca %struct.i2c_msg, align 4
  %buf.i1.i97 = alloca [3 x i8], align 1
  %msg.i2.i98 = alloca %struct.i2c_msg, align 4
  %b0.i.i99 = alloca [1 x i8], align 1
  %b1.i.i100 = alloca [2 x i8], align 2
  %msg.i.i101 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i9.i = alloca [3 x i8], align 1
  %msg.i10.i = alloca %struct.i2c_msg, align 4
  %buf.i1.i65 = alloca [3 x i8], align 1
  %msg.i2.i66 = alloca %struct.i2c_msg, align 4
  %b0.i.i67 = alloca [1 x i8], align 1
  %b1.i.i68 = alloca [2 x i8], align 2
  %msg.i.i69 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i1.i = alloca [3 x i8], align 1
  %msg.i2.i = alloca %struct.i2c_msg, align 4
  %b0.i.i = alloca [1 x i8], align 1
  %b1.i.i = alloca [2 x i8], align 2
  %msg.i.i52 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [3 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
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
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  tail call fastcc void @s5h1411_set_powerstate(ptr noundef %fe, i32 noundef 0)
  %3 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %demodulator_priv, align 4
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %do.end3.do.end3.i_crit_edge, label %do.end.i

do.end3.do.end3.i_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %do.end3.do.end3.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i) #7
  %6 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 1
  %7 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -13, ptr %buf.i.i, align 1
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %6, align 1
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %11 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 262143, ptr %11, align 4
  %13 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 25, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i.i, align 2
  %buf7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf.i.i, ptr %buf7.i.i, align 4
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %4, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %do.end3.i.s5h1411_register_reset.exit_crit_edge, label %do.end.i.i

do.end3.i.s5h1411_register_reset.exit_crit_edge:  ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_register_reset.exit

do.end.i.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 25, i32 noundef 243, i32 noundef 0, i32 noundef %call.i.i) #11
  br label %s5h1411_register_reset.exit

s5h1411_register_reset.exit:                      ; preds = %do.end.i.i, %do.end3.i.s5h1411_register_reset.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #7
  %18 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %19 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %20 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %s5h1411_writereg.exit.for.body_crit_edge, %s5h1411_register_reset.exit
  %i.0141 = phi i32 [ 0, %s5h1411_register_reset.exit ], [ %inc, %s5h1411_writereg.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [80 x %struct.init_tab], ptr @init_tab, i32 0, i32 %i.0141
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 2
  %reg = getelementptr [80 x %struct.init_tab], ptr @init_tab, i32 0, i32 %i.0141, i32 1
  %23 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %reg, align 1
  %data = getelementptr [80 x %struct.init_tab], ptr @init_tab, i32 0, i32 %i.0141, i32 2
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %data, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %27 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %24, ptr %buf.i, align 1
  %28 = lshr i16 %26, 8
  %conv1.i = trunc i16 %28 to i8
  %29 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv1.i, ptr %18, align 1
  %conv4.i = trunc i16 %26 to i8
  %30 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv4.i, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %31 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 262143, ptr %20, align 4
  %conv6.i = zext i8 %22 to i16
  %32 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv6.i, ptr %msg.i, align 4
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i, align 2
  %34 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %buf.i, ptr %buf7.i, align 4
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %call.i50 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i50)
  %cmp.not.i = icmp eq i32 %call.i50, 1
  br i1 %cmp.not.i, label %for.body.s5h1411_writereg.exit_crit_edge, label %do.end.i51

for.body.s5h1411_writereg.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_writereg.exit

do.end.i51:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i16 %26 to i32
  %conv9.i = zext i8 %22 to i32
  %conv10.i = zext i8 %24 to i32
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef %conv9.i, i32 noundef %conv10.i, i32 noundef %conv.i, i32 noundef %call.i50) #11
  br label %s5h1411_writereg.exit

s5h1411_writereg.exit:                            ; preds = %do.end.i51, %for.body.s5h1411_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  %inc = add nuw nsw i32 %i.0141, 1
  %exitcond.not = icmp eq i32 %inc, 80
  br i1 %exitcond.not, label %for.end, label %s5h1411_writereg.exit.for.body_crit_edge

s5h1411_writereg.exit.for.body_crit_edge:         ; preds = %s5h1411_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %s5h1411_writereg.exit
  %current_modulation = getelementptr inbounds %struct.s5h1411_state, ptr %1, i32 0, i32 3
  %37 = ptrtoint ptr %current_modulation to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 7, ptr %current_modulation, align 4
  %first_tune = getelementptr inbounds %struct.s5h1411_state, ptr %1, i32 0, i32 4
  %38 = ptrtoint ptr %first_tune to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load = load i8, ptr %first_tune, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %first_tune, align 4
  %config = getelementptr inbounds %struct.s5h1411_state, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %config, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %42)
  %cmp9 = icmp eq i8 %42, 1
  %. = zext i1 %cmp9 to i32
  call fastcc void @s5h1411_set_serialmode(ptr noundef %fe, i32 noundef %.)
  %43 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %config, align 4
  %inversion = getelementptr inbounds %struct.s5h1411_config, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %inversion to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %inversion, align 2
  %47 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %demodulator_priv, align 4
  %49 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i54 = icmp eq i32 %49, 0
  br i1 %tobool.not.i54, label %for.end.do.end3.i62_crit_edge, label %do.end.i56

for.end.do.end3.i62_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i62

do.end.i56:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv16 = zext i8 %46 to i32
  %call.i55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.10, i32 noundef %conv16) #11
  br label %do.end3.i62

do.end3.i62:                                      ; preds = %do.end.i56, %for.end.do.end3.i62_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i.i) #7
  %50 = ptrtoint ptr %b0.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 36, ptr %b0.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i.i) #7
  %51 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %b1.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i52) #7
  %52 = getelementptr inbounds i8, ptr %msg.i.i52, i32 4
  %53 = call ptr @memset(ptr %52, i32 255, i32 16)
  %54 = ptrtoint ptr %msg.i.i52 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 25, ptr %msg.i.i52, align 4
  %flags.i.i57 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i52, i32 0, i32 1
  %55 = ptrtoint ptr %flags.i.i57 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %flags.i.i57, align 2
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 1, ptr %52, align 4
  %buf.i.i58 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i52, i32 0, i32 3
  %57 = ptrtoint ptr %buf.i.i58 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %b0.i.i, ptr %buf.i.i58, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i52, i32 1
  %58 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 25, ptr %arrayinit.element.i.i, align 4
  %flags5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i52, i32 1, i32 1
  %59 = ptrtoint ptr %flags5.i.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 1, ptr %flags5.i.i, align 2
  %len6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i52, i32 1, i32 2
  %60 = ptrtoint ptr %len6.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 2, ptr %len6.i.i, align 4
  %buf7.i.i59 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i52, i32 1, i32 3
  %61 = ptrtoint ptr %buf7.i.i59 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %b1.i.i, ptr %buf7.i.i59, align 4
  %62 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %48, align 4
  %call.i.i60 = call i32 @i2c_transfer(ptr noundef %63, ptr noundef nonnull %msg.i.i52, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i60)
  %cmp.not.i.i61 = icmp eq i32 %call.i.i60, 2
  br i1 %cmp.not.i.i61, label %do.end3.i62.s5h1411_readreg.exit.i_crit_edge, label %do.end.i.i63

do.end3.i62.s5h1411_readreg.exit.i_crit_edge:     ; preds = %do.end3.i62
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_readreg.exit.i

do.end.i.i63:                                     ; preds = %do.end3.i62
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i.i60) #11
  br label %s5h1411_readreg.exit.i

s5h1411_readreg.exit.i:                           ; preds = %do.end.i.i63, %do.end3.i62.s5h1411_readreg.exit.i_crit_edge
  %64 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %b1.i.i, align 2
  %conv12.i.i = zext i8 %65 to i16
  %shl.i.i = shl nuw i16 %conv12.i.i, 8
  %arrayidx13.i.i = getelementptr inbounds [2 x i8], ptr %b1.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx13.i.i, align 1
  %conv14.i.i = zext i8 %67 to i16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i52) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i.i) #7
  %shl.i.masked.i = and i16 %shl.i.i, -4352
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %46)
  %cmp.i = icmp eq i8 %46, 1
  %masksel.i = select i1 %cmp.i, i16 4096, i16 0
  %68 = or i16 %masksel.i, %conv14.i.i
  %spec.select.i = or i16 %68, %shl.i.masked.i
  %inversion12.i = getelementptr inbounds %struct.s5h1411_state, ptr %48, i32 0, i32 7
  %69 = ptrtoint ptr %inversion12.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %46, ptr %inversion12.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i1.i) #7
  %70 = getelementptr inbounds [3 x i8], ptr %buf.i1.i, i32 0, i32 1
  %71 = getelementptr inbounds [3 x i8], ptr %buf.i1.i, i32 0, i32 2
  %72 = ptrtoint ptr %buf.i1.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 36, ptr %buf.i1.i, align 1
  %73 = lshr i16 %spec.select.i, 8
  %conv1.i.i = trunc i16 %73 to i8
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv1.i.i, ptr %70, align 1
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %67, ptr %71, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2.i) #7
  %76 = getelementptr inbounds i8, ptr %msg.i2.i, i32 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 262143, ptr %76, align 4
  %78 = ptrtoint ptr %msg.i2.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 25, ptr %msg.i2.i, align 4
  %flags.i3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 1
  %79 = ptrtoint ptr %flags.i3.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 0, ptr %flags.i3.i, align 2
  %buf7.i5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 3
  %80 = ptrtoint ptr %buf7.i5.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %buf.i1.i, ptr %buf7.i5.i, align 4
  %81 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %48, align 4
  %call.i6.i = call i32 @i2c_transfer(ptr noundef %82, ptr noundef nonnull %msg.i2.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i6.i)
  %cmp.not.i7.i = icmp eq i32 %call.i6.i, 1
  br i1 %cmp.not.i7.i, label %s5h1411_readreg.exit.i.s5h1411_set_spectralinversion.exit_crit_edge, label %do.end.i8.i

s5h1411_readreg.exit.i.s5h1411_set_spectralinversion.exit_crit_edge: ; preds = %s5h1411_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_set_spectralinversion.exit

do.end.i8.i:                                      ; preds = %s5h1411_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i = zext i16 %spec.select.i to i32
  %call12.i.i64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 25, i32 noundef 36, i32 noundef %conv.i.i, i32 noundef %call.i6.i) #11
  br label %s5h1411_set_spectralinversion.exit

s5h1411_set_spectralinversion.exit:               ; preds = %do.end.i8.i, %s5h1411_readreg.exit.i.s5h1411_set_spectralinversion.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i1.i) #7
  %83 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %config, align 4
  %vsb_if = getelementptr inbounds %struct.s5h1411_config, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %vsb_if to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %vsb_if, align 2
  %conv19 = zext i16 %86 to i32
  call fastcc void @s5h1411_set_if_freq(ptr noundef %fe, i32 noundef %conv19)
  %87 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %config, align 4
  %gpio = getelementptr inbounds %struct.s5h1411_config, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %gpio to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %gpio, align 1
  %91 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %demodulator_priv, align 4
  %93 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i71 = icmp eq i32 %93, 0
  br i1 %tobool.not.i71, label %s5h1411_set_spectralinversion.exit.do.end3.i82_crit_edge, label %do.end.i73

s5h1411_set_spectralinversion.exit.do.end3.i82_crit_edge: ; preds = %s5h1411_set_spectralinversion.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i82

do.end.i73:                                       ; preds = %s5h1411_set_spectralinversion.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv22 = zext i8 %90 to i32
  %call.i72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.16, i32 noundef %conv22) #11
  br label %do.end3.i82

do.end3.i82:                                      ; preds = %do.end.i73, %s5h1411_set_spectralinversion.exit.do.end3.i82_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i.i67) #7
  %94 = ptrtoint ptr %b0.i.i67 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -32, ptr %b0.i.i67, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i.i68) #7
  %95 = ptrtoint ptr %b1.i.i68 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 0, ptr %b1.i.i68, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i69) #7
  %96 = getelementptr inbounds i8, ptr %msg.i.i69, i32 4
  %97 = call ptr @memset(ptr %96, i32 255, i32 16)
  %98 = ptrtoint ptr %msg.i.i69 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 25, ptr %msg.i.i69, align 4
  %flags.i.i74 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i69, i32 0, i32 1
  %99 = ptrtoint ptr %flags.i.i74 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 0, ptr %flags.i.i74, align 2
  %100 = ptrtoint ptr %96 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 1, ptr %96, align 4
  %buf.i.i75 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i69, i32 0, i32 3
  %101 = ptrtoint ptr %buf.i.i75 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %b0.i.i67, ptr %buf.i.i75, align 4
  %arrayinit.element.i.i76 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i69, i32 1
  %102 = ptrtoint ptr %arrayinit.element.i.i76 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 25, ptr %arrayinit.element.i.i76, align 4
  %flags5.i.i77 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i69, i32 1, i32 1
  %103 = ptrtoint ptr %flags5.i.i77 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 1, ptr %flags5.i.i77, align 2
  %len6.i.i78 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i69, i32 1, i32 2
  %104 = ptrtoint ptr %len6.i.i78 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 2, ptr %len6.i.i78, align 4
  %buf7.i.i79 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i69, i32 1, i32 3
  %105 = ptrtoint ptr %buf7.i.i79 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %b1.i.i68, ptr %buf7.i.i79, align 4
  %106 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %92, align 4
  %call.i.i80 = call i32 @i2c_transfer(ptr noundef %107, ptr noundef nonnull %msg.i.i69, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i80)
  %cmp.not.i.i81 = icmp eq i32 %call.i.i80, 2
  br i1 %cmp.not.i.i81, label %do.end3.i82.s5h1411_readreg.exit.i89_crit_edge, label %do.end.i.i84

do.end3.i82.s5h1411_readreg.exit.i89_crit_edge:   ; preds = %do.end3.i82
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_readreg.exit.i89

do.end.i.i84:                                     ; preds = %do.end3.i82
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i.i80) #11
  br label %s5h1411_readreg.exit.i89

s5h1411_readreg.exit.i89:                         ; preds = %do.end.i.i84, %do.end3.i82.s5h1411_readreg.exit.i89_crit_edge
  %108 = ptrtoint ptr %b1.i.i68 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %b1.i.i68, align 2
  %conv12.i.i85 = zext i8 %109 to i16
  %shl.i.i86 = shl nuw i16 %conv12.i.i85, 8
  %arrayidx13.i.i87 = getelementptr inbounds [2 x i8], ptr %b1.i.i68, i32 0, i32 1
  %110 = ptrtoint ptr %arrayidx13.i.i87 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx13.i.i87, align 1
  %conv14.i.i88 = zext i8 %111 to i16
  %or.i.i = or i16 %shl.i.i86, %conv14.i.i88
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i69) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i.i68) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i.i67) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool6.not.i = icmp eq i8 %90, 0
  br i1 %tobool6.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %s5h1411_readreg.exit.i89
  %112 = or i16 %or.i.i, 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i1.i65) #7
  %113 = getelementptr inbounds [3 x i8], ptr %buf.i1.i65, i32 0, i32 1
  %114 = getelementptr inbounds [3 x i8], ptr %buf.i1.i65, i32 0, i32 2
  %115 = ptrtoint ptr %buf.i1.i65 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 -32, ptr %buf.i1.i65, align 1
  %116 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %109, ptr %113, align 1
  %conv4.i.i = trunc i16 %112 to i8
  %117 = ptrtoint ptr %114 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv4.i.i, ptr %114, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2.i66) #7
  %118 = getelementptr inbounds i8, ptr %msg.i2.i66, i32 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 262143, ptr %118, align 4
  %120 = ptrtoint ptr %msg.i2.i66 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 25, ptr %msg.i2.i66, align 4
  %flags.i3.i90 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i66, i32 0, i32 1
  %121 = ptrtoint ptr %flags.i3.i90 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 0, ptr %flags.i3.i90, align 2
  %buf7.i5.i91 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i66, i32 0, i32 3
  %122 = ptrtoint ptr %buf7.i5.i91 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %buf.i1.i65, ptr %buf7.i5.i91, align 4
  %123 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %92, align 4
  %call.i6.i92 = call i32 @i2c_transfer(ptr noundef %124, ptr noundef nonnull %msg.i2.i66, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i6.i92)
  %cmp.not.i7.i93 = icmp eq i32 %call.i6.i92, 1
  br i1 %cmp.not.i7.i93, label %if.then7.i.s5h1411_writereg.exit.i_crit_edge, label %do.end.i8.i96

if.then7.i.s5h1411_writereg.exit.i_crit_edge:     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_writereg.exit.i

do.end.i8.i96:                                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i94 = zext i16 %112 to i32
  %call12.i.i95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 25, i32 noundef 224, i32 noundef %conv.i.i94, i32 noundef %call.i6.i92) #11
  br label %s5h1411_writereg.exit.i

s5h1411_writereg.exit.i:                          ; preds = %do.end.i8.i96, %if.then7.i.s5h1411_writereg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2.i66) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i1.i65) #7
  br label %s5h1411_set_gpio.exit

if.else.i:                                        ; preds = %s5h1411_readreg.exit.i89
  %125 = and i16 %or.i.i, -3
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i9.i) #7
  %126 = getelementptr inbounds [3 x i8], ptr %buf.i9.i, i32 0, i32 1
  %127 = getelementptr inbounds [3 x i8], ptr %buf.i9.i, i32 0, i32 2
  %128 = ptrtoint ptr %buf.i9.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 -32, ptr %buf.i9.i, align 1
  %129 = ptrtoint ptr %126 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %109, ptr %126, align 1
  %conv4.i12.i = trunc i16 %125 to i8
  %130 = ptrtoint ptr %127 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv4.i12.i, ptr %127, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i10.i) #7
  %131 = getelementptr inbounds i8, ptr %msg.i10.i, i32 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 262143, ptr %131, align 4
  %133 = ptrtoint ptr %msg.i10.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 25, ptr %msg.i10.i, align 4
  %flags.i13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i10.i, i32 0, i32 1
  %134 = ptrtoint ptr %flags.i13.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 0, ptr %flags.i13.i, align 2
  %buf7.i15.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i10.i, i32 0, i32 3
  %135 = ptrtoint ptr %buf7.i15.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %buf.i9.i, ptr %buf7.i15.i, align 4
  %136 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %92, align 4
  %call.i16.i = call i32 @i2c_transfer(ptr noundef %137, ptr noundef nonnull %msg.i10.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i16.i)
  %cmp.not.i17.i = icmp eq i32 %call.i16.i, 1
  br i1 %cmp.not.i17.i, label %if.else.i.s5h1411_writereg.exit23.i_crit_edge, label %do.end.i20.i

if.else.i.s5h1411_writereg.exit23.i_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_writereg.exit23.i

do.end.i20.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i18.i = zext i16 %125 to i32
  %call12.i19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 25, i32 noundef 224, i32 noundef %conv.i18.i, i32 noundef %call.i16.i) #11
  br label %s5h1411_writereg.exit23.i

s5h1411_writereg.exit23.i:                        ; preds = %do.end.i20.i, %if.else.i.s5h1411_writereg.exit23.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i10.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i9.i) #7
  br label %s5h1411_set_gpio.exit

s5h1411_set_gpio.exit:                            ; preds = %s5h1411_writereg.exit23.i, %s5h1411_writereg.exit.i
  %138 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %config, align 4
  %mpeg_timing = getelementptr inbounds %struct.s5h1411_config, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %mpeg_timing to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %mpeg_timing, align 2
  %142 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %demodulator_priv, align 4
  %144 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool.not.i103 = icmp eq i32 %144, 0
  br i1 %tobool.not.i103, label %s5h1411_set_gpio.exit.do.end3.i114_crit_edge, label %do.end.i105

s5h1411_set_gpio.exit.do.end3.i114_crit_edge:     ; preds = %s5h1411_set_gpio.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i114

do.end.i105:                                      ; preds = %s5h1411_set_gpio.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv25 = zext i16 %141 to i32
  %call.i104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.17, i32 noundef %conv25) #11
  br label %do.end3.i114

do.end3.i114:                                     ; preds = %do.end.i105, %s5h1411_set_gpio.exit.do.end3.i114_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i.i99) #7
  %145 = ptrtoint ptr %b0.i.i99 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 -66, ptr %b0.i.i99, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i.i100) #7
  %146 = ptrtoint ptr %b1.i.i100 to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 0, ptr %b1.i.i100, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i101) #7
  %147 = getelementptr inbounds i8, ptr %msg.i.i101, i32 4
  %148 = call ptr @memset(ptr %147, i32 255, i32 16)
  %149 = ptrtoint ptr %msg.i.i101 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 25, ptr %msg.i.i101, align 4
  %flags.i.i106 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i101, i32 0, i32 1
  %150 = ptrtoint ptr %flags.i.i106 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 0, ptr %flags.i.i106, align 2
  %151 = ptrtoint ptr %147 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 1, ptr %147, align 4
  %buf.i.i107 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i101, i32 0, i32 3
  %152 = ptrtoint ptr %buf.i.i107 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %b0.i.i99, ptr %buf.i.i107, align 4
  %arrayinit.element.i.i108 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i101, i32 1
  %153 = ptrtoint ptr %arrayinit.element.i.i108 to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 25, ptr %arrayinit.element.i.i108, align 4
  %flags5.i.i109 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i101, i32 1, i32 1
  %154 = ptrtoint ptr %flags5.i.i109 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 1, ptr %flags5.i.i109, align 2
  %len6.i.i110 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i101, i32 1, i32 2
  %155 = ptrtoint ptr %len6.i.i110 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 2, ptr %len6.i.i110, align 4
  %buf7.i.i111 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i101, i32 1, i32 3
  %156 = ptrtoint ptr %buf7.i.i111 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %b1.i.i100, ptr %buf7.i.i111, align 4
  %157 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %143, align 4
  %call.i.i112 = call i32 @i2c_transfer(ptr noundef %158, ptr noundef nonnull %msg.i.i101, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i112)
  %cmp.not.i.i113 = icmp eq i32 %call.i.i112, 2
  br i1 %cmp.not.i.i113, label %do.end3.i114.s5h1411_readreg.exit.i122_crit_edge, label %do.end.i.i116

do.end3.i114.s5h1411_readreg.exit.i122_crit_edge: ; preds = %do.end3.i114
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_readreg.exit.i122

do.end.i.i116:                                    ; preds = %do.end3.i114
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i.i112) #11
  br label %s5h1411_readreg.exit.i122

s5h1411_readreg.exit.i122:                        ; preds = %do.end.i.i116, %do.end3.i114.s5h1411_readreg.exit.i122_crit_edge
  %159 = ptrtoint ptr %b1.i.i100 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %b1.i.i100, align 2
  %conv12.i.i117 = zext i8 %160 to i16
  %shl.i.i118 = shl nuw i16 %conv12.i.i117, 8
  %arrayidx13.i.i119 = getelementptr inbounds [2 x i8], ptr %b1.i.i100, i32 0, i32 1
  %161 = ptrtoint ptr %arrayidx13.i.i119 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx13.i.i119, align 1
  %conv14.i.i120 = zext i8 %162 to i16
  %or.i.i121 = or i16 %shl.i.i118, %conv14.i.i120
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i101) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i.i100) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i.i99) #7
  %163 = and i16 %or.i.i121, -12289
  %164 = zext i16 %141 to i64
  call void @__sanitizer_cov_trace_switch(i64 %164, ptr @__sancov_gen_cov_switch_values)
  switch i16 %141, label %s5h1411_readreg.exit.i122.s5h1411_set_mpeg_timing.exit_crit_edge [
    i16 0, label %s5h1411_readreg.exit.i122.sw.epilog.i_crit_edge
    i16 1, label %do.body9.i
    i16 2, label %sw.bb23.i
    i16 3, label %sw.bb27.i
  ]

s5h1411_readreg.exit.i122.sw.epilog.i_crit_edge:  ; preds = %s5h1411_readreg.exit.i122
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

s5h1411_readreg.exit.i122.s5h1411_set_mpeg_timing.exit_crit_edge: ; preds = %s5h1411_readreg.exit.i122
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_set_mpeg_timing.exit

do.body9.i:                                       ; preds = %s5h1411_readreg.exit.i122
  %165 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool10.not.i = icmp eq i32 %165, 0
  br i1 %tobool10.not.i, label %do.body9.i.do.end19.i_crit_edge, label %do.end14.i

do.body9.i.do.end19.i_crit_edge:                  ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19.i

do.end14.i:                                       ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef 1) #11
  br label %do.end19.i

do.end19.i:                                       ; preds = %do.end14.i, %do.body9.i.do.end19.i_crit_edge
  %166 = or i16 %163, 4096
  br label %sw.epilog.i

sw.bb23.i:                                        ; preds = %s5h1411_readreg.exit.i122
  call void @__sanitizer_cov_trace_pc() #9
  %167 = or i16 %163, 8192
  br label %sw.epilog.i

sw.bb27.i:                                        ; preds = %s5h1411_readreg.exit.i122
  call void @__sanitizer_cov_trace_pc() #9
  %168 = or i16 %or.i.i121, 12288
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb27.i, %sw.bb23.i, %do.end19.i, %s5h1411_readreg.exit.i122.sw.epilog.i_crit_edge
  %val.0.i = phi i16 [ %168, %sw.bb27.i ], [ %167, %sw.bb23.i ], [ %166, %do.end19.i ], [ %163, %s5h1411_readreg.exit.i122.sw.epilog.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i1.i97) #7
  %169 = getelementptr inbounds [3 x i8], ptr %buf.i1.i97, i32 0, i32 1
  %170 = getelementptr inbounds [3 x i8], ptr %buf.i1.i97, i32 0, i32 2
  %171 = ptrtoint ptr %buf.i1.i97 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 -66, ptr %buf.i1.i97, align 1
  %172 = lshr i16 %val.0.i, 8
  %conv1.i.i123 = trunc i16 %172 to i8
  %173 = ptrtoint ptr %169 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %conv1.i.i123, ptr %169, align 1
  %conv4.i.i124 = trunc i16 %val.0.i to i8
  %174 = ptrtoint ptr %170 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %conv4.i.i124, ptr %170, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2.i98) #7
  %175 = getelementptr inbounds i8, ptr %msg.i2.i98, i32 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 262143, ptr %175, align 4
  %177 = ptrtoint ptr %msg.i2.i98 to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 25, ptr %msg.i2.i98, align 4
  %flags.i3.i125 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i98, i32 0, i32 1
  %178 = ptrtoint ptr %flags.i3.i125 to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 0, ptr %flags.i3.i125, align 2
  %buf7.i5.i126 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i98, i32 0, i32 3
  %179 = ptrtoint ptr %buf7.i5.i126 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %buf.i1.i97, ptr %buf7.i5.i126, align 4
  %180 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %143, align 4
  %call.i6.i127 = call i32 @i2c_transfer(ptr noundef %181, ptr noundef nonnull %msg.i2.i98, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i6.i127)
  %cmp.not.i7.i128 = icmp eq i32 %call.i6.i127, 1
  br i1 %cmp.not.i7.i128, label %sw.epilog.i.s5h1411_writereg.exit.i132_crit_edge, label %do.end.i8.i131

sw.epilog.i.s5h1411_writereg.exit.i132_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_writereg.exit.i132

do.end.i8.i131:                                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i129 = zext i16 %val.0.i to i32
  %call12.i.i130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 25, i32 noundef 190, i32 noundef %conv.i.i129, i32 noundef %call.i6.i127) #11
  br label %s5h1411_writereg.exit.i132

s5h1411_writereg.exit.i132:                       ; preds = %do.end.i8.i131, %sw.epilog.i.s5h1411_writereg.exit.i132_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2.i98) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i1.i97) #7
  br label %s5h1411_set_mpeg_timing.exit

s5h1411_set_mpeg_timing.exit:                     ; preds = %s5h1411_writereg.exit.i132, %s5h1411_readreg.exit.i122.s5h1411_set_mpeg_timing.exit_crit_edge
  call fastcc void @s5h1411_softreset(ptr noundef %fe)
  %182 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %demodulator_priv, align 4
  %184 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool.not.i136 = icmp eq i32 %184, 0
  br i1 %tobool.not.i136, label %s5h1411_set_mpeg_timing.exit.do.end3.i139_crit_edge, label %do.end.i138

s5h1411_set_mpeg_timing.exit.do.end3.i139_crit_edge: ; preds = %s5h1411_set_mpeg_timing.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i139

do.end.i138:                                      ; preds = %s5h1411_set_mpeg_timing.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.22, i32 noundef 0) #11
  br label %do.end3.i139

do.end3.i139:                                     ; preds = %do.end.i138, %s5h1411_set_mpeg_timing.exit.do.end3.i139_crit_edge
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i10.i) #7
  %185 = getelementptr inbounds [3 x i8], ptr %buf.i10.i, i32 0, i32 1
  %186 = getelementptr inbounds [3 x i8], ptr %buf.i10.i, i32 0, i32 2
  %187 = ptrtoint ptr %buf.i10.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 -11, ptr %buf.i10.i, align 1
  %188 = ptrtoint ptr %185 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 0, ptr %185, align 1
  %189 = ptrtoint ptr %186 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 0, ptr %186, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i11.i) #7
  %190 = getelementptr inbounds i8, ptr %msg.i11.i, i32 4
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 262143, ptr %190, align 4
  %192 = ptrtoint ptr %msg.i11.i to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 25, ptr %msg.i11.i, align 4
  %flags.i12.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i11.i, i32 0, i32 1
  %193 = ptrtoint ptr %flags.i12.i to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 0, ptr %flags.i12.i, align 2
  %buf7.i14.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i11.i, i32 0, i32 3
  %194 = ptrtoint ptr %buf7.i14.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %buf.i10.i, ptr %buf7.i14.i, align 4
  %195 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %183, align 4
  %call.i15.i = call i32 @i2c_transfer(ptr noundef %196, ptr noundef nonnull %msg.i11.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i15.i)
  %cmp.not.i16.i = icmp eq i32 %call.i15.i, 1
  br i1 %cmp.not.i16.i, label %do.end3.i139.s5h1411_i2c_gate_ctrl.exit_crit_edge, label %do.end.i18.i

do.end3.i139.s5h1411_i2c_gate_ctrl.exit_crit_edge: ; preds = %do.end3.i139
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_i2c_gate_ctrl.exit

do.end.i18.i:                                     ; preds = %do.end3.i139
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 25, i32 noundef 245, i32 noundef 0, i32 noundef %call.i15.i) #11
  br label %s5h1411_i2c_gate_ctrl.exit

s5h1411_i2c_gate_ctrl.exit:                       ; preds = %do.end.i18.i, %do.end3.i139.s5h1411_i2c_gate_ctrl.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i11.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i10.i) #7
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5h1411_set_powerstate(ptr nocapture noundef readonly %fe, i32 noundef %enable) unnamed_addr #0 align 64 {
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
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.25, i32 noundef %enable) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool4.not = icmp eq i32 %enable, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %do.end3
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %3 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %4 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -12, ptr %buf.i, align 1
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
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 25, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf.i, ptr %buf7.i, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.then5.s5h1411_writereg.exit_crit_edge, label %do.end.i

if.then5.s5h1411_writereg.exit_crit_edge:         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_writereg.exit

do.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 25, i32 noundef 244, i32 noundef 1, i32 noundef %call.i) #11
  br label %s5h1411_writereg.exit

s5h1411_writereg.exit:                            ; preds = %do.end.i, %if.then5.s5h1411_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  br label %if.end9

if.else:                                          ; preds = %do.end3
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i1) #7
  %15 = getelementptr inbounds [3 x i8], ptr %buf.i1, i32 0, i32 1
  %16 = getelementptr inbounds [3 x i8], ptr %buf.i1, i32 0, i32 2
  %17 = ptrtoint ptr %buf.i1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -12, ptr %buf.i1, align 1
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %15, align 1
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2) #7
  %20 = getelementptr inbounds i8, ptr %msg.i2, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 262143, ptr %20, align 4
  %22 = ptrtoint ptr %msg.i2 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 25, ptr %msg.i2, align 4
  %flags.i3 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2, i32 0, i32 1
  %23 = ptrtoint ptr %flags.i3 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %flags.i3, align 2
  %buf7.i5 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2, i32 0, i32 3
  %24 = ptrtoint ptr %buf7.i5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %buf.i1, ptr %buf7.i5, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %call.i6 = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %msg.i2, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i6)
  %cmp.not.i7 = icmp eq i32 %call.i6, 1
  br i1 %cmp.not.i7, label %if.else.s5h1411_writereg.exit12_crit_edge, label %do.end.i9

if.else.s5h1411_writereg.exit12_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_writereg.exit12

do.end.i9:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 25, i32 noundef 244, i32 noundef 0, i32 noundef %call.i6) #11
  br label %s5h1411_writereg.exit12

s5h1411_writereg.exit12:                          ; preds = %do.end.i9, %if.else.s5h1411_writereg.exit12_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i1) #7
  call fastcc void @s5h1411_softreset(ptr noundef %fe)
  br label %if.end9

if.end9:                                          ; preds = %s5h1411_writereg.exit12, %s5h1411_writereg.exit
  ret void
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
define internal fastcc void @s5h1411_set_serialmode(ptr nocapture noundef readonly %fe, i32 noundef %serial) unnamed_addr #0 align 64 {
entry:
  %buf.i1 = alloca [3 x i8], align 1
  %msg.i2 = alloca %struct.i2c_msg, align 4
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
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %serial) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -67, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i) #7
  %4 = ptrtoint ptr %b1.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %b1.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %7 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 25, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags.i, align 2
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %5, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %11 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 25, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %12 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %13 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %14 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %b1.i, ptr %buf7.i, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %do.end3.s5h1411_readreg.exit_crit_edge, label %do.end.i

do.end3.s5h1411_readreg.exit_crit_edge:           ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_readreg.exit

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i) #11
  br label %s5h1411_readreg.exit

s5h1411_readreg.exit:                             ; preds = %do.end.i, %do.end3.s5h1411_readreg.exit_crit_edge
  %17 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %b1.i, align 2
  %conv12.i = zext i8 %18 to i16
  %shl.i = shl nuw i16 %conv12.i, 8
  %arrayidx13.i = getelementptr inbounds [2 x i8], ptr %b1.i, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %20 to i16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %shl.i.masked = and i16 %shl.i, -512
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %serial)
  %cmp = icmp eq i32 %serial, 1
  %masksel = select i1 %cmp, i16 256, i16 0
  %21 = or i16 %masksel, %conv14.i
  %spec.select = or i16 %21, %shl.i.masked
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i1) #7
  %22 = getelementptr inbounds [3 x i8], ptr %buf.i1, i32 0, i32 1
  %23 = getelementptr inbounds [3 x i8], ptr %buf.i1, i32 0, i32 2
  %24 = ptrtoint ptr %buf.i1 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -67, ptr %buf.i1, align 1
  %25 = lshr i16 %spec.select, 8
  %conv1.i = trunc i16 %25 to i8
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv1.i, ptr %22, align 1
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %20, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2) #7
  %28 = getelementptr inbounds i8, ptr %msg.i2, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 262143, ptr %28, align 4
  %30 = ptrtoint ptr %msg.i2 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 25, ptr %msg.i2, align 4
  %flags.i3 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2, i32 0, i32 1
  %31 = ptrtoint ptr %flags.i3 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %flags.i3, align 2
  %buf7.i5 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2, i32 0, i32 3
  %32 = ptrtoint ptr %buf7.i5 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %buf.i1, ptr %buf7.i5, align 4
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %call.i6 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %msg.i2, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i6)
  %cmp.not.i7 = icmp eq i32 %call.i6, 1
  br i1 %cmp.not.i7, label %s5h1411_readreg.exit.s5h1411_writereg.exit_crit_edge, label %do.end.i8

s5h1411_readreg.exit.s5h1411_writereg.exit_crit_edge: ; preds = %s5h1411_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_writereg.exit

do.end.i8:                                        ; preds = %s5h1411_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i16 %spec.select to i32
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 25, i32 noundef 189, i32 noundef %conv.i, i32 noundef %call.i6) #11
  br label %s5h1411_writereg.exit

s5h1411_writereg.exit:                            ; preds = %do.end.i8, %s5h1411_readreg.exit.s5h1411_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5h1411_set_if_freq(ptr nocapture noundef readonly %fe, i32 noundef %KHz) unnamed_addr #0 align 64 {
entry:
  %buf.i121 = alloca [3 x i8], align 1
  %msg.i122 = alloca %struct.i2c_msg, align 4
  %buf.i109 = alloca [3 x i8], align 1
  %msg.i110 = alloca %struct.i2c_msg, align 4
  %buf.i97 = alloca [3 x i8], align 1
  %msg.i98 = alloca %struct.i2c_msg, align 4
  %buf.i85 = alloca [3 x i8], align 1
  %msg.i86 = alloca %struct.i2c_msg, align 4
  %buf.i73 = alloca [3 x i8], align 1
  %msg.i74 = alloca %struct.i2c_msg, align 4
  %buf.i61 = alloca [3 x i8], align 1
  %msg.i62 = alloca %struct.i2c_msg, align 4
  %buf.i49 = alloca [3 x i8], align 1
  %msg.i50 = alloca %struct.i2c_msg, align 4
  %buf.i37 = alloca [3 x i8], align 1
  %msg.i38 = alloca %struct.i2c_msg, align 4
  %buf.i25 = alloca [3 x i8], align 1
  %msg.i26 = alloca %struct.i2c_msg, align 4
  %buf.i13 = alloca [3 x i8], align 1
  %msg.i14 = alloca %struct.i2c_msg, align 4
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
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %KHz) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %3 = zext i32 %KHz to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %KHz, label %do.body15 [
    i32 3250, label %sw.bb
    i32 3500, label %sw.bb7
    i32 4000, label %sw.bb11
    i32 5380, label %do.end3.sw.bb26_crit_edge
    i32 44000, label %do.end3.sw.bb26_crit_edge133
  ]

do.end3.sw.bb26_crit_edge133:                     ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26

do.end3.sw.bb26_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26

sw.bb:                                            ; preds = %do.end3
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %4 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %5 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 56, ptr %buf.i, align 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %4, align 1
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -43, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 262143, ptr %9, align 4
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 25, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf.i, ptr %buf7.i, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %sw.bb.s5h1411_writereg.exit_crit_edge, label %do.end.i

sw.bb.s5h1411_writereg.exit_crit_edge:            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_writereg.exit

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 25, i32 noundef 56, i32 noundef 4309, i32 noundef %call.i) #11
  br label %s5h1411_writereg.exit

s5h1411_writereg.exit:                            ; preds = %do.end.i, %sw.bb.s5h1411_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i1) #7
  %16 = getelementptr inbounds [3 x i8], ptr %buf.i1, i32 0, i32 1
  %17 = getelementptr inbounds [3 x i8], ptr %buf.i1, i32 0, i32 2
  %18 = ptrtoint ptr %buf.i1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 57, ptr %buf.i1, align 1
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 83, ptr %16, align 1
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 66, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2) #7
  %21 = getelementptr inbounds i8, ptr %msg.i2, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 262143, ptr %21, align 4
  %23 = ptrtoint ptr %msg.i2 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 25, ptr %msg.i2, align 4
  %flags.i3 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2, i32 0, i32 1
  %24 = ptrtoint ptr %flags.i3 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %flags.i3, align 2
  %buf7.i5 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2, i32 0, i32 3
  %25 = ptrtoint ptr %buf7.i5 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %buf.i1, ptr %buf7.i5, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %call.i6 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msg.i2, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i6)
  %cmp.not.i7 = icmp eq i32 %call.i6, 1
  br i1 %cmp.not.i7, label %s5h1411_writereg.exit.s5h1411_writereg.exit12_crit_edge, label %do.end.i9

s5h1411_writereg.exit.s5h1411_writereg.exit12_crit_edge: ; preds = %s5h1411_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_writereg.exit12

do.end.i9:                                        ; preds = %s5h1411_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 25, i32 noundef 57, i32 noundef 21314, i32 noundef %call.i6) #11
  br label %s5h1411_writereg.exit12

s5h1411_writereg.exit12:                          ; preds = %do.end.i9, %s5h1411_writereg.exit.s5h1411_writereg.exit12_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i1) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i13) #7
  %28 = getelementptr inbounds [3 x i8], ptr %buf.i13, i32 0, i32 1
  %29 = getelementptr inbounds [3 x i8], ptr %buf.i13, i32 0, i32 2
  %30 = ptrtoint ptr %buf.i13 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 44, ptr %buf.i13, align 1
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 16, ptr %28, align 1
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -39, ptr %29, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i14) #7
  %33 = getelementptr inbounds i8, ptr %msg.i14, i32 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 262143, ptr %33, align 4
  %35 = ptrtoint ptr %msg.i14 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 26, ptr %msg.i14, align 4
  %flags.i15 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i15 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i15, align 2
  %buf7.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 0, i32 3
  %37 = ptrtoint ptr %buf7.i17 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %buf.i13, ptr %buf7.i17, align 4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %call.i18 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %msg.i14, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i18)
  %cmp.not.i19 = icmp eq i32 %call.i18, 1
  br i1 %cmp.not.i19, label %s5h1411_writereg.exit12.s5h1411_writereg.exit24_crit_edge, label %do.end.i21

s5h1411_writereg.exit12.s5h1411_writereg.exit24_crit_edge: ; preds = %s5h1411_writereg.exit12
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_writereg.exit24

do.end.i21:                                       ; preds = %s5h1411_writereg.exit12
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 26, i32 noundef 44, i32 noundef 4313, i32 noundef %call.i18) #11
  br label %s5h1411_writereg.exit24

s5h1411_writereg.exit24:                          ; preds = %do.end.i21, %s5h1411_writereg.exit12.s5h1411_writereg.exit24_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i14) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i13) #7
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.end3
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i25) #7
  %40 = getelementptr inbounds [3 x i8], ptr %buf.i25, i32 0, i32 1
  %41 = getelementptr inbounds [3 x i8], ptr %buf.i25, i32 0, i32 2
  %42 = ptrtoint ptr %buf.i25 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 56, ptr %buf.i25, align 1
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 18, ptr %40, align 1
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 37, ptr %41, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i26) #7
  %45 = getelementptr inbounds i8, ptr %msg.i26, i32 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 262143, ptr %45, align 4
  %47 = ptrtoint ptr %msg.i26 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 25, ptr %msg.i26, align 4
  %flags.i27 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i26, i32 0, i32 1
  %48 = ptrtoint ptr %flags.i27 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %flags.i27, align 2
  %buf7.i29 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i26, i32 0, i32 3
  %49 = ptrtoint ptr %buf7.i29 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %buf.i25, ptr %buf7.i29, align 4
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %call.i30 = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %msg.i26, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i30)
  %cmp.not.i31 = icmp eq i32 %call.i30, 1
  br i1 %cmp.not.i31, label %sw.bb7.s5h1411_writereg.exit36_crit_edge, label %do.end.i33

sw.bb7.s5h1411_writereg.exit36_crit_edge:         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_writereg.exit36

do.end.i33:                                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 25, i32 noundef 56, i32 noundef 4645, i32 noundef %call.i30) #11
  br label %s5h1411_writereg.exit36

s5h1411_writereg.exit36:                          ; preds = %do.end.i33, %sw.bb7.s5h1411_writereg.exit36_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i26) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i25) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i37) #7
  %52 = getelementptr inbounds [3 x i8], ptr %buf.i37, i32 0, i32 1
  %53 = getelementptr inbounds [3 x i8], ptr %buf.i37, i32 0, i32 2
  %54 = ptrtoint ptr %buf.i37 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 57, ptr %buf.i37, align 1
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 30, ptr %52, align 1
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -106, ptr %53, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i38) #7
  %57 = getelementptr inbounds i8, ptr %msg.i38, i32 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 262143, ptr %57, align 4
  %59 = ptrtoint ptr %msg.i38 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 25, ptr %msg.i38, align 4
  %flags.i39 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 0, i32 1
  %60 = ptrtoint ptr %flags.i39 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 0, ptr %flags.i39, align 2
  %buf7.i41 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 0, i32 3
  %61 = ptrtoint ptr %buf7.i41 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %buf.i37, ptr %buf7.i41, align 4
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %call.i42 = call i32 @i2c_transfer(ptr noundef %63, ptr noundef nonnull %msg.i38, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i42)
  %cmp.not.i43 = icmp eq i32 %call.i42, 1
  br i1 %cmp.not.i43, label %s5h1411_writereg.exit36.s5h1411_writereg.exit48_crit_edge, label %do.end.i45

s5h1411_writereg.exit36.s5h1411_writereg.exit48_crit_edge: ; preds = %s5h1411_writereg.exit36
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_writereg.exit48

do.end.i45:                                       ; preds = %s5h1411_writereg.exit36
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 25, i32 noundef 57, i32 noundef 7830, i32 noundef %call.i42) #11
  br label %s5h1411_writereg.exit48

s5h1411_writereg.exit48:                          ; preds = %do.end.i45, %s5h1411_writereg.exit36.s5h1411_writereg.exit48_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i38) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i37) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i49) #7
  %64 = getelementptr inbounds [3 x i8], ptr %buf.i49, i32 0, i32 1
  %65 = getelementptr inbounds [3 x i8], ptr %buf.i49, i32 0, i32 2
  %66 = ptrtoint ptr %buf.i49 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 44, ptr %buf.i49, align 1
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 18, ptr %64, align 1
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 37, ptr %65, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i50) #7
  %69 = getelementptr inbounds i8, ptr %msg.i50, i32 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 262143, ptr %69, align 4
  %71 = ptrtoint ptr %msg.i50 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 26, ptr %msg.i50, align 4
  %flags.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50, i32 0, i32 1
  %72 = ptrtoint ptr %flags.i51 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %flags.i51, align 2
  %buf7.i53 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50, i32 0, i32 3
  %73 = ptrtoint ptr %buf7.i53 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %buf.i49, ptr %buf7.i53, align 4
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 4
  %call.i54 = call i32 @i2c_transfer(ptr noundef %75, ptr noundef nonnull %msg.i50, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i54)
  %cmp.not.i55 = icmp eq i32 %call.i54, 1
  br i1 %cmp.not.i55, label %s5h1411_writereg.exit48.s5h1411_writereg.exit60_crit_edge, label %do.end.i57

s5h1411_writereg.exit48.s5h1411_writereg.exit60_crit_edge: ; preds = %s5h1411_writereg.exit48
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_writereg.exit60

do.end.i57:                                       ; preds = %s5h1411_writereg.exit48
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 26, i32 noundef 44, i32 noundef 4645, i32 noundef %call.i54) #11
  br label %s5h1411_writereg.exit60

s5h1411_writereg.exit60:                          ; preds = %do.end.i57, %s5h1411_writereg.exit48.s5h1411_writereg.exit60_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i50) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i49) #7
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.end3
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i61) #7
  %76 = getelementptr inbounds [3 x i8], ptr %buf.i61, i32 0, i32 1
  %77 = getelementptr inbounds [3 x i8], ptr %buf.i61, i32 0, i32 2
  %78 = ptrtoint ptr %buf.i61 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 56, ptr %buf.i61, align 1
  %79 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 20, ptr %76, align 1
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -68, ptr %77, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i62) #7
  %81 = getelementptr inbounds i8, ptr %msg.i62, i32 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 262143, ptr %81, align 4
  %83 = ptrtoint ptr %msg.i62 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 25, ptr %msg.i62, align 4
  %flags.i63 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62, i32 0, i32 1
  %84 = ptrtoint ptr %flags.i63 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 0, ptr %flags.i63, align 2
  %buf7.i65 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62, i32 0, i32 3
  %85 = ptrtoint ptr %buf7.i65 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %buf.i61, ptr %buf7.i65, align 4
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 4
  %call.i66 = call i32 @i2c_transfer(ptr noundef %87, ptr noundef nonnull %msg.i62, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i66)
  %cmp.not.i67 = icmp eq i32 %call.i66, 1
  br i1 %cmp.not.i67, label %sw.bb11.s5h1411_writereg.exit72_crit_edge, label %do.end.i69

sw.bb11.s5h1411_writereg.exit72_crit_edge:        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_writereg.exit72

do.end.i69:                                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 25, i32 noundef 56, i32 noundef 5308, i32 noundef %call.i66) #11
  br label %s5h1411_writereg.exit72

s5h1411_writereg.exit72:                          ; preds = %do.end.i69, %sw.bb11.s5h1411_writereg.exit72_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i62) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i61) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i73) #7
  %88 = getelementptr inbounds [3 x i8], ptr %buf.i73, i32 0, i32 1
  %89 = getelementptr inbounds [3 x i8], ptr %buf.i73, i32 0, i32 2
  %90 = ptrtoint ptr %buf.i73 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 57, ptr %buf.i73, align 1
  %91 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 -75, ptr %88, align 1
  %92 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 62, ptr %89, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i74) #7
  %93 = getelementptr inbounds i8, ptr %msg.i74, i32 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 262143, ptr %93, align 4
  %95 = ptrtoint ptr %msg.i74 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 25, ptr %msg.i74, align 4
  %flags.i75 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i74, i32 0, i32 1
  %96 = ptrtoint ptr %flags.i75 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 0, ptr %flags.i75, align 2
  %buf7.i77 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i74, i32 0, i32 3
  %97 = ptrtoint ptr %buf7.i77 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %buf.i73, ptr %buf7.i77, align 4
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %1, align 4
  %call.i78 = call i32 @i2c_transfer(ptr noundef %99, ptr noundef nonnull %msg.i74, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i78)
  %cmp.not.i79 = icmp eq i32 %call.i78, 1
  br i1 %cmp.not.i79, label %s5h1411_writereg.exit72.s5h1411_writereg.exit84_crit_edge, label %do.end.i81

s5h1411_writereg.exit72.s5h1411_writereg.exit84_crit_edge: ; preds = %s5h1411_writereg.exit72
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_writereg.exit84

do.end.i81:                                       ; preds = %s5h1411_writereg.exit72
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 25, i32 noundef 57, i32 noundef 46398, i32 noundef %call.i78) #11
  br label %s5h1411_writereg.exit84

s5h1411_writereg.exit84:                          ; preds = %do.end.i81, %s5h1411_writereg.exit72.s5h1411_writereg.exit84_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i74) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i73) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i85) #7
  %100 = getelementptr inbounds [3 x i8], ptr %buf.i85, i32 0, i32 1
  %101 = getelementptr inbounds [3 x i8], ptr %buf.i85, i32 0, i32 2
  %102 = ptrtoint ptr %buf.i85 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 44, ptr %buf.i85, align 1
  %103 = ptrtoint ptr %100 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 20, ptr %100, align 1
  %104 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 -67, ptr %101, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i86) #7
  %105 = getelementptr inbounds i8, ptr %msg.i86, i32 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 262143, ptr %105, align 4
  %107 = ptrtoint ptr %msg.i86 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 26, ptr %msg.i86, align 4
  %flags.i87 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i86, i32 0, i32 1
  %108 = ptrtoint ptr %flags.i87 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 0, ptr %flags.i87, align 2
  %buf7.i89 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i86, i32 0, i32 3
  %109 = ptrtoint ptr %buf7.i89 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %buf.i85, ptr %buf7.i89, align 4
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %1, align 4
  %call.i90 = call i32 @i2c_transfer(ptr noundef %111, ptr noundef nonnull %msg.i86, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i90)
  %cmp.not.i91 = icmp eq i32 %call.i90, 1
  br i1 %cmp.not.i91, label %s5h1411_writereg.exit84.s5h1411_writereg.exit96_crit_edge, label %do.end.i93

s5h1411_writereg.exit84.s5h1411_writereg.exit96_crit_edge: ; preds = %s5h1411_writereg.exit84
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_writereg.exit96

do.end.i93:                                       ; preds = %s5h1411_writereg.exit84
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 26, i32 noundef 44, i32 noundef 5309, i32 noundef %call.i90) #11
  br label %s5h1411_writereg.exit96

s5h1411_writereg.exit96:                          ; preds = %do.end.i93, %s5h1411_writereg.exit84.s5h1411_writereg.exit96_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i86) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i85) #7
  br label %sw.epilog

do.body15:                                        ; preds = %do.end3
  %112 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool16.not = icmp eq i32 %112, 0
  br i1 %tobool16.not, label %do.body15.sw.bb26_crit_edge, label %do.end20

do.body15.sw.bb26_crit_edge:                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26

do.end20:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef %KHz) #11
  br label %sw.bb26

sw.bb26:                                          ; preds = %do.end20, %do.body15.sw.bb26_crit_edge, %do.end3.sw.bb26_crit_edge, %do.end3.sw.bb26_crit_edge133
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i97) #7
  %113 = getelementptr inbounds [3 x i8], ptr %buf.i97, i32 0, i32 1
  %114 = getelementptr inbounds [3 x i8], ptr %buf.i97, i32 0, i32 2
  %115 = ptrtoint ptr %buf.i97 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 56, ptr %buf.i97, align 1
  %116 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 27, ptr %113, align 1
  %117 = ptrtoint ptr %114 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 -28, ptr %114, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i98) #7
  %118 = getelementptr inbounds i8, ptr %msg.i98, i32 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 262143, ptr %118, align 4
  %120 = ptrtoint ptr %msg.i98 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 25, ptr %msg.i98, align 4
  %flags.i99 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i98, i32 0, i32 1
  %121 = ptrtoint ptr %flags.i99 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 0, ptr %flags.i99, align 2
  %buf7.i101 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i98, i32 0, i32 3
  %122 = ptrtoint ptr %buf7.i101 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %buf.i97, ptr %buf7.i101, align 4
  %123 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %1, align 4
  %call.i102 = call i32 @i2c_transfer(ptr noundef %124, ptr noundef nonnull %msg.i98, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i102)
  %cmp.not.i103 = icmp eq i32 %call.i102, 1
  br i1 %cmp.not.i103, label %sw.bb26.s5h1411_writereg.exit108_crit_edge, label %do.end.i105

sw.bb26.s5h1411_writereg.exit108_crit_edge:       ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_writereg.exit108

do.end.i105:                                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 25, i32 noundef 56, i32 noundef 7140, i32 noundef %call.i102) #11
  br label %s5h1411_writereg.exit108

s5h1411_writereg.exit108:                         ; preds = %do.end.i105, %sw.bb26.s5h1411_writereg.exit108_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i98) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i97) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i109) #7
  %125 = getelementptr inbounds [3 x i8], ptr %buf.i109, i32 0, i32 1
  %126 = getelementptr inbounds [3 x i8], ptr %buf.i109, i32 0, i32 2
  %127 = ptrtoint ptr %buf.i109 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 57, ptr %buf.i109, align 1
  %128 = ptrtoint ptr %125 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 54, ptr %125, align 1
  %129 = ptrtoint ptr %126 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 85, ptr %126, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i110) #7
  %130 = getelementptr inbounds i8, ptr %msg.i110, i32 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 262143, ptr %130, align 4
  %132 = ptrtoint ptr %msg.i110 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 25, ptr %msg.i110, align 4
  %flags.i111 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i110, i32 0, i32 1
  %133 = ptrtoint ptr %flags.i111 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 0, ptr %flags.i111, align 2
  %buf7.i113 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i110, i32 0, i32 3
  %134 = ptrtoint ptr %buf7.i113 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %buf.i109, ptr %buf7.i113, align 4
  %135 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %1, align 4
  %call.i114 = call i32 @i2c_transfer(ptr noundef %136, ptr noundef nonnull %msg.i110, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i114)
  %cmp.not.i115 = icmp eq i32 %call.i114, 1
  br i1 %cmp.not.i115, label %s5h1411_writereg.exit108.s5h1411_writereg.exit120_crit_edge, label %do.end.i117

s5h1411_writereg.exit108.s5h1411_writereg.exit120_crit_edge: ; preds = %s5h1411_writereg.exit108
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_writereg.exit120

do.end.i117:                                      ; preds = %s5h1411_writereg.exit108
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 25, i32 noundef 57, i32 noundef 13909, i32 noundef %call.i114) #11
  br label %s5h1411_writereg.exit120

s5h1411_writereg.exit120:                         ; preds = %do.end.i117, %s5h1411_writereg.exit108.s5h1411_writereg.exit120_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i110) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i109) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i121) #7
  %137 = getelementptr inbounds [3 x i8], ptr %buf.i121, i32 0, i32 1
  %138 = getelementptr inbounds [3 x i8], ptr %buf.i121, i32 0, i32 2
  %139 = ptrtoint ptr %buf.i121 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 44, ptr %buf.i121, align 1
  %140 = ptrtoint ptr %137 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 27, ptr %137, align 1
  %141 = ptrtoint ptr %138 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 -28, ptr %138, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i122) #7
  %142 = getelementptr inbounds i8, ptr %msg.i122, i32 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 262143, ptr %142, align 4
  %144 = ptrtoint ptr %msg.i122 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 26, ptr %msg.i122, align 4
  %flags.i123 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i122, i32 0, i32 1
  %145 = ptrtoint ptr %flags.i123 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 0, ptr %flags.i123, align 2
  %buf7.i125 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i122, i32 0, i32 3
  %146 = ptrtoint ptr %buf7.i125 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %buf.i121, ptr %buf7.i125, align 4
  %147 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %1, align 4
  %call.i126 = call i32 @i2c_transfer(ptr noundef %148, ptr noundef nonnull %msg.i122, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i126)
  %cmp.not.i127 = icmp eq i32 %call.i126, 1
  br i1 %cmp.not.i127, label %s5h1411_writereg.exit120.s5h1411_writereg.exit132_crit_edge, label %do.end.i129

s5h1411_writereg.exit120.s5h1411_writereg.exit132_crit_edge: ; preds = %s5h1411_writereg.exit120
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_writereg.exit132

do.end.i129:                                      ; preds = %s5h1411_writereg.exit120
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 26, i32 noundef 44, i32 noundef 7140, i32 noundef %call.i126) #11
  br label %s5h1411_writereg.exit132

s5h1411_writereg.exit132:                         ; preds = %do.end.i129, %s5h1411_writereg.exit120.s5h1411_writereg.exit132_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i122) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i121) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %s5h1411_writereg.exit132, %s5h1411_writereg.exit96, %s5h1411_writereg.exit60, %s5h1411_writereg.exit24
  %if_freq = getelementptr inbounds %struct.s5h1411_state, ptr %1, i32 0, i32 6
  %149 = ptrtoint ptr %if_freq to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %KHz, ptr %if_freq, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5h1411_softreset(ptr nocapture noundef readonly %fe) unnamed_addr #0 align 64 {
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
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.21) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %3 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %4 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -9, ptr %buf.i, align 1
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
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 25, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf.i, ptr %buf7.i, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %do.end3.s5h1411_writereg.exit_crit_edge, label %do.end.i

do.end3.s5h1411_writereg.exit_crit_edge:          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_writereg.exit

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 25, i32 noundef 247, i32 noundef 0, i32 noundef %call.i) #11
  br label %s5h1411_writereg.exit

s5h1411_writereg.exit:                            ; preds = %do.end.i, %do.end3.s5h1411_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i1) #7
  %15 = getelementptr inbounds [3 x i8], ptr %buf.i1, i32 0, i32 1
  %16 = getelementptr inbounds [3 x i8], ptr %buf.i1, i32 0, i32 2
  %17 = ptrtoint ptr %buf.i1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -9, ptr %buf.i1, align 1
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %15, align 1
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2) #7
  %20 = getelementptr inbounds i8, ptr %msg.i2, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 262143, ptr %20, align 4
  %22 = ptrtoint ptr %msg.i2 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 25, ptr %msg.i2, align 4
  %flags.i3 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2, i32 0, i32 1
  %23 = ptrtoint ptr %flags.i3 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %flags.i3, align 2
  %buf7.i5 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2, i32 0, i32 3
  %24 = ptrtoint ptr %buf7.i5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %buf.i1, ptr %buf7.i5, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %call.i6 = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %msg.i2, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i6)
  %cmp.not.i7 = icmp eq i32 %call.i6, 1
  br i1 %cmp.not.i7, label %s5h1411_writereg.exit.s5h1411_writereg.exit12_crit_edge, label %do.end.i9

s5h1411_writereg.exit.s5h1411_writereg.exit12_crit_edge: ; preds = %s5h1411_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_writereg.exit12

do.end.i9:                                        ; preds = %s5h1411_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 25, i32 noundef 247, i32 noundef 1, i32 noundef %call.i6) #11
  br label %s5h1411_writereg.exit12

s5h1411_writereg.exit12:                          ; preds = %do.end.i9, %s5h1411_writereg.exit.s5h1411_writereg.exit12_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5h1411_i2c_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #0 align 64 {
entry:
  %buf.i10 = alloca [3 x i8], align 1
  %msg.i11 = alloca %struct.i2c_msg, align 4
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
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.22, i32 noundef %enable) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool4.not = icmp eq i32 %enable, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %do.end3
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
  store i8 1, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 262143, ptr %8, align 4
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 25, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf.i, ptr %buf7.i, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.then5.s5h1411_writereg.exit_crit_edge, label %do.end.i

if.then5.s5h1411_writereg.exit_crit_edge:         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_writereg.exit

do.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 25, i32 noundef 245, i32 noundef 1, i32 noundef %call.i) #11
  br label %s5h1411_writereg.exit

s5h1411_writereg.exit:                            ; preds = %do.end.i, %if.then5.s5h1411_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  br label %cleanup

if.else:                                          ; preds = %do.end3
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i10) #7
  %15 = getelementptr inbounds [3 x i8], ptr %buf.i10, i32 0, i32 1
  %16 = getelementptr inbounds [3 x i8], ptr %buf.i10, i32 0, i32 2
  %17 = ptrtoint ptr %buf.i10 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -11, ptr %buf.i10, align 1
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %15, align 1
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i11) #7
  %20 = getelementptr inbounds i8, ptr %msg.i11, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 262143, ptr %20, align 4
  %22 = ptrtoint ptr %msg.i11 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 25, ptr %msg.i11, align 4
  %flags.i12 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i11, i32 0, i32 1
  %23 = ptrtoint ptr %flags.i12 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %flags.i12, align 2
  %buf7.i14 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i11, i32 0, i32 3
  %24 = ptrtoint ptr %buf7.i14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %buf.i10, ptr %buf7.i14, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %call.i15 = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %msg.i11, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i15)
  %cmp.not.i16 = icmp eq i32 %call.i15, 1
  br i1 %cmp.not.i16, label %if.else.s5h1411_writereg.exit21_crit_edge, label %do.end.i18

if.else.s5h1411_writereg.exit21_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_writereg.exit21

do.end.i18:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 25, i32 noundef 245, i32 noundef 0, i32 noundef %call.i15) #11
  br label %s5h1411_writereg.exit21

s5h1411_writereg.exit21:                          ; preds = %do.end.i18, %if.else.s5h1411_writereg.exit21_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i11) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i10) #7
  br label %cleanup

cleanup:                                          ; preds = %s5h1411_writereg.exit21, %s5h1411_writereg.exit
  %retval.0.in.in = phi i1 [ %cmp.not.i, %s5h1411_writereg.exit ], [ %cmp.not.i16, %s5h1411_writereg.exit21 ]
  %retval.0.in = xor i1 %retval.0.in.in, true
  %retval.0 = sext i1 %retval.0.in to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5h1411_release(ptr nocapture noundef readonly %fe) #0 align 64 {
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
define internal i32 @s5h1411_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i.i = alloca [3 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv.i, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.do.end3.i_crit_edge, label %do.end.i

entry.do.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.25, i32 noundef 1) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %entry.do.end3.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i) #7
  %3 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 1
  %4 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -12, ptr %buf.i.i, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %3, align 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %8 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 262143, ptr %8, align 4
  %10 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 25, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i.i, align 2
  %buf7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf.i.i, ptr %buf7.i.i, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %do.end3.i.s5h1411_set_powerstate.exit_crit_edge, label %do.end.i.i

do.end3.i.s5h1411_set_powerstate.exit_crit_edge:  ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_set_powerstate.exit

do.end.i.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 25, i32 noundef 244, i32 noundef 1, i32 noundef %call.i.i) #11
  br label %s5h1411_set_powerstate.exit

s5h1411_set_powerstate.exit:                      ; preds = %do.end.i.i, %do.end3.i.s5h1411_set_powerstate.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5h1411_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i61.i = alloca [3 x i8], align 1
  %msg.i62.i = alloca %struct.i2c_msg, align 4
  %buf.i49.i = alloca [3 x i8], align 1
  %msg.i50.i = alloca %struct.i2c_msg, align 4
  %buf.i37.i = alloca [3 x i8], align 1
  %msg.i38.i = alloca %struct.i2c_msg, align 4
  %buf.i25.i = alloca [3 x i8], align 1
  %msg.i26.i = alloca %struct.i2c_msg, align 4
  %buf.i13.i = alloca [3 x i8], align 1
  %msg.i14.i = alloca %struct.i2c_msg, align 4
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
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dtv_property_cache, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef %4) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  tail call fastcc void @s5h1411_softreset(ptr noundef %fe)
  %5 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dtv_property_cache, align 4
  %current_frequency = getelementptr inbounds %struct.s5h1411_state, ptr %1, i32 0, i32 5
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
  br i1 %tobool.not.i, label %do.end3.do.end3.i_crit_edge, label %do.end.i

do.end3.do.end3.i_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef %9) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %do.end3.do.end3.i_crit_edge
  %first_tune.i = getelementptr inbounds %struct.s5h1411_state, ptr %11, i32 0, i32 4
  %13 = ptrtoint ptr %first_tune.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i = load i8, ptr %first_tune.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %cmp.i = icmp sgt i8 %bf.load.i, -1
  br i1 %cmp.i, label %land.lhs.true.i, label %do.end3.i.if.end17.i_crit_edge

do.end3.i.if.end17.i_crit_edge:                   ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

land.lhs.true.i:                                  ; preds = %do.end3.i
  %current_modulation.i = getelementptr inbounds %struct.s5h1411_state, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %current_modulation.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %current_modulation.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %9)
  %cmp4.i = icmp eq i32 %15, %9
  br i1 %cmp4.i, label %do.body6.i, label %land.lhs.true.i.if.end17.i_crit_edge

land.lhs.true.i.if.end17.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

do.body6.i:                                       ; preds = %land.lhs.true.i
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool7.not.i = icmp eq i32 %16, 0
  br i1 %tobool7.not.i, label %do.body6.i.s5h1411_enable_modulation.exit_crit_edge, label %do.end11.i

do.body6.i.s5h1411_enable_modulation.exit_crit_edge: ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_enable_modulation.exit

do.end11.i:                                       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29) #11
  br label %s5h1411_enable_modulation.exit

if.end17.i:                                       ; preds = %land.lhs.true.i.if.end17.i_crit_edge, %do.end3.i.if.end17.i_crit_edge
  %17 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %9, label %do.body52.i [
    i32 7, label %do.body18.i
    i32 3, label %if.end17.i.do.body34.i_crit_edge
    i32 5, label %if.end17.i.do.body34.i_crit_edge46
    i32 6, label %if.end17.i.do.body34.i_crit_edge47
  ]

if.end17.i.do.body34.i_crit_edge47:               ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body34.i

if.end17.i.do.body34.i_crit_edge46:               ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body34.i

if.end17.i.do.body34.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body34.i

do.body18.i:                                      ; preds = %if.end17.i
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool19.not.i = icmp eq i32 %18, 0
  br i1 %tobool19.not.i, label %do.body18.i.do.end28.i_crit_edge, label %do.end23.i

do.body18.i.do.end28.i_crit_edge:                 ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28.i

do.end23.i:                                       ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #9
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.29) #11
  br label %do.end28.i

do.end28.i:                                       ; preds = %do.end23.i, %do.body18.i.do.end28.i_crit_edge
  %config.i = getelementptr inbounds %struct.s5h1411_state, ptr %11, i32 0, i32 1
  %19 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %config.i, align 4
  %vsb_if.i = getelementptr inbounds %struct.s5h1411_config, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %vsb_if.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vsb_if.i, align 2
  %conv.i = zext i16 %22 to i32
  tail call fastcc void @s5h1411_set_if_freq(ptr noundef %fe, i32 noundef %conv.i) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i) #7
  %23 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 1
  %24 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %buf.i.i, align 1
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %23, align 1
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 113, ptr %24, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %28 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 262143, ptr %28, align 4
  %30 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 25, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %flags.i.i, align 2
  %buf7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %buf7.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %buf.i.i, ptr %buf7.i.i, align 4
  %33 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %11, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %do.end28.i.s5h1411_writereg.exit.i_crit_edge, label %do.end.i.i

do.end28.i.s5h1411_writereg.exit.i_crit_edge:     ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_writereg.exit.i

do.end.i.i:                                       ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 25, i32 noundef 0, i32 noundef 113, i32 noundef %call.i.i) #11
  br label %s5h1411_writereg.exit.i

s5h1411_writereg.exit.i:                          ; preds = %do.end.i.i, %do.end28.i.s5h1411_writereg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i1.i) #7
  %35 = getelementptr inbounds [3 x i8], ptr %buf.i1.i, i32 0, i32 1
  %36 = getelementptr inbounds [3 x i8], ptr %buf.i1.i, i32 0, i32 2
  %37 = ptrtoint ptr %buf.i1.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -10, ptr %buf.i1.i, align 1
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %35, align 1
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %36, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2.i) #7
  %40 = getelementptr inbounds i8, ptr %msg.i2.i, i32 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 262143, ptr %40, align 4
  %42 = ptrtoint ptr %msg.i2.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 25, ptr %msg.i2.i, align 4
  %flags.i3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 1
  %43 = ptrtoint ptr %flags.i3.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %flags.i3.i, align 2
  %buf7.i5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 3
  %44 = ptrtoint ptr %buf7.i5.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %buf.i1.i, ptr %buf7.i5.i, align 4
  %45 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %11, align 4
  %call.i6.i = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %msg.i2.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i6.i)
  %cmp.not.i7.i = icmp eq i32 %call.i6.i, 1
  br i1 %cmp.not.i7.i, label %s5h1411_writereg.exit.i.s5h1411_writereg.exit12.i_crit_edge, label %do.end.i9.i

s5h1411_writereg.exit.i.s5h1411_writereg.exit12.i_crit_edge: ; preds = %s5h1411_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_writereg.exit12.i

do.end.i9.i:                                      ; preds = %s5h1411_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 25, i32 noundef 246, i32 noundef 0, i32 noundef %call.i6.i) #11
  br label %s5h1411_writereg.exit12.i

s5h1411_writereg.exit12.i:                        ; preds = %do.end.i9.i, %s5h1411_writereg.exit.i.s5h1411_writereg.exit12.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i1.i) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i13.i) #7
  %47 = getelementptr inbounds [3 x i8], ptr %buf.i13.i, i32 0, i32 1
  %48 = getelementptr inbounds [3 x i8], ptr %buf.i13.i, i32 0, i32 2
  %49 = ptrtoint ptr %buf.i13.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -51, ptr %buf.i13.i, align 1
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %47, align 1
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -15, ptr %48, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i14.i) #7
  %52 = getelementptr inbounds i8, ptr %msg.i14.i, i32 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 262143, ptr %52, align 4
  %54 = ptrtoint ptr %msg.i14.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 25, ptr %msg.i14.i, align 4
  %flags.i15.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14.i, i32 0, i32 1
  %55 = ptrtoint ptr %flags.i15.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %flags.i15.i, align 2
  %buf7.i17.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14.i, i32 0, i32 3
  %56 = ptrtoint ptr %buf7.i17.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %buf.i13.i, ptr %buf7.i17.i, align 4
  %57 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %11, align 4
  %call.i18.i = call i32 @i2c_transfer(ptr noundef %58, ptr noundef nonnull %msg.i14.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i18.i)
  %cmp.not.i19.i = icmp eq i32 %call.i18.i, 1
  br i1 %cmp.not.i19.i, label %s5h1411_writereg.exit12.i.s5h1411_writereg.exit24.i_crit_edge, label %do.end.i21.i

s5h1411_writereg.exit12.i.s5h1411_writereg.exit24.i_crit_edge: ; preds = %s5h1411_writereg.exit12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_writereg.exit24.i

do.end.i21.i:                                     ; preds = %s5h1411_writereg.exit12.i
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 25, i32 noundef 205, i32 noundef 241, i32 noundef %call.i18.i) #11
  br label %s5h1411_writereg.exit24.i

s5h1411_writereg.exit24.i:                        ; preds = %do.end.i21.i, %s5h1411_writereg.exit12.i.s5h1411_writereg.exit24.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i14.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i13.i) #7
  br label %sw.epilog.i

do.body34.i:                                      ; preds = %if.end17.i.do.body34.i_crit_edge, %if.end17.i.do.body34.i_crit_edge46, %if.end17.i.do.body34.i_crit_edge47
  %59 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool35.not.i = icmp eq i32 %59, 0
  br i1 %tobool35.not.i, label %do.body34.i.do.end44.i_crit_edge, label %do.end39.i

do.body34.i.do.end44.i_crit_edge:                 ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end44.i

do.end39.i:                                       ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #9
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.29) #11
  br label %do.end44.i

do.end44.i:                                       ; preds = %do.end39.i, %do.body34.i.do.end44.i_crit_edge
  %config45.i = getelementptr inbounds %struct.s5h1411_state, ptr %11, i32 0, i32 1
  %60 = ptrtoint ptr %config45.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %config45.i, align 4
  %qam_if.i = getelementptr inbounds %struct.s5h1411_config, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %qam_if.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %qam_if.i, align 2
  %conv46.i = zext i16 %63 to i32
  tail call fastcc void @s5h1411_set_if_freq(ptr noundef %fe, i32 noundef %conv46.i) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i25.i) #7
  %64 = getelementptr inbounds [3 x i8], ptr %buf.i25.i, i32 0, i32 1
  %65 = getelementptr inbounds [3 x i8], ptr %buf.i25.i, i32 0, i32 2
  %66 = ptrtoint ptr %buf.i25.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %buf.i25.i, align 1
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %64, align 1
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 113, ptr %65, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i26.i) #7
  %69 = getelementptr inbounds i8, ptr %msg.i26.i, i32 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 262143, ptr %69, align 4
  %71 = ptrtoint ptr %msg.i26.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 25, ptr %msg.i26.i, align 4
  %flags.i27.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i26.i, i32 0, i32 1
  %72 = ptrtoint ptr %flags.i27.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %flags.i27.i, align 2
  %buf7.i29.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i26.i, i32 0, i32 3
  %73 = ptrtoint ptr %buf7.i29.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %buf.i25.i, ptr %buf7.i29.i, align 4
  %74 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %11, align 4
  %call.i30.i = call i32 @i2c_transfer(ptr noundef %75, ptr noundef nonnull %msg.i26.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i30.i)
  %cmp.not.i31.i = icmp eq i32 %call.i30.i, 1
  br i1 %cmp.not.i31.i, label %do.end44.i.s5h1411_writereg.exit36.i_crit_edge, label %do.end.i33.i

do.end44.i.s5h1411_writereg.exit36.i_crit_edge:   ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_writereg.exit36.i

do.end.i33.i:                                     ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i32.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 25, i32 noundef 0, i32 noundef 369, i32 noundef %call.i30.i) #11
  br label %s5h1411_writereg.exit36.i

s5h1411_writereg.exit36.i:                        ; preds = %do.end.i33.i, %do.end44.i.s5h1411_writereg.exit36.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i26.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i25.i) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i37.i) #7
  %76 = getelementptr inbounds [3 x i8], ptr %buf.i37.i, i32 0, i32 1
  %77 = getelementptr inbounds [3 x i8], ptr %buf.i37.i, i32 0, i32 2
  %78 = ptrtoint ptr %buf.i37.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -10, ptr %buf.i37.i, align 1
  %79 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %76, align 1
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %77, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i38.i) #7
  %81 = getelementptr inbounds i8, ptr %msg.i38.i, i32 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 262143, ptr %81, align 4
  %83 = ptrtoint ptr %msg.i38.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 25, ptr %msg.i38.i, align 4
  %flags.i39.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38.i, i32 0, i32 1
  %84 = ptrtoint ptr %flags.i39.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 0, ptr %flags.i39.i, align 2
  %buf7.i41.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38.i, i32 0, i32 3
  %85 = ptrtoint ptr %buf7.i41.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %buf.i37.i, ptr %buf7.i41.i, align 4
  %86 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %11, align 4
  %call.i42.i = call i32 @i2c_transfer(ptr noundef %87, ptr noundef nonnull %msg.i38.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i42.i)
  %cmp.not.i43.i = icmp eq i32 %call.i42.i, 1
  br i1 %cmp.not.i43.i, label %s5h1411_writereg.exit36.i.s5h1411_writereg.exit48.i_crit_edge, label %do.end.i45.i

s5h1411_writereg.exit36.i.s5h1411_writereg.exit48.i_crit_edge: ; preds = %s5h1411_writereg.exit36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_writereg.exit48.i

do.end.i45.i:                                     ; preds = %s5h1411_writereg.exit36.i
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i44.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 25, i32 noundef 246, i32 noundef 1, i32 noundef %call.i42.i) #11
  br label %s5h1411_writereg.exit48.i

s5h1411_writereg.exit48.i:                        ; preds = %do.end.i45.i, %s5h1411_writereg.exit36.i.s5h1411_writereg.exit48.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i38.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i37.i) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i49.i) #7
  %88 = getelementptr inbounds [3 x i8], ptr %buf.i49.i, i32 0, i32 1
  %89 = getelementptr inbounds [3 x i8], ptr %buf.i49.i, i32 0, i32 2
  %90 = ptrtoint ptr %buf.i49.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 22, ptr %buf.i49.i, align 1
  %91 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 17, ptr %88, align 1
  %92 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %89, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i50.i) #7
  %93 = getelementptr inbounds i8, ptr %msg.i50.i, i32 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 262143, ptr %93, align 4
  %95 = ptrtoint ptr %msg.i50.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 26, ptr %msg.i50.i, align 4
  %flags.i51.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50.i, i32 0, i32 1
  %96 = ptrtoint ptr %flags.i51.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 0, ptr %flags.i51.i, align 2
  %buf7.i53.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50.i, i32 0, i32 3
  %97 = ptrtoint ptr %buf7.i53.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %buf.i49.i, ptr %buf7.i53.i, align 4
  %98 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %11, align 4
  %call.i54.i = call i32 @i2c_transfer(ptr noundef %99, ptr noundef nonnull %msg.i50.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i54.i)
  %cmp.not.i55.i = icmp eq i32 %call.i54.i, 1
  br i1 %cmp.not.i55.i, label %s5h1411_writereg.exit48.i.s5h1411_writereg.exit60.i_crit_edge, label %do.end.i57.i

s5h1411_writereg.exit48.i.s5h1411_writereg.exit60.i_crit_edge: ; preds = %s5h1411_writereg.exit48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_writereg.exit60.i

do.end.i57.i:                                     ; preds = %s5h1411_writereg.exit48.i
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i56.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 26, i32 noundef 22, i32 noundef 4353, i32 noundef %call.i54.i) #11
  br label %s5h1411_writereg.exit60.i

s5h1411_writereg.exit60.i:                        ; preds = %do.end.i57.i, %s5h1411_writereg.exit48.i.s5h1411_writereg.exit60.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i50.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i49.i) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i61.i) #7
  %100 = getelementptr inbounds [3 x i8], ptr %buf.i61.i, i32 0, i32 1
  %101 = getelementptr inbounds [3 x i8], ptr %buf.i61.i, i32 0, i32 2
  %102 = ptrtoint ptr %buf.i61.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 -51, ptr %buf.i61.i, align 1
  %103 = ptrtoint ptr %100 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %100, align 1
  %104 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 -16, ptr %101, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i62.i) #7
  %105 = getelementptr inbounds i8, ptr %msg.i62.i, i32 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 262143, ptr %105, align 4
  %107 = ptrtoint ptr %msg.i62.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 25, ptr %msg.i62.i, align 4
  %flags.i63.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62.i, i32 0, i32 1
  %108 = ptrtoint ptr %flags.i63.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 0, ptr %flags.i63.i, align 2
  %buf7.i65.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62.i, i32 0, i32 3
  %109 = ptrtoint ptr %buf7.i65.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %buf.i61.i, ptr %buf7.i65.i, align 4
  %110 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %11, align 4
  %call.i66.i = call i32 @i2c_transfer(ptr noundef %111, ptr noundef nonnull %msg.i62.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i66.i)
  %cmp.not.i67.i = icmp eq i32 %call.i66.i, 1
  br i1 %cmp.not.i67.i, label %s5h1411_writereg.exit60.i.s5h1411_writereg.exit72.i_crit_edge, label %do.end.i69.i

s5h1411_writereg.exit60.i.s5h1411_writereg.exit72.i_crit_edge: ; preds = %s5h1411_writereg.exit60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_writereg.exit72.i

do.end.i69.i:                                     ; preds = %s5h1411_writereg.exit60.i
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i68.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 25, i32 noundef 205, i32 noundef 240, i32 noundef %call.i66.i) #11
  br label %s5h1411_writereg.exit72.i

s5h1411_writereg.exit72.i:                        ; preds = %do.end.i69.i, %s5h1411_writereg.exit60.i.s5h1411_writereg.exit72.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i62.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i61.i) #7
  br label %sw.epilog.i

do.body52.i:                                      ; preds = %if.end17.i
  %112 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool53.not.i = icmp eq i32 %112, 0
  br i1 %tobool53.not.i, label %do.body52.i.s5h1411_enable_modulation.exit_crit_edge, label %do.end57.i

do.body52.i.s5h1411_enable_modulation.exit_crit_edge: ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_enable_modulation.exit

do.end57.i:                                       ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #9
  %call59.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.29) #11
  br label %s5h1411_enable_modulation.exit

sw.epilog.i:                                      ; preds = %s5h1411_writereg.exit72.i, %s5h1411_writereg.exit24.i
  %current_modulation63.i = getelementptr inbounds %struct.s5h1411_state, ptr %11, i32 0, i32 3
  %113 = ptrtoint ptr %current_modulation63.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %9, ptr %current_modulation63.i, align 4
  %114 = ptrtoint ptr %first_tune.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %bf.load65.i = load i8, ptr %first_tune.i, align 4
  %bf.clear.i = and i8 %bf.load65.i, 127
  store i8 %bf.clear.i, ptr %first_tune.i, align 4
  call fastcc void @s5h1411_softreset(ptr noundef %fe) #7
  br label %s5h1411_enable_modulation.exit

s5h1411_enable_modulation.exit:                   ; preds = %sw.epilog.i, %do.end57.i, %do.body52.i.s5h1411_enable_modulation.exit_crit_edge, %do.end11.i, %do.body6.i.s5h1411_enable_modulation.exit_crit_edge
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %115 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %set_params, align 4
  %tobool7.not = icmp eq ptr %116, null
  br i1 %tobool7.not, label %s5h1411_enable_modulation.exit.if.end28_crit_edge, label %if.then8

s5h1411_enable_modulation.exit.if.end28_crit_edge: ; preds = %s5h1411_enable_modulation.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then8:                                         ; preds = %s5h1411_enable_modulation.exit
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %117 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool10.not = icmp eq ptr %118, null
  br i1 %tobool10.not, label %if.then8.if.end15_crit_edge, label %if.then11

if.then8.if.end15_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = call i32 %118(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.then8.if.end15_crit_edge
  %119 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %set_params, align 4
  %call19 = call i32 %120(ptr noundef %fe) #7
  %121 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool22.not = icmp eq ptr %122, null
  br i1 %tobool22.not, label %if.end15.if.end28_crit_edge, label %if.then23

if.end15.if.end28_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then23:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = call i32 %122(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.end15.if.end28_crit_edge, %s5h1411_enable_modulation.exit.if.end28_crit_edge
  call fastcc void @s5h1411_softreset(ptr noundef %fe)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @s5h1411_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %tune) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tune to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1000, ptr %tune, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s5h1411_get_frontend(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %p) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %current_frequency = getelementptr inbounds %struct.s5h1411_state, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %current_frequency to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_frequency, align 4
  %4 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %p, align 4
  %current_modulation = getelementptr inbounds %struct.s5h1411_state, ptr %1, i32 0, i32 3
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
define internal i32 @s5h1411_read_status(ptr noundef %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %b0.i119 = alloca [1 x i8], align 1
  %b1.i120 = alloca [2 x i8], align 2
  %msg.i121 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i99 = alloca [1 x i8], align 1
  %b1.i100 = alloca [2 x i8], align 2
  %msg.i101 = alloca [2 x %struct.i2c_msg], align 4
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
  %current_modulation = getelementptr inbounds %struct.s5h1411_state, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %current_modulation to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_modulation, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 3, label %entry.sw.bb_crit_edge
    i32 5, label %entry.sw.bb_crit_edge140
    i32 7, label %sw.bb7
  ]

entry.sw.bb_crit_edge140:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge140
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %7 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -16, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i) #7
  %8 = ptrtoint ptr %b1.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %b1.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 16)
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 25, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %9, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 25, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %17 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 2, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b1.i, ptr %buf7.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %sw.bb.s5h1411_readreg.exit_crit_edge, label %do.end.i

sw.bb.s5h1411_readreg.exit_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_readreg.exit

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i) #11
  br label %s5h1411_readreg.exit

s5h1411_readreg.exit:                             ; preds = %do.end.i, %sw.bb.s5h1411_readreg.exit_crit_edge
  %21 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b1.i, align 2
  %arrayidx13.i = getelementptr inbounds [2 x i8], ptr %b1.i, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx13.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %25 = and i8 %24, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not = icmp eq i8 %25, 0
  br i1 %tobool.not, label %s5h1411_readreg.exit.if.end_crit_edge, label %if.then

s5h1411_readreg.exit.if.end_crit_edge:            ; preds = %s5h1411_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %s5h1411_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %status, align 4
  %or = or i32 %27, 24
  store i32 %or, ptr %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %s5h1411_readreg.exit.if.end_crit_edge
  %28 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool3.not = icmp eq i8 %28, 0
  br i1 %tobool3.not, label %if.end.sw.epilog_crit_edge, label %if.end.sw.epilog.sink.split_crit_edge

if.end.sw.epilog.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i99) #7
  %29 = ptrtoint ptr %b0.i99 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -14, ptr %b0.i99, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i100) #7
  %30 = ptrtoint ptr %b1.i100 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %b1.i100, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i101) #7
  %31 = getelementptr inbounds i8, ptr %msg.i101, i32 4
  %32 = call ptr @memset(ptr %31, i32 255, i32 16)
  %33 = ptrtoint ptr %msg.i101 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 25, ptr %msg.i101, align 4
  %flags.i102 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i101, i32 0, i32 1
  %34 = ptrtoint ptr %flags.i102 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags.i102, align 2
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %31, align 4
  %buf.i104 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i101, i32 0, i32 3
  %36 = ptrtoint ptr %buf.i104 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %b0.i99, ptr %buf.i104, align 4
  %arrayinit.element.i105 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i101, i32 1
  %37 = ptrtoint ptr %arrayinit.element.i105 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 25, ptr %arrayinit.element.i105, align 4
  %flags5.i106 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i101, i32 1, i32 1
  %38 = ptrtoint ptr %flags5.i106 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %flags5.i106, align 2
  %len6.i107 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i101, i32 1, i32 2
  %39 = ptrtoint ptr %len6.i107 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 2, ptr %len6.i107, align 4
  %buf7.i108 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i101, i32 1, i32 3
  %40 = ptrtoint ptr %buf7.i108 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %b1.i100, ptr %buf7.i108, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %call.i109 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg.i101, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i109)
  %cmp.not.i110 = icmp eq i32 %call.i109, 2
  br i1 %cmp.not.i110, label %sw.bb7.s5h1411_readreg.exit118_crit_edge, label %do.end.i112

sw.bb7.s5h1411_readreg.exit118_crit_edge:         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_readreg.exit118

do.end.i112:                                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i109) #11
  br label %s5h1411_readreg.exit118

s5h1411_readreg.exit118:                          ; preds = %do.end.i112, %sw.bb7.s5h1411_readreg.exit118_crit_edge
  %43 = ptrtoint ptr %b1.i100 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %b1.i100, align 2
  %conv12.i113 = zext i8 %44 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i101) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i100) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i99) #7
  %45 = and i32 %conv12.i113, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool11.not = icmp eq i32 %45, 0
  br i1 %tobool11.not, label %s5h1411_readreg.exit118.if.end14_crit_edge, label %if.then12

s5h1411_readreg.exit118.if.end14_crit_edge:       ; preds = %s5h1411_readreg.exit118
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then12:                                        ; preds = %s5h1411_readreg.exit118
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %status, align 4
  %or13 = or i32 %47, 24
  store i32 %or13, ptr %status, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %s5h1411_readreg.exit118.if.end14_crit_edge
  %48 = and i32 %conv12.i113, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool17.not = icmp eq i32 %48, 0
  br i1 %tobool17.not, label %if.end14.if.end20_crit_edge, label %if.then18

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %status, align 4
  %or19 = or i32 %50, 7
  store i32 %or19, ptr %status, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end14.if.end20_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i119) #7
  %51 = ptrtoint ptr %b0.i119 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 83, ptr %b0.i119, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i120) #7
  %52 = ptrtoint ptr %b1.i120 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %b1.i120, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i121) #7
  %53 = getelementptr inbounds i8, ptr %msg.i121, i32 4
  %54 = call ptr @memset(ptr %53, i32 255, i32 16)
  %55 = ptrtoint ptr %msg.i121 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 25, ptr %msg.i121, align 4
  %flags.i122 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i121, i32 0, i32 1
  %56 = ptrtoint ptr %flags.i122 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %flags.i122, align 2
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 1, ptr %53, align 4
  %buf.i124 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i121, i32 0, i32 3
  %58 = ptrtoint ptr %buf.i124 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %b0.i119, ptr %buf.i124, align 4
  %arrayinit.element.i125 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i121, i32 1
  %59 = ptrtoint ptr %arrayinit.element.i125 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 25, ptr %arrayinit.element.i125, align 4
  %flags5.i126 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i121, i32 1, i32 1
  %60 = ptrtoint ptr %flags5.i126 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 1, ptr %flags5.i126, align 2
  %len6.i127 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i121, i32 1, i32 2
  %61 = ptrtoint ptr %len6.i127 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 2, ptr %len6.i127, align 4
  %buf7.i128 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i121, i32 1, i32 3
  %62 = ptrtoint ptr %buf7.i128 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %b1.i120, ptr %buf7.i128, align 4
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  %call.i129 = call i32 @i2c_transfer(ptr noundef %64, ptr noundef nonnull %msg.i121, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i129)
  %cmp.not.i130 = icmp eq i32 %call.i129, 2
  br i1 %cmp.not.i130, label %if.end20.s5h1411_readreg.exit138_crit_edge, label %do.end.i132

if.end20.s5h1411_readreg.exit138_crit_edge:       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_readreg.exit138

do.end.i132:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i131 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i129) #11
  br label %s5h1411_readreg.exit138

s5h1411_readreg.exit138:                          ; preds = %do.end.i132, %if.end20.s5h1411_readreg.exit138_crit_edge
  %arrayidx13.i135 = getelementptr inbounds [2 x i8], ptr %b1.i120, i32 0, i32 1
  %65 = ptrtoint ptr %arrayidx13.i135 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx13.i135, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i121) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i120) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i119) #7
  %67 = and i8 %66, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool24.not = icmp eq i8 %67, 0
  br i1 %tobool24.not, label %s5h1411_readreg.exit138.sw.epilog_crit_edge, label %s5h1411_readreg.exit138.sw.epilog.sink.split_crit_edge

s5h1411_readreg.exit138.sw.epilog.sink.split_crit_edge: ; preds = %s5h1411_readreg.exit138
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

s5h1411_readreg.exit138.sw.epilog_crit_edge:      ; preds = %s5h1411_readreg.exit138
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %s5h1411_readreg.exit138.sw.epilog.sink.split_crit_edge, %if.end.sw.epilog.sink.split_crit_edge
  %.sink139 = phi i32 [ 7, %if.end.sw.epilog.sink.split_crit_edge ], [ 1, %s5h1411_readreg.exit138.sw.epilog.sink.split_crit_edge ]
  %68 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %status, align 4
  %or26 = or i32 %69, %.sink139
  store i32 %or26, ptr %status, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %s5h1411_readreg.exit138.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %config = getelementptr inbounds %struct.s5h1411_state, ptr %1, i32 0, i32 1
  %70 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %config, align 4
  %status_mode = getelementptr inbounds %struct.s5h1411_config, ptr %71, i32 0, i32 6
  %72 = ptrtoint ptr %status_mode to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %status_mode, align 1
  %74 = zext i8 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %73, label %sw.epilog.do.body_crit_edge [
    i8 1, label %sw.bb29
    i8 0, label %sw.bb35
  ]

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

sw.bb29:                                          ; preds = %sw.epilog
  %75 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %status, align 4
  %and30 = and i32 %76, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %sw.bb29.do.body_crit_edge, label %sw.bb29.do.body.sink.split_crit_edge

sw.bb29.do.body.sink.split_crit_edge:             ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.sink.split

sw.bb29.do.body_crit_edge:                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

sw.bb35:                                          ; preds = %sw.epilog
  %get_status = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 12
  %77 = ptrtoint ptr %get_status to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %get_status, align 4
  %tobool36.not = icmp eq ptr %78, null
  br i1 %tobool36.not, label %sw.bb35.if.end57_crit_edge, label %if.then37

sw.bb35.if.end57_crit_edge:                       ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then37:                                        ; preds = %sw.bb35
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %79 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool39.not = icmp eq ptr %80, null
  br i1 %tobool39.not, label %if.then37.if.end44_crit_edge, label %if.then40

if.then37.if.end44_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %call43 = call i32 %80(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %if.then37.if.end44_crit_edge
  %81 = ptrtoint ptr %get_status to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %get_status, align 4
  %call48 = call i32 %82(ptr noundef %fe, ptr noundef nonnull %tuner_status) #7
  %83 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool51.not = icmp eq ptr %84, null
  br i1 %tobool51.not, label %if.end44.if.end57_crit_edge, label %if.then52

if.end44.if.end57_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then52:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %call55 = call i32 %84(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end57

if.end57:                                         ; preds = %if.then52, %if.end44.if.end57_crit_edge, %sw.bb35.if.end57_crit_edge
  %85 = ptrtoint ptr %tuner_status to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tuner_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool58.not = icmp eq i32 %86, 0
  br i1 %tobool58.not, label %if.end57.do.body_crit_edge, label %if.then59

if.end57.do.body_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %status, align 4
  br label %do.body.sink.split

do.body.sink.split:                               ; preds = %if.then59, %sw.bb29.do.body.sink.split_crit_edge
  %.sink = phi i32 [ %88, %if.then59 ], [ %76, %sw.bb29.do.body.sink.split_crit_edge ]
  %or33 = or i32 %.sink, 3
  %89 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %or33, ptr %status, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %if.end57.do.body_crit_edge, %sw.bb29.do.body_crit_edge, %sw.epilog.do.body_crit_edge
  %90 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool63.not = icmp eq i32 %90, 0
  br i1 %tobool63.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %status, align 4
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef %92) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tuner_status) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5h1411_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
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
  store i8 -55, ptr %b0.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i.i) #7
  %3 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %b1.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #7
  %4 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %6 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 25, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags.i.i, align 2
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %4, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %b0.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %10 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 25, ptr %arrayinit.element.i.i, align 4
  %flags5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %11 = ptrtoint ptr %flags5.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %flags5.i.i, align 2
  %len6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %12 = ptrtoint ptr %len6.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2, ptr %len6.i.i, align 4
  %buf7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %13 = ptrtoint ptr %buf7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b1.i.i, ptr %buf7.i.i, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %entry.s5h1411_read_ucblocks.exit_crit_edge, label %do.end.i.i

entry.s5h1411_read_ucblocks.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_read_ucblocks.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i.i) #11
  br label %s5h1411_read_ucblocks.exit

s5h1411_read_ucblocks.exit:                       ; preds = %do.end.i.i, %entry.s5h1411_read_ucblocks.exit_crit_edge
  %16 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %b1.i.i, align 2
  %conv12.i.i = zext i8 %17 to i32
  %shl.i.i = shl nuw nsw i32 %conv12.i.i, 8
  %arrayidx13.i.i = getelementptr inbounds [2 x i8], ptr %b1.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx13.i.i, align 1
  %conv14.i.i = zext i8 %19 to i32
  %or.i.i = or i32 %shl.i.i, %conv14.i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i.i) #7
  %20 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i.i, ptr %ber, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5h1411_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %signal_strength) #0 align 64 {
entry:
  %snr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %snr) #7
  %0 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %snr, align 2, !annotation !154
  %call = call i32 @s5h1411_read_snr(ptr noundef %fe, ptr noundef nonnull %snr)
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
define internal i32 @s5h1411_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef %snr) #0 align 64 {
entry:
  %b0.i60 = alloca [1 x i8], align 1
  %b1.i61 = alloca [2 x i8], align 2
  %msg.i62 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i26 = alloca [1 x i8], align 1
  %b1.i27 = alloca [2 x i8], align 2
  %msg.i28 = alloca [2 x %struct.i2c_msg], align 4
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
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.44) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %current_modulation = getelementptr inbounds %struct.s5h1411_state, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %current_modulation to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %current_modulation, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %4, label %do.end3.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 5, label %sw.bb6
    i32 7, label %sw.bb9
  ]

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %do.end3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %6 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -15, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i) #7
  %7 = ptrtoint ptr %b1.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %b1.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 25, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %8, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 25, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %15 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %16 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %17 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %b1.i, ptr %buf7.i, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %sw.bb.s5h1411_readreg.exit_crit_edge, label %do.end.i

sw.bb.s5h1411_readreg.exit_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_readreg.exit

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i) #11
  br label %s5h1411_readreg.exit

s5h1411_readreg.exit:                             ; preds = %do.end.i, %sw.bb.s5h1411_readreg.exit_crit_edge
  %20 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %b1.i, align 2
  %conv12.i = zext i8 %21 to i16
  %shl.i = shl nuw i16 %conv12.i, 8
  %arrayidx13.i = getelementptr inbounds [2 x i8], ptr %b1.i, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %23 to i16
  %or.i = or i16 %shl.i, %conv14.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %s5h1411_readreg.exit.for.body.i.preheader_crit_edge, label %do.end.i25

s5h1411_readreg.exit.for.body.i.preheader_crit_edge: ; preds = %s5h1411_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.preheader

do.end.i25:                                       ; preds = %s5h1411_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.45) #11
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %do.end.i25, %s5h1411_readreg.exit.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.02.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr [66 x %struct.qam64_snr_tab], ptr @qam64_snr_tab, i32 0, i32 %i.02.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %or.i)
  %cmp5.i = icmp ugt i16 %26, %or.i
  br i1 %cmp5.i, label %if.then7.i, label %for.inc.i

if.then7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %data.i = getelementptr [66 x %struct.qam64_snr_tab], ptr @qam64_snr_tab, i32 0, i32 %i.02.i, i32 1
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %data.i, align 2
  %29 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %snr, align 2
  br label %cleanup

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 66
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb6:                                           ; preds = %do.end3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i26) #7
  %30 = ptrtoint ptr %b0.i26 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -15, ptr %b0.i26, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i27) #7
  %31 = ptrtoint ptr %b1.i27 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %b1.i27, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i28) #7
  %32 = getelementptr inbounds i8, ptr %msg.i28, i32 4
  %33 = call ptr @memset(ptr %32, i32 255, i32 16)
  %34 = ptrtoint ptr %msg.i28 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 25, ptr %msg.i28, align 4
  %flags.i29 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i28, i32 0, i32 1
  %35 = ptrtoint ptr %flags.i29 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags.i29, align 2
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %32, align 4
  %buf.i31 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i28, i32 0, i32 3
  %37 = ptrtoint ptr %buf.i31 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %b0.i26, ptr %buf.i31, align 4
  %arrayinit.element.i32 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i28, i32 1
  %38 = ptrtoint ptr %arrayinit.element.i32 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 25, ptr %arrayinit.element.i32, align 4
  %flags5.i33 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i28, i32 1, i32 1
  %39 = ptrtoint ptr %flags5.i33 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %flags5.i33, align 2
  %len6.i34 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i28, i32 1, i32 2
  %40 = ptrtoint ptr %len6.i34 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 2, ptr %len6.i34, align 4
  %buf7.i35 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i28, i32 1, i32 3
  %41 = ptrtoint ptr %buf7.i35 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %b1.i27, ptr %buf7.i35, align 4
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %call.i36 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %msg.i28, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i36)
  %cmp.not.i37 = icmp eq i32 %call.i36, 2
  br i1 %cmp.not.i37, label %sw.bb6.s5h1411_readreg.exit45_crit_edge, label %do.end.i39

sw.bb6.s5h1411_readreg.exit45_crit_edge:          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_readreg.exit45

do.end.i39:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i36) #11
  br label %s5h1411_readreg.exit45

s5h1411_readreg.exit45:                           ; preds = %do.end.i39, %sw.bb6.s5h1411_readreg.exit45_crit_edge
  %44 = ptrtoint ptr %b1.i27 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %b1.i27, align 2
  %conv12.i40 = zext i8 %45 to i16
  %shl.i41 = shl nuw i16 %conv12.i40, 8
  %arrayidx13.i42 = getelementptr inbounds [2 x i8], ptr %b1.i27, i32 0, i32 1
  %46 = ptrtoint ptr %arrayidx13.i42 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx13.i42, align 1
  %conv14.i43 = zext i8 %47 to i16
  %or.i44 = or i16 %shl.i41, %conv14.i43
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i28) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i27) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i26) #7
  %48 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i46 = icmp eq i32 %48, 0
  br i1 %tobool.not.i46, label %s5h1411_readreg.exit45.for.body.i53.preheader_crit_edge, label %do.end.i48

s5h1411_readreg.exit45.for.body.i53.preheader_crit_edge: ; preds = %s5h1411_readreg.exit45
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i53.preheader

do.end.i48:                                       ; preds = %s5h1411_readreg.exit45
  call void @__sanitizer_cov_trace_pc() #9
  %call.i47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.46) #11
  br label %for.body.i53.preheader

for.body.i53.preheader:                           ; preds = %do.end.i48, %s5h1411_readreg.exit45.for.body.i53.preheader_crit_edge
  br label %for.body.i53

for.body.i53:                                     ; preds = %for.inc.i58.for.body.i53_crit_edge, %for.body.i53.preheader
  %i.02.i50 = phi i32 [ %inc.i56, %for.inc.i58.for.body.i53_crit_edge ], [ 0, %for.body.i53.preheader ]
  %arrayidx.i51 = getelementptr [72 x %struct.qam256_snr_tab], ptr @qam256_snr_tab, i32 0, i32 %i.02.i50
  %49 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx.i51, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %50, i16 %or.i44)
  %cmp5.i52 = icmp ugt i16 %50, %or.i44
  br i1 %cmp5.i52, label %if.then7.i55, label %for.inc.i58

if.then7.i55:                                     ; preds = %for.body.i53
  call void @__sanitizer_cov_trace_pc() #9
  %data.i54 = getelementptr [72 x %struct.qam256_snr_tab], ptr @qam256_snr_tab, i32 0, i32 %i.02.i50, i32 1
  %51 = ptrtoint ptr %data.i54 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %data.i54, align 2
  %53 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %snr, align 2
  br label %cleanup

for.inc.i58:                                      ; preds = %for.body.i53
  %inc.i56 = add nuw nsw i32 %i.02.i50, 1
  %exitcond.not.i57 = icmp eq i32 %inc.i56, 72
  br i1 %exitcond.not.i57, label %for.inc.i58.cleanup_crit_edge, label %for.inc.i58.for.body.i53_crit_edge

for.inc.i58.for.body.i53_crit_edge:               ; preds = %for.inc.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i53

for.inc.i58.cleanup_crit_edge:                    ; preds = %for.inc.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb9:                                           ; preds = %do.end3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i60) #7
  %54 = ptrtoint ptr %b0.i60 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -14, ptr %b0.i60, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i61) #7
  %55 = ptrtoint ptr %b1.i61 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %b1.i61, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i62) #7
  %56 = getelementptr inbounds i8, ptr %msg.i62, i32 4
  %57 = call ptr @memset(ptr %56, i32 255, i32 16)
  %58 = ptrtoint ptr %msg.i62 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 25, ptr %msg.i62, align 4
  %flags.i63 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62, i32 0, i32 1
  %59 = ptrtoint ptr %flags.i63 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %flags.i63, align 2
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 1, ptr %56, align 4
  %buf.i65 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62, i32 0, i32 3
  %61 = ptrtoint ptr %buf.i65 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %b0.i60, ptr %buf.i65, align 4
  %arrayinit.element.i66 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62, i32 1
  %62 = ptrtoint ptr %arrayinit.element.i66 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 25, ptr %arrayinit.element.i66, align 4
  %flags5.i67 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62, i32 1, i32 1
  %63 = ptrtoint ptr %flags5.i67 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 1, ptr %flags5.i67, align 2
  %len6.i68 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62, i32 1, i32 2
  %64 = ptrtoint ptr %len6.i68 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 2, ptr %len6.i68, align 4
  %buf7.i69 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62, i32 1, i32 3
  %65 = ptrtoint ptr %buf7.i69 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %b1.i61, ptr %buf7.i69, align 4
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %call.i70 = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %msg.i62, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i70)
  %cmp.not.i71 = icmp eq i32 %call.i70, 2
  br i1 %cmp.not.i71, label %sw.bb9.s5h1411_readreg.exit79_crit_edge, label %do.end.i73

sw.bb9.s5h1411_readreg.exit79_crit_edge:          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_readreg.exit79

do.end.i73:                                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i70) #11
  br label %s5h1411_readreg.exit79

s5h1411_readreg.exit79:                           ; preds = %do.end.i73, %sw.bb9.s5h1411_readreg.exit79_crit_edge
  %68 = ptrtoint ptr %b1.i61 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %b1.i61, align 2
  %conv12.i74 = zext i8 %69 to i16
  %shl.i75 = shl nuw i16 %conv12.i74, 8
  %arrayidx13.i76 = getelementptr inbounds [2 x i8], ptr %b1.i61, i32 0, i32 1
  %70 = ptrtoint ptr %arrayidx13.i76 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx13.i76, align 1
  %conv14.i77 = zext i8 %71 to i16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i62) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i61) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i60) #7
  %shl.i75.masked = and i16 %shl.i75, 768
  %72 = or i16 %shl.i75.masked, %conv14.i77
  %73 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i80 = icmp eq i32 %73, 0
  br i1 %tobool.not.i80, label %s5h1411_readreg.exit79.for.body.i87.preheader_crit_edge, label %do.end.i82

s5h1411_readreg.exit79.for.body.i87.preheader_crit_edge: ; preds = %s5h1411_readreg.exit79
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i87.preheader

do.end.i82:                                       ; preds = %s5h1411_readreg.exit79
  call void @__sanitizer_cov_trace_pc() #9
  %call.i81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.47) #11
  br label %for.body.i87.preheader

for.body.i87.preheader:                           ; preds = %do.end.i82, %s5h1411_readreg.exit79.for.body.i87.preheader_crit_edge
  br label %for.body.i87

for.body.i87:                                     ; preds = %for.inc.i92.for.body.i87_crit_edge, %for.body.i87.preheader
  %i.02.i84 = phi i32 [ %inc.i90, %for.inc.i92.for.body.i87_crit_edge ], [ 0, %for.body.i87.preheader ]
  %arrayidx.i85 = getelementptr [38 x %struct.vsb_snr_tab], ptr @vsb_snr_tab, i32 0, i32 %i.02.i84
  %74 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx.i85, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %75, i16 %72)
  %cmp5.i86 = icmp ult i16 %75, %72
  br i1 %cmp5.i86, label %if.then7.i89, label %for.inc.i92

if.then7.i89:                                     ; preds = %for.body.i87
  call void @__sanitizer_cov_trace_pc() #9
  %data.i88 = getelementptr [38 x %struct.vsb_snr_tab], ptr @vsb_snr_tab, i32 0, i32 %i.02.i84, i32 1
  %76 = ptrtoint ptr %data.i88 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %data.i88, align 2
  %78 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %snr, align 2
  br label %do.body10.i

for.inc.i92:                                      ; preds = %for.body.i87
  %inc.i90 = add nuw nsw i32 %i.02.i84, 1
  %exitcond.not.i91 = icmp eq i32 %inc.i90, 38
  br i1 %exitcond.not.i91, label %for.inc.i92.do.body10.i_crit_edge, label %for.inc.i92.for.body.i87_crit_edge

for.inc.i92.for.body.i87_crit_edge:               ; preds = %for.inc.i92
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i87

for.inc.i92.do.body10.i_crit_edge:                ; preds = %for.inc.i92
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body10.i

do.body10.i:                                      ; preds = %for.inc.i92.do.body10.i_crit_edge, %if.then7.i89
  %ret.0.i93 = phi i32 [ 0, %if.then7.i89 ], [ -22, %for.inc.i92.do.body10.i_crit_edge ]
  %79 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool11.not.i = icmp eq i32 %79, 0
  br i1 %tobool11.not.i, label %do.body10.i.cleanup_crit_edge, label %do.end15.i

do.body10.i.cleanup_crit_edge:                    ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end15.i:                                       ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %snr to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %snr, align 2
  %conv17.i = zext i16 %81 to i32
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %conv17.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end15.i, %do.body10.i.cleanup_crit_edge, %for.inc.i58.cleanup_crit_edge, %if.then7.i55, %for.inc.i.cleanup_crit_edge, %if.then7.i, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end3.cleanup_crit_edge ], [ 0, %if.then7.i ], [ 0, %if.then7.i55 ], [ %ret.0.i93, %do.body10.i.cleanup_crit_edge ], [ %ret.0.i93, %do.end15.i ], [ -22, %for.inc.i.cleanup_crit_edge ], [ -22, %for.inc.i58.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5h1411_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #0 align 64 {
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
  store i8 -55, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i) #7
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %b1.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %6 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 25, ptr %msg.i, align 4
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
  store i16 25, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %11 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %12 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %13 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b1.i, ptr %buf7.i, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.s5h1411_readreg.exit_crit_edge, label %do.end.i

entry.s5h1411_readreg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5h1411_readreg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i) #11
  br label %s5h1411_readreg.exit

s5h1411_readreg.exit:                             ; preds = %do.end.i, %entry.s5h1411_readreg.exit_crit_edge
  %16 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %b1.i, align 2
  %conv12.i = zext i8 %17 to i32
  %shl.i = shl nuw nsw i32 %conv12.i, 8
  %arrayidx13.i = getelementptr inbounds [2 x i8], ptr %b1.i, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %19 to i32
  %or.i = or i32 %shl.i, %conv14.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %20 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i, ptr %ucblocks, align 4
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !13, !15, !17, !19, !20, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !130, !131, !132, !134, !136, !137, !138, !140, !141, !142, !144}
!llvm.module.flags = !{!145, !146, !147, !148, !149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 886, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @s5h1411_attach._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @s5h1411_attach._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_s5h1411_attach, !7, !"__ksymtab_s5h1411_attach", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 903, i32 1}
!8 = !{ptr @__param_debug, !9, !"__param_debug", i1 false, i1 false}
!9 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 929, i32 1}
!10 = !{ptr @__UNIQUE_ID_debugtype290, !9, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_debug291, !12, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 930, i32 1}
!13 = !{ptr @__UNIQUE_ID_description292, !14, !"__UNIQUE_ID_description292", i1 false, i1 false}
!14 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 932, i32 1}
!15 = !{ptr @__UNIQUE_ID_author293, !16, !"__UNIQUE_ID_author293", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 933, i32 1}
!17 = !{ptr @__UNIQUE_ID_file294, !18, !"__UNIQUE_ID_file294", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 934, i32 1}
!19 = !{ptr @__UNIQUE_ID_license295, !18, !"__UNIQUE_ID_license295", i1 false, i1 false}
!20 = !{ptr @debug, !21, !"debug", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 37, i32 12}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 360, i32 3}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @s5h1411_readreg._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @s5h1411_readreg._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 613, i32 2}
!29 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @s5h1411_init._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @s5h1411_init._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 570, i32 2}
!34 = !{ptr @s5h1411_register_reset._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @s5h1411_register_reset._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @init_tab, !37, !"init_tab", i1 false, i1 false}
!37 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 49, i32 3}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 465, i32 2}
!40 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @s5h1411_set_serialmode._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @s5h1411_set_serialmode._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 450, i32 2}
!45 = !{ptr @s5h1411_set_spectralinversion._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @s5h1411_set_spectralinversion._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 380, i32 2}
!49 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @s5h1411_set_if_freq._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @s5h1411_set_if_freq._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 399, i32 3}
!54 = !{ptr @s5h1411_set_if_freq._entry.13, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @s5h1411_set_if_freq._entry_ptr.15, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 534, i32 2}
!58 = !{ptr @s5h1411_set_gpio._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @s5h1411_set_gpio._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 420, i32 2}
!62 = !{ptr @s5h1411_set_mpeg_timing._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @s5h1411_set_mpeg_timing._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 428, i32 3}
!66 = !{ptr @s5h1411_set_mpeg_timing._entry.18, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @s5h1411_set_mpeg_timing._entry_ptr.20, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 369, i32 2}
!70 = !{ptr @s5h1411_softreset._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @s5h1411_softreset._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 521, i32 2}
!74 = !{ptr @s5h1411_i2c_gate_ctrl._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @s5h1411_i2c_gate_ctrl._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.23, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 341, i32 3}
!78 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @s5h1411_writereg._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @s5h1411_writereg._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 549, i32 2}
!83 = !{ptr @s5h1411_set_powerstate._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @s5h1411_set_powerstate._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @s5h1411_ops, !86, !"s5h1411_ops", i1 false, i1 false}
!86 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 905, i32 38}
!87 = !{ptr @.str.26, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 581, i32 2}
!89 = !{ptr @.str.27, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @s5h1411_set_frontend._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @s5h1411_set_frontend._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.28, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 479, i32 2}
!94 = !{ptr @.str.29, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @s5h1411_enable_modulation._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @s5h1411_enable_modulation._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.31, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 482, i32 3}
!99 = !{ptr @s5h1411_enable_modulation._entry.30, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @s5h1411_enable_modulation._entry_ptr.32, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.34, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 489, i32 3}
!103 = !{ptr @s5h1411_enable_modulation._entry.33, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @s5h1411_enable_modulation._entry_ptr.35, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.37, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 498, i32 3}
!107 = !{ptr @s5h1411_enable_modulation._entry.36, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @s5h1411_enable_modulation._entry_ptr.38, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.40, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 506, i32 3}
!111 = !{ptr @s5h1411_enable_modulation._entry.39, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @s5h1411_enable_modulation._entry_ptr.41, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.42, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 707, i32 2}
!115 = !{ptr @.str.43, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @s5h1411_read_status._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @s5h1411_read_status._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.44, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 762, i32 2}
!120 = !{ptr @s5h1411_read_snr._entry, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @s5h1411_read_snr._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.45, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 730, i32 2}
!124 = !{ptr @s5h1411_qam64_lookup_snr._entry, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @s5h1411_qam64_lookup_snr._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @qam64_snr_tab, !127, !"qam64_snr_tab", i1 false, i1 false}
!127 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 181, i32 3}
!128 = !{ptr @.str.46, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 715, i32 2}
!130 = !{ptr @s5h1411_qam256_lookup_snr._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @s5h1411_qam256_lookup_snr._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @qam256_snr_tab, !133, !"qam256_snr_tab", i1 false, i1 false}
!133 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 254, i32 3}
!134 = !{ptr @.str.47, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 745, i32 2}
!136 = !{ptr @s5h1411_vsb_lookup_snr._entry, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @s5h1411_vsb_lookup_snr._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.49, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 754, i32 2}
!140 = !{ptr @s5h1411_vsb_lookup_snr._entry.48, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @s5h1411_vsb_lookup_snr._entry_ptr.50, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @vsb_snr_tab, !143, !"vsb_snr_tab", i1 false, i1 false}
!143 = !{!"../drivers/media/dvb-frontends/s5h1411.c", i32 136, i32 3}
!144 = !{ptr @__param_str_debug, !9, !"__param_str_debug", i1 false, i1 false}
!145 = !{i32 1, !"wchar_size", i32 2}
!146 = !{i32 1, !"min_enum_size", i32 4}
!147 = !{i32 8, !"branch-target-enforcement", i32 0}
!148 = !{i32 8, !"sign-return-address", i32 0}
!149 = !{i32 8, !"sign-return-address-all", i32 0}
!150 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!151 = !{i32 7, !"uwtable", i32 1}
!152 = !{i32 7, !"frame-pointer", i32 2}
!153 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!154 = !{!"auto-init"}
