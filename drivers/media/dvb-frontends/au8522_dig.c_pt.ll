; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/au8522_dig.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/au8522_dig.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+au8522_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_au8522_attach\09\09\09\09"
module asm "\09.long\09__crc_au8522_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_au8522_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22au8522_attach\22\09\09\09\09\09"
module asm "__kstrtabns_au8522_attach:\09\09\09\09\09"
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
%struct.anon.100 = type { i16, i16 }
%struct.anon.101 = type { i16, i16 }
%struct.anon.102 = type { i16, i16 }
%struct.anon.103 = type { i16, i16 }
%struct.mse2snr_tab = type { i16, i16 }
%struct.au8522_state = type { ptr, ptr, i8, %struct.tuner_i2c_props, %struct.list_head, %struct.au8522_config, %struct.dvb_frontend, i32, i32, i32, i32, %struct.v4l2_subdev, i64, i32, i32, i32, i32, %struct.v4l2_ctrl_handler, [3 x %struct.media_pad] }
%struct.tuner_i2c_props = type { i8, ptr, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.au8522_config = type { i8, i8, ptr, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.83 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.83 = type { %struct.anon.84 }
%struct.anon.84 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.au8522_led_config = type { i16, i16, i16, i16, i16, i16, i16, ptr, i32 }

@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@au8522_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s state allocation failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"au8522_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/dvb-frontends/au8522_dig.c\00", [55 x i8] zeroinitializer }, align 32
@au8522_attach._entry_ptr = internal global ptr @au8522_attach._entry, section ".printk_index", align 4
@au8522_attach._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 847, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s using new instance\0A\00", [41 x i8] zeroinitializer }, align 32
@au8522_attach._entry_ptr.5 = internal global ptr @au8522_attach._entry.3, section ".printk_index", align 4
@au8522_attach._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 851, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s using existing instance\0A\00", [36 x i8] zeroinitializer }, align 32
@au8522_attach._entry_ptr.8 = internal global ptr @au8522_attach._entry.6, section ".printk_index", align 4
@au8522_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Auvitek AU8522 QAM/8VSB Frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 54000000, i32 858000000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 2138112 }, [8 x i8] c"\0B\02\00\00\00\00\00\00", ptr null, ptr @au8522_release, ptr null, ptr @au8522_init, ptr @au8522_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @au8522_set_frontend, ptr @au8522_get_tune_settings, ptr @au8522_get_frontend, ptr @au8522_read_status, ptr @au8522_read_ber, ptr @au8522_read_signal_strength, ptr @au8522_read_snr, ptr @au8522_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @au8522_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@au8522_attach._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 869, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Failed to initialize correctly\0A\00", [58 x i8] zeroinitializer }, align 32
@au8522_attach._entry_ptr.11 = internal global ptr @au8522_attach._entry.9, section ".printk_index", align 4
@__kstrtab_au8522_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_au8522_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_au8522_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @au8522_attach to i32), ptr @__kstrtab_au8522_attach, ptr @__kstrtabns_au8522_attach }, section "___ksymtab+au8522_attach", align 4
@__param_str_debug = internal constant [17 x i8] c"au8522_dig.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype292 = internal constant [30 x i8] c"au8522_dig.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug293 = internal constant [52 x i8] c"au8522_dig.parm=debug:Enable verbose debug messages\00", section ".modinfo", align 1
@__param_str_zv_mode = internal constant [19 x i8] c"au8522_dig.zv_mode\00", align 1
@zv_mode = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_zv_mode = internal constant %struct.kernel_param { ptr @__param_str_zv_mode, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @zv_mode } }, section "__param", align 4
@__UNIQUE_ID_zv_modetype294 = internal constant [32 x i8] c"au8522_dig.parmtype=zv_mode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_zv_mode295 = internal constant [197 x i8] c"au8522_dig.parm=zv_mode:Turn on/off ZeeVee modulator compatibility mode (default:on).\0A\09\09on - modified AU8522 QAM256 initialization.\0A\09\09Provides faster lock when using ZeeVee modulator based sources\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [68 x i8] c"au8522_dig.description=Auvitek AU8522 QAM-B/ATSC Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [30 x i8] c"au8522_dig.author=Steven Toth\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [55 x i8] c"au8522_dig.file=drivers/media/dvb-frontends/au8522_dig\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [23 x i8] c"au8522_dig.license=GPL\00", section ".modinfo", align 1
@au8522_set_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s(frequency=%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"au8522_set_frontend\00", [44 x i8] zeroinitializer }, align 32
@au8522_set_frontend._entry_ptr = internal global ptr @au8522_set_frontend._entry, section ".printk_index", align 4
@au8522_set_frontend._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s() increase tuner settling time for zv_mode\0A\00", [49 x i8] zeroinitializer }, align 32
@au8522_set_frontend._entry_ptr.16 = internal global ptr @au8522_set_frontend._entry.14, section ".printk_index", align 4
@au8522_enable_modulation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s(0x%08x)\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"au8522_enable_modulation\00", [39 x i8] zeroinitializer }, align 32
@au8522_enable_modulation._entry_ptr = internal global ptr @au8522_enable_modulation._entry, section ".printk_index", align 4
@au8522_enable_modulation._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s() VSB_8\0A\00", [20 x i8] zeroinitializer }, align 32
@au8522_enable_modulation._entry_ptr.21 = internal global ptr @au8522_enable_modulation._entry.19, section ".printk_index", align 4
@VSB_mod_tab = internal constant { [26 x %struct.anon.100], [56 x i8] } { [26 x %struct.anon.100] [%struct.anon.100 { i16 144, i16 132 }, %struct.anon.100 { i16 8197, i16 0 }, %struct.anon.100 { i16 145, i16 128 }, %struct.anon.100 { i16 163, i16 12 }, %struct.anon.100 { i16 164, i16 232 }, %struct.anon.100 { i16 129, i16 196 }, %struct.anon.100 { i16 165, i16 64 }, %struct.anon.100 { i16 167, i16 64 }, %struct.anon.100 { i16 166, i16 103 }, %struct.anon.100 { i16 610, i16 32 }, %struct.anon.100 { i16 540, i16 48 }, %struct.anon.100 { i16 216, i16 26 }, %struct.anon.100 { i16 551, i16 160 }, %struct.anon.100 { i16 289, i16 255 }, %struct.anon.100 { i16 168, i16 240 }, %struct.anon.100 { i16 169, i16 5 }, %struct.anon.100 { i16 170, i16 119 }, %struct.anon.100 { i16 171, i16 240 }, %struct.anon.100 { i16 172, i16 5 }, %struct.anon.100 { i16 173, i16 119 }, %struct.anon.100 { i16 174, i16 65 }, %struct.anon.100 { i16 175, i16 102 }, %struct.anon.100 { i16 539, i16 204 }, %struct.anon.100 { i16 541, i16 128 }, %struct.anon.100 { i16 164, i16 232 }, %struct.anon.100 { i16 561, i16 19 }], [56 x i8] zeroinitializer }, align 32
@au8522_enable_modulation._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.2, i32 559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s() QAM 64\0A\00", [19 x i8] zeroinitializer }, align 32
@au8522_enable_modulation._entry_ptr.24 = internal global ptr @au8522_enable_modulation._entry.22, section ".printk_index", align 4
@QAM64_mod_tab = internal constant { [72 x %struct.anon.101], [64 x i8] } { [72 x %struct.anon.101] [%struct.anon.101 { i16 163, i16 9 }, %struct.anon.101 { i16 164, i16 0 }, %struct.anon.101 { i16 129, i16 196 }, %struct.anon.101 { i16 165, i16 64 }, %struct.anon.101 { i16 170, i16 119 }, %struct.anon.101 { i16 173, i16 119 }, %struct.anon.101 { i16 166, i16 103 }, %struct.anon.101 { i16 610, i16 32 }, %struct.anon.101 { i16 540, i16 48 }, %struct.anon.101 { i16 184, i16 62 }, %struct.anon.101 { i16 185, i16 240 }, %struct.anon.101 { i16 186, i16 1 }, %struct.anon.101 { i16 187, i16 24 }, %struct.anon.101 { i16 188, i16 80 }, %struct.anon.101 { i16 189, i16 0 }, %struct.anon.101 { i16 190, i16 234 }, %struct.anon.101 { i16 191, i16 239 }, %struct.anon.101 { i16 192, i16 252 }, %struct.anon.101 { i16 193, i16 189 }, %struct.anon.101 { i16 194, i16 31 }, %struct.anon.101 { i16 195, i16 252 }, %struct.anon.101 { i16 196, i16 221 }, %struct.anon.101 { i16 197, i16 175 }, %struct.anon.101 { i16 198, i16 0 }, %struct.anon.101 { i16 199, i16 56 }, %struct.anon.101 { i16 200, i16 48 }, %struct.anon.101 { i16 201, i16 5 }, %struct.anon.101 { i16 202, i16 74 }, %struct.anon.101 { i16 203, i16 208 }, %struct.anon.101 { i16 204, i16 1 }, %struct.anon.101 { i16 205, i16 217 }, %struct.anon.101 { i16 206, i16 111 }, %struct.anon.101 { i16 207, i16 249 }, %struct.anon.101 { i16 208, i16 112 }, %struct.anon.101 { i16 209, i16 223 }, %struct.anon.101 { i16 210, i16 247 }, %struct.anon.101 { i16 211, i16 194 }, %struct.anon.101 { i16 212, i16 223 }, %struct.anon.101 { i16 213, i16 2 }, %struct.anon.101 { i16 214, i16 154 }, %struct.anon.101 { i16 215, i16 208 }, %struct.anon.101 { i16 592, i16 13 }, %struct.anon.101 { i16 593, i16 205 }, %struct.anon.101 { i16 594, i16 224 }, %struct.anon.101 { i16 595, i16 5 }, %struct.anon.101 { i16 596, i16 167 }, %struct.anon.101 { i16 597, i16 255 }, %struct.anon.101 { i16 598, i16 237 }, %struct.anon.101 { i16 599, i16 91 }, %struct.anon.101 { i16 600, i16 174 }, %struct.anon.101 { i16 601, i16 230 }, %struct.anon.101 { i16 602, i16 61 }, %struct.anon.101 { i16 603, i16 15 }, %struct.anon.101 { i16 604, i16 13 }, %struct.anon.101 { i16 605, i16 234 }, %struct.anon.101 { i16 606, i16 242 }, %struct.anon.101 { i16 607, i16 81 }, %struct.anon.101 { i16 608, i16 245 }, %struct.anon.101 { i16 609, i16 6 }, %struct.anon.101 { i16 538, i16 0 }, %struct.anon.101 { i16 1350, i16 64 }, %struct.anon.101 { i16 528, i16 199 }, %struct.anon.101 { i16 529, i16 170 }, %struct.anon.101 { i16 530, i16 171 }, %struct.anon.101 { i16 531, i16 2 }, %struct.anon.101 { i16 1282, i16 0 }, %struct.anon.101 { i16 289, i16 4 }, %struct.anon.101 { i16 290, i16 4 }, %struct.anon.101 { i16 1326, i16 16 }, %struct.anon.101 { i16 164, i16 202 }, %struct.anon.101 { i16 167, i16 64 }, %struct.anon.101 { i16 1318, i16 1 }], [64 x i8] zeroinitializer }, align 32
@au8522_enable_modulation._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.2, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s() QAM 256 (zv_mode)\0A\00", [40 x i8] zeroinitializer }, align 32
@au8522_enable_modulation._entry_ptr.27 = internal global ptr @au8522_enable_modulation._entry.25, section ".printk_index", align 4
@QAM256_mod_tab_zv_mode = internal constant { [75 x %struct.anon.102], [84 x i8] } { [75 x %struct.anon.102] [%struct.anon.102 { i16 -32605, i16 9 }, %struct.anon.102 { i16 -32604, i16 0 }, %struct.anon.102 { i16 -32639, i16 196 }, %struct.anon.102 { i16 -32603, i16 64 }, %struct.anon.102 { i16 -32587, i16 251 }, %struct.anon.102 { i16 -32586, i16 142 }, %struct.anon.102 { i16 -32585, i16 57 }, %struct.anon.102 { i16 -32598, i16 119 }, %struct.anon.102 { i16 -32595, i16 119 }, %struct.anon.102 { i16 -32602, i16 103 }, %struct.anon.102 { i16 -32158, i16 32 }, %struct.anon.102 { i16 -32228, i16 48 }, %struct.anon.102 { i16 -32584, i16 62 }, %struct.anon.102 { i16 -32583, i16 240 }, %struct.anon.102 { i16 -32582, i16 1 }, %struct.anon.102 { i16 -32581, i16 24 }, %struct.anon.102 { i16 -32580, i16 80 }, %struct.anon.102 { i16 -32579, i16 0 }, %struct.anon.102 { i16 -32578, i16 234 }, %struct.anon.102 { i16 -32577, i16 239 }, %struct.anon.102 { i16 -32576, i16 252 }, %struct.anon.102 { i16 -32575, i16 189 }, %struct.anon.102 { i16 -32574, i16 31 }, %struct.anon.102 { i16 -32573, i16 252 }, %struct.anon.102 { i16 -32572, i16 221 }, %struct.anon.102 { i16 -32571, i16 175 }, %struct.anon.102 { i16 -32570, i16 0 }, %struct.anon.102 { i16 -32569, i16 56 }, %struct.anon.102 { i16 -32568, i16 48 }, %struct.anon.102 { i16 -32567, i16 5 }, %struct.anon.102 { i16 -32566, i16 74 }, %struct.anon.102 { i16 -32565, i16 208 }, %struct.anon.102 { i16 -32564, i16 1 }, %struct.anon.102 { i16 -32563, i16 217 }, %struct.anon.102 { i16 -32562, i16 111 }, %struct.anon.102 { i16 -32561, i16 249 }, %struct.anon.102 { i16 -32560, i16 112 }, %struct.anon.102 { i16 -32559, i16 223 }, %struct.anon.102 { i16 -32558, i16 247 }, %struct.anon.102 { i16 -32557, i16 194 }, %struct.anon.102 { i16 -32556, i16 223 }, %struct.anon.102 { i16 -32555, i16 2 }, %struct.anon.102 { i16 -32554, i16 154 }, %struct.anon.102 { i16 -32553, i16 208 }, %struct.anon.102 { i16 -32176, i16 13 }, %struct.anon.102 { i16 -32175, i16 205 }, %struct.anon.102 { i16 -32174, i16 224 }, %struct.anon.102 { i16 -32173, i16 5 }, %struct.anon.102 { i16 -32172, i16 167 }, %struct.anon.102 { i16 -32171, i16 255 }, %struct.anon.102 { i16 -32170, i16 237 }, %struct.anon.102 { i16 -32169, i16 91 }, %struct.anon.102 { i16 -32168, i16 174 }, %struct.anon.102 { i16 -32167, i16 230 }, %struct.anon.102 { i16 -32166, i16 61 }, %struct.anon.102 { i16 -32165, i16 15 }, %struct.anon.102 { i16 -32164, i16 13 }, %struct.anon.102 { i16 -32163, i16 234 }, %struct.anon.102 { i16 -32162, i16 242 }, %struct.anon.102 { i16 -32161, i16 81 }, %struct.anon.102 { i16 -32160, i16 245 }, %struct.anon.102 { i16 -32159, i16 6 }, %struct.anon.102 { i16 -32230, i16 1 }, %struct.anon.102 { i16 -31418, i16 64 }, %struct.anon.102 { i16 -32240, i16 38 }, %struct.anon.102 { i16 -32239, i16 246 }, %struct.anon.102 { i16 -32238, i16 132 }, %struct.anon.102 { i16 -32237, i16 2 }, %struct.anon.102 { i16 -31486, i16 1 }, %struct.anon.102 { i16 -32479, i16 4 }, %struct.anon.102 { i16 -32478, i16 4 }, %struct.anon.102 { i16 -31442, i16 16 }, %struct.anon.102 { i16 -32604, i16 202 }, %struct.anon.102 { i16 -32601, i16 64 }, %struct.anon.102 { i16 -31450, i16 1 }], [84 x i8] zeroinitializer }, align 32
@au8522_enable_modulation._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.18, ptr @.str.2, i32 577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s() QAM 256\0A\00", [18 x i8] zeroinitializer }, align 32
@au8522_enable_modulation._entry_ptr.30 = internal global ptr @au8522_enable_modulation._entry.28, section ".printk_index", align 4
@QAM256_mod_tab = internal constant { [72 x %struct.anon.103], [64 x i8] } { [72 x %struct.anon.103] [%struct.anon.103 { i16 163, i16 9 }, %struct.anon.103 { i16 164, i16 0 }, %struct.anon.103 { i16 129, i16 196 }, %struct.anon.103 { i16 165, i16 64 }, %struct.anon.103 { i16 170, i16 119 }, %struct.anon.103 { i16 173, i16 119 }, %struct.anon.103 { i16 166, i16 103 }, %struct.anon.103 { i16 610, i16 32 }, %struct.anon.103 { i16 540, i16 48 }, %struct.anon.103 { i16 184, i16 62 }, %struct.anon.103 { i16 185, i16 240 }, %struct.anon.103 { i16 186, i16 1 }, %struct.anon.103 { i16 187, i16 24 }, %struct.anon.103 { i16 188, i16 80 }, %struct.anon.103 { i16 189, i16 0 }, %struct.anon.103 { i16 190, i16 234 }, %struct.anon.103 { i16 191, i16 239 }, %struct.anon.103 { i16 192, i16 252 }, %struct.anon.103 { i16 193, i16 189 }, %struct.anon.103 { i16 194, i16 31 }, %struct.anon.103 { i16 195, i16 252 }, %struct.anon.103 { i16 196, i16 221 }, %struct.anon.103 { i16 197, i16 175 }, %struct.anon.103 { i16 198, i16 0 }, %struct.anon.103 { i16 199, i16 56 }, %struct.anon.103 { i16 200, i16 48 }, %struct.anon.103 { i16 201, i16 5 }, %struct.anon.103 { i16 202, i16 74 }, %struct.anon.103 { i16 203, i16 208 }, %struct.anon.103 { i16 204, i16 1 }, %struct.anon.103 { i16 205, i16 217 }, %struct.anon.103 { i16 206, i16 111 }, %struct.anon.103 { i16 207, i16 249 }, %struct.anon.103 { i16 208, i16 112 }, %struct.anon.103 { i16 209, i16 223 }, %struct.anon.103 { i16 210, i16 247 }, %struct.anon.103 { i16 211, i16 194 }, %struct.anon.103 { i16 212, i16 223 }, %struct.anon.103 { i16 213, i16 2 }, %struct.anon.103 { i16 214, i16 154 }, %struct.anon.103 { i16 215, i16 208 }, %struct.anon.103 { i16 592, i16 13 }, %struct.anon.103 { i16 593, i16 205 }, %struct.anon.103 { i16 594, i16 224 }, %struct.anon.103 { i16 595, i16 5 }, %struct.anon.103 { i16 596, i16 167 }, %struct.anon.103 { i16 597, i16 255 }, %struct.anon.103 { i16 598, i16 237 }, %struct.anon.103 { i16 599, i16 91 }, %struct.anon.103 { i16 600, i16 174 }, %struct.anon.103 { i16 601, i16 230 }, %struct.anon.103 { i16 602, i16 61 }, %struct.anon.103 { i16 603, i16 15 }, %struct.anon.103 { i16 604, i16 13 }, %struct.anon.103 { i16 605, i16 234 }, %struct.anon.103 { i16 606, i16 242 }, %struct.anon.103 { i16 607, i16 81 }, %struct.anon.103 { i16 608, i16 245 }, %struct.anon.103 { i16 609, i16 6 }, %struct.anon.103 { i16 538, i16 0 }, %struct.anon.103 { i16 1350, i16 64 }, %struct.anon.103 { i16 528, i16 38 }, %struct.anon.103 { i16 529, i16 246 }, %struct.anon.103 { i16 530, i16 132 }, %struct.anon.103 { i16 531, i16 2 }, %struct.anon.103 { i16 1282, i16 1 }, %struct.anon.103 { i16 289, i16 4 }, %struct.anon.103 { i16 290, i16 4 }, %struct.anon.103 { i16 1326, i16 16 }, %struct.anon.103 { i16 164, i16 202 }, %struct.anon.103 { i16 167, i16 64 }, %struct.anon.103 { i16 1318, i16 1 }], [64 x i8] zeroinitializer }, align 32
@au8522_enable_modulation._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.18, ptr @.str.2, i32 586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s() Invalid modulation\0A\00", [39 x i8] zeroinitializer }, align 32
@au8522_enable_modulation._entry_ptr.33 = internal global ptr @au8522_enable_modulation._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"3.25\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"4.00\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"6.00\00", [27 x i8] zeroinitializer }, align 32
@au8522_set_if._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s() IF Frequency not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"au8522_set_if\00", [18 x i8] zeroinitializer }, align 32
@au8522_set_if._entry_ptr = internal global ptr @au8522_set_if._entry, section ".printk_index", align 4
@au8522_set_if._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s() %s MHz\0A\00", [19 x i8] zeroinitializer }, align 32
@au8522_set_if._entry_ptr.41 = internal global ptr @au8522_set_if._entry.39, section ".printk_index", align 4
@au8522_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s() Checking VSB_8\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"au8522_read_status\00", [45 x i8] zeroinitializer }, align 32
@au8522_read_status._entry_ptr = internal global ptr @au8522_read_status._entry, section ".printk_index", align 4
@au8522_read_status._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s() Checking QAM\0A\00", [45 x i8] zeroinitializer }, align 32
@au8522_read_status._entry_ptr.46 = internal global ptr @au8522_read_status._entry.44, section ".printk_index", align 4
@au8522_read_status._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.2, i32 658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s() DEMODLOCKING\0A\00", [45 x i8] zeroinitializer }, align 32
@au8522_read_status._entry_ptr.49 = internal global ptr @au8522_read_status._entry.47, section ".printk_index", align 4
@au8522_read_status._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.43, ptr @.str.2, i32 664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s() TUNERLOCKING\0A\00", [45 x i8] zeroinitializer }, align 32
@au8522_read_status._entry_ptr.52 = internal global ptr @au8522_read_status._entry.50, section ".printk_index", align 4
@au8522_read_status._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.43, ptr @.str.2, i32 687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s() status 0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@au8522_read_status._entry_ptr.55 = internal global ptr @au8522_read_status._entry.53, section ".printk_index", align 4
@au8522_read_snr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"au8522_read_snr\00", [16 x i8] zeroinitializer }, align 32
@au8522_read_snr._entry_ptr = internal global ptr @au8522_read_snr._entry, section ".printk_index", align 4
@qam256_mse2snr_tab = internal constant { [64 x %struct.mse2snr_tab], [64 x i8] } { [64 x %struct.mse2snr_tab] [%struct.mse2snr_tab { i16 15, i16 0 }, %struct.mse2snr_tab { i16 16, i16 400 }, %struct.mse2snr_tab { i16 17, i16 398 }, %struct.mse2snr_tab { i16 18, i16 396 }, %struct.mse2snr_tab { i16 19, i16 394 }, %struct.mse2snr_tab { i16 20, i16 392 }, %struct.mse2snr_tab { i16 21, i16 390 }, %struct.mse2snr_tab { i16 22, i16 388 }, %struct.mse2snr_tab { i16 23, i16 386 }, %struct.mse2snr_tab { i16 24, i16 384 }, %struct.mse2snr_tab { i16 25, i16 382 }, %struct.mse2snr_tab { i16 26, i16 380 }, %struct.mse2snr_tab { i16 27, i16 379 }, %struct.mse2snr_tab { i16 28, i16 378 }, %struct.mse2snr_tab { i16 29, i16 377 }, %struct.mse2snr_tab { i16 30, i16 376 }, %struct.mse2snr_tab { i16 31, i16 375 }, %struct.mse2snr_tab { i16 32, i16 374 }, %struct.mse2snr_tab { i16 33, i16 373 }, %struct.mse2snr_tab { i16 34, i16 372 }, %struct.mse2snr_tab { i16 35, i16 371 }, %struct.mse2snr_tab { i16 36, i16 370 }, %struct.mse2snr_tab { i16 37, i16 362 }, %struct.mse2snr_tab { i16 38, i16 354 }, %struct.mse2snr_tab { i16 39, i16 346 }, %struct.mse2snr_tab { i16 40, i16 338 }, %struct.mse2snr_tab { i16 41, i16 330 }, %struct.mse2snr_tab { i16 42, i16 328 }, %struct.mse2snr_tab { i16 43, i16 326 }, %struct.mse2snr_tab { i16 44, i16 324 }, %struct.mse2snr_tab { i16 45, i16 322 }, %struct.mse2snr_tab { i16 46, i16 320 }, %struct.mse2snr_tab { i16 47, i16 319 }, %struct.mse2snr_tab { i16 48, i16 318 }, %struct.mse2snr_tab { i16 49, i16 317 }, %struct.mse2snr_tab { i16 50, i16 316 }, %struct.mse2snr_tab { i16 51, i16 315 }, %struct.mse2snr_tab { i16 52, i16 314 }, %struct.mse2snr_tab { i16 53, i16 313 }, %struct.mse2snr_tab { i16 54, i16 312 }, %struct.mse2snr_tab { i16 55, i16 311 }, %struct.mse2snr_tab { i16 56, i16 310 }, %struct.mse2snr_tab { i16 57, i16 308 }, %struct.mse2snr_tab { i16 58, i16 306 }, %struct.mse2snr_tab { i16 59, i16 304 }, %struct.mse2snr_tab { i16 60, i16 302 }, %struct.mse2snr_tab { i16 61, i16 300 }, %struct.mse2snr_tab { i16 62, i16 298 }, %struct.mse2snr_tab { i16 65, i16 295 }, %struct.mse2snr_tab { i16 68, i16 294 }, %struct.mse2snr_tab { i16 70, i16 293 }, %struct.mse2snr_tab { i16 73, i16 292 }, %struct.mse2snr_tab { i16 76, i16 291 }, %struct.mse2snr_tab { i16 78, i16 290 }, %struct.mse2snr_tab { i16 79, i16 289 }, %struct.mse2snr_tab { i16 81, i16 288 }, %struct.mse2snr_tab { i16 82, i16 287 }, %struct.mse2snr_tab { i16 83, i16 286 }, %struct.mse2snr_tab { i16 84, i16 285 }, %struct.mse2snr_tab { i16 85, i16 284 }, %struct.mse2snr_tab { i16 86, i16 283 }, %struct.mse2snr_tab { i16 88, i16 282 }, %struct.mse2snr_tab { i16 89, i16 281 }, %struct.mse2snr_tab { i16 256, i16 280 }], [64 x i8] zeroinitializer }, align 32
@qam64_mse2snr_tab = internal constant { [77 x %struct.mse2snr_tab], [76 x i8] } { [77 x %struct.mse2snr_tab] [%struct.mse2snr_tab { i16 15, i16 0 }, %struct.mse2snr_tab { i16 16, i16 290 }, %struct.mse2snr_tab { i16 17, i16 288 }, %struct.mse2snr_tab { i16 18, i16 286 }, %struct.mse2snr_tab { i16 19, i16 284 }, %struct.mse2snr_tab { i16 20, i16 282 }, %struct.mse2snr_tab { i16 21, i16 281 }, %struct.mse2snr_tab { i16 22, i16 279 }, %struct.mse2snr_tab { i16 23, i16 277 }, %struct.mse2snr_tab { i16 24, i16 275 }, %struct.mse2snr_tab { i16 25, i16 273 }, %struct.mse2snr_tab { i16 26, i16 271 }, %struct.mse2snr_tab { i16 27, i16 269 }, %struct.mse2snr_tab { i16 28, i16 268 }, %struct.mse2snr_tab { i16 29, i16 266 }, %struct.mse2snr_tab { i16 30, i16 264 }, %struct.mse2snr_tab { i16 31, i16 262 }, %struct.mse2snr_tab { i16 32, i16 260 }, %struct.mse2snr_tab { i16 33, i16 259 }, %struct.mse2snr_tab { i16 34, i16 258 }, %struct.mse2snr_tab { i16 35, i16 256 }, %struct.mse2snr_tab { i16 36, i16 255 }, %struct.mse2snr_tab { i16 37, i16 254 }, %struct.mse2snr_tab { i16 38, i16 252 }, %struct.mse2snr_tab { i16 39, i16 251 }, %struct.mse2snr_tab { i16 40, i16 250 }, %struct.mse2snr_tab { i16 41, i16 249 }, %struct.mse2snr_tab { i16 42, i16 248 }, %struct.mse2snr_tab { i16 43, i16 246 }, %struct.mse2snr_tab { i16 44, i16 245 }, %struct.mse2snr_tab { i16 45, i16 244 }, %struct.mse2snr_tab { i16 46, i16 242 }, %struct.mse2snr_tab { i16 47, i16 241 }, %struct.mse2snr_tab { i16 48, i16 240 }, %struct.mse2snr_tab { i16 50, i16 239 }, %struct.mse2snr_tab { i16 51, i16 238 }, %struct.mse2snr_tab { i16 53, i16 237 }, %struct.mse2snr_tab { i16 54, i16 236 }, %struct.mse2snr_tab { i16 56, i16 235 }, %struct.mse2snr_tab { i16 57, i16 234 }, %struct.mse2snr_tab { i16 59, i16 233 }, %struct.mse2snr_tab { i16 60, i16 232 }, %struct.mse2snr_tab { i16 62, i16 231 }, %struct.mse2snr_tab { i16 63, i16 230 }, %struct.mse2snr_tab { i16 65, i16 229 }, %struct.mse2snr_tab { i16 67, i16 228 }, %struct.mse2snr_tab { i16 68, i16 227 }, %struct.mse2snr_tab { i16 70, i16 226 }, %struct.mse2snr_tab { i16 71, i16 225 }, %struct.mse2snr_tab { i16 73, i16 224 }, %struct.mse2snr_tab { i16 74, i16 223 }, %struct.mse2snr_tab { i16 76, i16 222 }, %struct.mse2snr_tab { i16 78, i16 221 }, %struct.mse2snr_tab { i16 80, i16 220 }, %struct.mse2snr_tab { i16 82, i16 219 }, %struct.mse2snr_tab { i16 85, i16 218 }, %struct.mse2snr_tab { i16 88, i16 217 }, %struct.mse2snr_tab { i16 90, i16 216 }, %struct.mse2snr_tab { i16 92, i16 215 }, %struct.mse2snr_tab { i16 93, i16 214 }, %struct.mse2snr_tab { i16 94, i16 212 }, %struct.mse2snr_tab { i16 95, i16 211 }, %struct.mse2snr_tab { i16 97, i16 210 }, %struct.mse2snr_tab { i16 99, i16 209 }, %struct.mse2snr_tab { i16 101, i16 208 }, %struct.mse2snr_tab { i16 102, i16 207 }, %struct.mse2snr_tab { i16 104, i16 206 }, %struct.mse2snr_tab { i16 107, i16 205 }, %struct.mse2snr_tab { i16 111, i16 204 }, %struct.mse2snr_tab { i16 114, i16 203 }, %struct.mse2snr_tab { i16 118, i16 202 }, %struct.mse2snr_tab { i16 122, i16 201 }, %struct.mse2snr_tab { i16 125, i16 200 }, %struct.mse2snr_tab { i16 128, i16 199 }, %struct.mse2snr_tab { i16 130, i16 198 }, %struct.mse2snr_tab { i16 132, i16 197 }, %struct.mse2snr_tab { i16 256, i16 190 }], [76 x i8] zeroinitializer }, align 32
@vsb_mse2snr_tab = internal constant { [30 x %struct.mse2snr_tab], [40 x i8] } { [30 x %struct.mse2snr_tab] [%struct.mse2snr_tab { i16 0, i16 270 }, %struct.mse2snr_tab { i16 2, i16 250 }, %struct.mse2snr_tab { i16 3, i16 240 }, %struct.mse2snr_tab { i16 5, i16 230 }, %struct.mse2snr_tab { i16 7, i16 220 }, %struct.mse2snr_tab { i16 9, i16 210 }, %struct.mse2snr_tab { i16 12, i16 200 }, %struct.mse2snr_tab { i16 13, i16 195 }, %struct.mse2snr_tab { i16 15, i16 190 }, %struct.mse2snr_tab { i16 17, i16 185 }, %struct.mse2snr_tab { i16 19, i16 180 }, %struct.mse2snr_tab { i16 21, i16 175 }, %struct.mse2snr_tab { i16 24, i16 170 }, %struct.mse2snr_tab { i16 27, i16 165 }, %struct.mse2snr_tab { i16 31, i16 160 }, %struct.mse2snr_tab { i16 32, i16 158 }, %struct.mse2snr_tab { i16 33, i16 156 }, %struct.mse2snr_tab { i16 36, i16 152 }, %struct.mse2snr_tab { i16 37, i16 150 }, %struct.mse2snr_tab { i16 39, i16 148 }, %struct.mse2snr_tab { i16 40, i16 146 }, %struct.mse2snr_tab { i16 41, i16 144 }, %struct.mse2snr_tab { i16 43, i16 142 }, %struct.mse2snr_tab { i16 44, i16 140 }, %struct.mse2snr_tab { i16 48, i16 135 }, %struct.mse2snr_tab { i16 50, i16 130 }, %struct.mse2snr_tab { i16 43, i16 142 }, %struct.mse2snr_tab { i16 53, i16 125 }, %struct.mse2snr_tab { i16 56, i16 120 }, %struct.mse2snr_tab { i16 256, i16 115 }], [40 x i8] zeroinitializer }, align 32
@au8522_mse2snr_lookup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.58, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"au8522_mse2snr_lookup\00", [42 x i8] zeroinitializer }, align 32
@au8522_mse2snr_lookup._entry_ptr = internal global ptr @au8522_mse2snr_lookup._entry, section ".printk_index", align 4
@au8522_mse2snr_lookup._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s() snr=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@au8522_mse2snr_lookup._entry_ptr.61 = internal global ptr @au8522_mse2snr_lookup._entry.59, section ".printk_index", align 4
@switch.table.au8522_set_if = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.36, ptr @.str.35, ptr @.str.34], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 19, i32 12 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 843, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 847, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 851, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [11 x i8] c"au8522_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 884, i32 38 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 868, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [8 x i8] c"zv_mode\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 20, i32 12 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 602, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 621, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 547, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 551, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [12 x i8] c"VSB_mod_tab\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 273, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 559, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [14 x i8] c"QAM64_mod_tab\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 306, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 568, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant [23 x i8] c"QAM256_mod_tab_zv_mode\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 463, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 577, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant [15 x i8] c"QAM256_mod_tab\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 385, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 586, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 240, i32 11 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 246, i32 11 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 252, i32 11 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 258, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 261, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 643, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 648, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 658, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 664, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 687, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 730, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant [19 x i8] c"qam256_mse2snr_tab\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 148, i32 27 }
@___asan_gen_.240 = private unnamed_addr constant [18 x i8] c"qam64_mse2snr_tab\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 67, i32 27 }
@___asan_gen_.243 = private unnamed_addr constant [16 x i8] c"vsb_mse2snr_tab\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 33, i32 27 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 219, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.255 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.256 = private constant [44 x i8] c"../drivers/media/dvb-frontends/au8522_dig.c\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 228, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant [27 x i8] c"switch.table.au8522_set_if\00", align 1
@llvm.compiler.used = appending global [98 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_debug293, ptr @__UNIQUE_ID_debugtype292, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__UNIQUE_ID_zv_mode295, ptr @__UNIQUE_ID_zv_modetype294, ptr @__ksymtab_au8522_attach, ptr @__param_debug, ptr @__param_zv_mode, ptr @au8522_attach._entry, ptr @au8522_attach._entry.3, ptr @au8522_attach._entry.6, ptr @au8522_attach._entry.9, ptr @au8522_attach._entry_ptr, ptr @au8522_attach._entry_ptr.11, ptr @au8522_attach._entry_ptr.5, ptr @au8522_attach._entry_ptr.8, ptr @au8522_enable_modulation._entry, ptr @au8522_enable_modulation._entry.19, ptr @au8522_enable_modulation._entry.22, ptr @au8522_enable_modulation._entry.25, ptr @au8522_enable_modulation._entry.28, ptr @au8522_enable_modulation._entry.31, ptr @au8522_enable_modulation._entry_ptr, ptr @au8522_enable_modulation._entry_ptr.21, ptr @au8522_enable_modulation._entry_ptr.24, ptr @au8522_enable_modulation._entry_ptr.27, ptr @au8522_enable_modulation._entry_ptr.30, ptr @au8522_enable_modulation._entry_ptr.33, ptr @au8522_mse2snr_lookup._entry, ptr @au8522_mse2snr_lookup._entry.59, ptr @au8522_mse2snr_lookup._entry_ptr, ptr @au8522_mse2snr_lookup._entry_ptr.61, ptr @au8522_read_snr._entry, ptr @au8522_read_snr._entry_ptr, ptr @au8522_read_status._entry, ptr @au8522_read_status._entry.44, ptr @au8522_read_status._entry.47, ptr @au8522_read_status._entry.50, ptr @au8522_read_status._entry.53, ptr @au8522_read_status._entry_ptr, ptr @au8522_read_status._entry_ptr.46, ptr @au8522_read_status._entry_ptr.49, ptr @au8522_read_status._entry_ptr.52, ptr @au8522_read_status._entry_ptr.55, ptr @au8522_set_frontend._entry, ptr @au8522_set_frontend._entry.14, ptr @au8522_set_frontend._entry_ptr, ptr @au8522_set_frontend._entry_ptr.16, ptr @au8522_set_if._entry, ptr @au8522_set_if._entry.39, ptr @au8522_set_if._entry_ptr, ptr @au8522_set_if._entry_ptr.41, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @au8522_ops, ptr @.str.10, ptr @zv_mode, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @VSB_mod_tab, ptr @.str.23, ptr @QAM64_mod_tab, ptr @.str.26, ptr @QAM256_mod_tab_zv_mode, ptr @.str.29, ptr @QAM256_mod_tab, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @qam256_mse2snr_tab, ptr @qam64_mse2snr_tab, ptr @vsb_mse2snr_tab, ptr @.str.58, ptr @.str.60, ptr @switch.table.au8522_set_if], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_attach._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_attach._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_attach._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zv_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_set_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_set_frontend._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_enable_modulation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_enable_modulation._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VSB_mod_tab to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_enable_modulation._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @QAM64_mod_tab to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_enable_modulation._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @QAM256_mod_tab_zv_mode to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_enable_modulation._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @QAM256_mod_tab to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_enable_modulation._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_set_if._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_set_if._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_read_status._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_read_status._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_read_status._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_read_status._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_read_snr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qam256_mse2snr_tab to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qam64_mse2snr_tab to i32), i32 308, i32 384, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsb_mse2snr_tab to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_mse2snr_lookup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_mse2snr_lookup._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.au8522_set_if to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @au8522_attach(ptr nocapture noundef readonly %config, ptr noundef %i2c) #0 align 64 {
entry:
  %state = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #6
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %state, align 4
  %1 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %config, align 4
  %call = call i32 @au8522_get_state(ptr noundef nonnull %state, ptr noundef %i2c, i8 noundef zeroext %2) #6
  %3 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %do.body17 [
    i32 0, label %do.body
    i32 1, label %do.body6
  ]

do.body:                                          ; preds = %entry
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.body.sw.epilog_crit_edge, label %do.body.sw.epilog.sink.split_crit_edge

do.body.sw.epilog.sink.split_crit_edge:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body6:                                         ; preds = %entry
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
  br i1 %tobool7.not, label %do.body6.sw.epilog_crit_edge, label %do.body6.sw.epilog.sink.split_crit_edge

do.body6.sw.epilog.sink.split_crit_edge:          ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

do.body6.sw.epilog_crit_edge:                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body17:                                        ; preds = %entry
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool18.not = icmp eq i32 %6, 0
  br i1 %tobool18.not, label %do.body17.sw.epilog_crit_edge, label %do.body17.sw.epilog.sink.split_crit_edge

do.body17.sw.epilog.sink.split_crit_edge:         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

do.body17.sw.epilog_crit_edge:                    ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %do.body17.sw.epilog.sink.split_crit_edge, %do.body6.sw.epilog.sink.split_crit_edge, %do.body.sw.epilog.sink.split_crit_edge
  %.str.7.sink = phi ptr [ @.str, %do.body.sw.epilog.sink.split_crit_edge ], [ @.str.4, %do.body6.sw.epilog.sink.split_crit_edge ], [ @.str.7, %do.body17.sw.epilog.sink.split_crit_edge ]
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.7.sink, ptr noundef nonnull @.str.1) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.body17.sw.epilog_crit_edge, %do.body6.sw.epilog_crit_edge, %do.body.sw.epilog_crit_edge
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state, align 4
  %config28 = getelementptr inbounds %struct.au8522_state, ptr %8, i32 0, i32 5
  %9 = call ptr @memcpy(ptr %config28, ptr %config, i32 16)
  %i2c29 = getelementptr inbounds %struct.au8522_state, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %i2c29 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %i2c, ptr %i2c29, align 4
  %operational_mode = getelementptr inbounds %struct.au8522_state, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %operational_mode to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %operational_mode, align 8
  %ops = getelementptr inbounds %struct.au8522_state, ptr %8, i32 0, i32 6, i32 1
  %12 = call ptr @memcpy(ptr %ops, ptr @au8522_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.au8522_state, ptr %8, i32 0, i32 6, i32 3
  %13 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %8, ptr %demodulator_priv, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.au8522_state, ptr %8, i32 0, i32 6, i32 1, i32 33, i32 7
  %14 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @au8522_analog_i2c_gate_ctrl, ptr %i2c_gate_ctrl, align 4
  %frontend33 = getelementptr inbounds %struct.au8522_state, ptr %8, i32 0, i32 6
  %call34 = call i32 @au8522_init(ptr noundef %frontend33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp.not = icmp eq i32 %call34, 0
  br i1 %cmp.not, label %if.end41, label %do.end38

do.end38:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1) #9
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %state, align 4
  call void @au8522_release_state(ptr noundef %16) #6
  br label %cleanup

if.end41:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state, align 4
  %frontend42 = getelementptr inbounds %struct.au8522_state, ptr %18, i32 0, i32 6
  %call43 = call i32 @au8522_i2c_gate_ctrl(ptr noundef %frontend42, i32 noundef 1) #6
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %state, align 4
  %frontend44 = getelementptr inbounds %struct.au8522_state, ptr %20, i32 0, i32 6
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end38
  %retval.0 = phi ptr [ null, %do.end38 ], [ %frontend44, %if.end41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au8522_get_state(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au8522_analog_i2c_gate_ctrl(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au8522_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au8522_i2c_gate_ctrl(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @au8522_release_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @au8522_release(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  tail call void @au8522_release_state(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au8522_sleep(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @au8522_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dtv_property_cache, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %4) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %current_frequency = getelementptr inbounds %struct.au8522_state, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %current_frequency to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %current_frequency, align 4
  %7 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp = icmp eq i32 %6, %8
  br i1 %cmp, label %land.lhs.true, label %do.end3.if.end7_crit_edge

do.end3.if.end7_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

land.lhs.true:                                    ; preds = %do.end3
  %current_modulation = getelementptr inbounds %struct.au8522_state, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %current_modulation to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %current_modulation, align 8
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %11 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %modulation, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp5 = icmp eq i32 %10, %12
  br i1 %cmp5, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %do.end3.if.end7_crit_edge
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %13 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_params, align 4
  %tobool8.not = icmp eq ptr %14, null
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.then9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %15 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool11.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %if.then9.if.end16_crit_edge, label %if.then12

if.then9.if.end16_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = tail call i32 %16(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.then9.if.end16_crit_edge
  %17 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_params, align 4
  %call20 = tail call i32 %18(ptr noundef %fe) #6
  %19 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool23.not = icmp eq ptr %20, null
  br i1 %tobool23.not, label %if.end16.if.end29_crit_edge, label %if.then24

if.end16.if.end29_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then24:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = tail call i32 %20(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.end16.if.end29_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp30 = icmp slt i32 %call20, 0
  br i1 %cmp30, label %if.end29.cleanup_crit_edge, label %if.end32

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %if.end29
  %21 = load i32, ptr @zv_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool33.not = icmp eq i32 %21, 0
  br i1 %tobool33.not, label %if.end32.if.end46_crit_edge, label %do.body35

if.end32.if.end46_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

do.body35:                                        ; preds = %if.end32
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool36.not = icmp eq i32 %22, 0
  br i1 %tobool36.not, label %do.body35.if.end46_crit_edge, label %do.end40

do.body35.if.end46_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

do.end40:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13) #9
  br label %if.end46

if.end46:                                         ; preds = %do.end40, %do.body35.if.end46_crit_edge, %if.end32.if.end46_crit_edge
  %.sink = phi i32 [ 250, %do.end40 ], [ 250, %do.body35.if.end46_crit_edge ], [ 100, %if.end32.if.end46_crit_edge ]
  tail call void @msleep(i32 noundef %.sink) #6
  %modulation47 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %23 = ptrtoint ptr %modulation47 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %modulation47, align 4
  %25 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %demodulator_priv, align 4
  %27 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %if.end46.do.end3.i_crit_edge, label %do.end.i

if.end46.do.end3.i_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i

do.end.i:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %24) #9
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.end46.do.end3.i_crit_edge
  %28 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %24, label %do.body104.i [
    i32 7, label %do.body4.i
    i32 3, label %do.body19.i
    i32 5, label %sw.bb45.i
  ]

do.body4.i:                                       ; preds = %do.end3.i
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool5.not.i = icmp eq i32 %29, 0
  br i1 %tobool5.not.i, label %do.body4.i.for.body.i.preheader_crit_edge, label %do.end9.i

do.body4.i.for.body.i.preheader_crit_edge:        ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.preheader

do.end9.i:                                        ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #8
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18) #9
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %do.end9.i, %do.body4.i.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr [26 x %struct.anon.100], ptr @VSB_mod_tab, i32 0, i32 %i.04.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx.i, align 2
  %data.i = getelementptr [26 x %struct.anon.100], ptr @VSB_mod_tab, i32 0, i32 %i.04.i, i32 1
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %data.i, align 2
  %conv.i = trunc i16 %33 to i8
  %call16.i = tail call i32 @au8522_writereg(ptr noundef %26, i16 noundef zeroext %31, i8 noundef zeroext %conv.i) #6
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond7.not.i = icmp eq i32 %inc.i, 26
  br i1 %exitcond7.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %vsb_if.i = getelementptr inbounds %struct.au8522_state, ptr %26, i32 0, i32 5, i32 3
  %34 = ptrtoint ptr %vsb_if.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vsb_if.i, align 4
  tail call fastcc void @au8522_set_if(ptr noundef %fe, i32 noundef %35) #6
  br label %sw.epilog.i

do.body19.i:                                      ; preds = %do.end3.i
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool20.not.i = icmp eq i32 %36, 0
  br i1 %tobool20.not.i, label %do.body19.i.for.body33.i.preheader_crit_edge, label %do.end24.i

do.body19.i.for.body33.i.preheader_crit_edge:     ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body33.i.preheader

do.end24.i:                                       ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #8
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.18) #9
  br label %for.body33.i.preheader

for.body33.i.preheader:                           ; preds = %do.end24.i, %do.body19.i.for.body33.i.preheader_crit_edge
  br label %for.body33.i

for.body33.i:                                     ; preds = %for.body33.i.for.body33.i_crit_edge, %for.body33.i.preheader
  %i.13.i = phi i32 [ %inc41.i, %for.body33.i.for.body33.i_crit_edge ], [ 0, %for.body33.i.preheader ]
  %arrayidx34.i = getelementptr [72 x %struct.anon.101], ptr @QAM64_mod_tab, i32 0, i32 %i.13.i
  %37 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx34.i, align 2
  %data37.i = getelementptr [72 x %struct.anon.101], ptr @QAM64_mod_tab, i32 0, i32 %i.13.i, i32 1
  %39 = ptrtoint ptr %data37.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %data37.i, align 2
  %conv38.i = trunc i16 %40 to i8
  %call39.i = tail call i32 @au8522_writereg(ptr noundef %26, i16 noundef zeroext %38, i8 noundef zeroext %conv38.i) #6
  %inc41.i = add nuw nsw i32 %i.13.i, 1
  %exitcond6.not.i = icmp eq i32 %inc41.i, 72
  br i1 %exitcond6.not.i, label %for.end42.i, label %for.body33.i.for.body33.i_crit_edge

for.body33.i.for.body33.i_crit_edge:              ; preds = %for.body33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body33.i

for.end42.i:                                      ; preds = %for.body33.i
  call void @__sanitizer_cov_trace_pc() #8
  %qam_if.i = getelementptr inbounds %struct.au8522_state, ptr %26, i32 0, i32 5, i32 4
  %41 = ptrtoint ptr %qam_if.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %qam_if.i, align 4
  tail call fastcc void @au8522_set_if(ptr noundef %fe, i32 noundef %42) #6
  br label %sw.epilog.i

sw.bb45.i:                                        ; preds = %do.end3.i
  %43 = load i32, ptr @zv_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool46.not.i = icmp eq i32 %43, 0
  %44 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool77.not.i = icmp eq i32 %44, 0
  br i1 %tobool46.not.i, label %do.body76.i, label %do.body48.i

do.body48.i:                                      ; preds = %sw.bb45.i
  br i1 %tobool77.not.i, label %do.body48.i.for.body62.i.preheader_crit_edge, label %do.end53.i

do.body48.i.for.body62.i.preheader_crit_edge:     ; preds = %do.body48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body62.i.preheader

do.end53.i:                                       ; preds = %do.body48.i
  call void @__sanitizer_cov_trace_pc() #8
  %call55.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.18) #9
  br label %for.body62.i.preheader

for.body62.i.preheader:                           ; preds = %do.end53.i, %do.body48.i.for.body62.i.preheader_crit_edge
  br label %for.body62.i

for.body62.i:                                     ; preds = %for.body62.i.for.body62.i_crit_edge, %for.body62.i.preheader
  %i.21.i = phi i32 [ %inc70.i, %for.body62.i.for.body62.i_crit_edge ], [ 0, %for.body62.i.preheader ]
  %arrayidx63.i = getelementptr [75 x %struct.anon.102], ptr @QAM256_mod_tab_zv_mode, i32 0, i32 %i.21.i
  %45 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx63.i, align 2
  %data66.i = getelementptr [75 x %struct.anon.102], ptr @QAM256_mod_tab_zv_mode, i32 0, i32 %i.21.i, i32 1
  %47 = ptrtoint ptr %data66.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %data66.i, align 2
  %conv67.i = trunc i16 %48 to i8
  %call68.i = tail call i32 @au8522_writereg(ptr noundef %26, i16 noundef zeroext %46, i8 noundef zeroext %conv67.i) #6
  %inc70.i = add nuw nsw i32 %i.21.i, 1
  %exitcond.not.i = icmp eq i32 %inc70.i, 75
  br i1 %exitcond.not.i, label %for.end71.i, label %for.body62.i.for.body62.i_crit_edge

for.body62.i.for.body62.i_crit_edge:              ; preds = %for.body62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body62.i

for.end71.i:                                      ; preds = %for.body62.i
  call void @__sanitizer_cov_trace_pc() #8
  %qam_if73.i = getelementptr inbounds %struct.au8522_state, ptr %26, i32 0, i32 5, i32 4
  %49 = ptrtoint ptr %qam_if73.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %qam_if73.i, align 4
  tail call fastcc void @au8522_set_if(ptr noundef %fe, i32 noundef %50) #6
  tail call void @msleep(i32 noundef 100) #6
  %call75.i = tail call i32 @au8522_writereg(ptr noundef %26, i16 noundef zeroext -32230, i8 noundef zeroext 0) #6
  br label %sw.epilog.i

do.body76.i:                                      ; preds = %sw.bb45.i
  br i1 %tobool77.not.i, label %do.body76.i.for.body90.i.preheader_crit_edge, label %do.end81.i

do.body76.i.for.body90.i.preheader_crit_edge:     ; preds = %do.body76.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body90.i.preheader

do.end81.i:                                       ; preds = %do.body76.i
  call void @__sanitizer_cov_trace_pc() #8
  %call83.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.18) #9
  br label %for.body90.i.preheader

for.body90.i.preheader:                           ; preds = %do.end81.i, %do.body76.i.for.body90.i.preheader_crit_edge
  br label %for.body90.i

for.body90.i:                                     ; preds = %for.body90.i.for.body90.i_crit_edge, %for.body90.i.preheader
  %i.32.i = phi i32 [ %inc98.i, %for.body90.i.for.body90.i_crit_edge ], [ 0, %for.body90.i.preheader ]
  %arrayidx91.i = getelementptr [72 x %struct.anon.103], ptr @QAM256_mod_tab, i32 0, i32 %i.32.i
  %51 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx91.i, align 2
  %data94.i = getelementptr [72 x %struct.anon.103], ptr @QAM256_mod_tab, i32 0, i32 %i.32.i, i32 1
  %53 = ptrtoint ptr %data94.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %data94.i, align 2
  %conv95.i = trunc i16 %54 to i8
  %call96.i = tail call i32 @au8522_writereg(ptr noundef %26, i16 noundef zeroext %52, i8 noundef zeroext %conv95.i) #6
  %inc98.i = add nuw nsw i32 %i.32.i, 1
  %exitcond5.not.i = icmp eq i32 %inc98.i, 72
  br i1 %exitcond5.not.i, label %for.end99.i, label %for.body90.i.for.body90.i_crit_edge

for.body90.i.for.body90.i_crit_edge:              ; preds = %for.body90.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body90.i

for.end99.i:                                      ; preds = %for.body90.i
  call void @__sanitizer_cov_trace_pc() #8
  %qam_if101.i = getelementptr inbounds %struct.au8522_state, ptr %26, i32 0, i32 5, i32 4
  %55 = ptrtoint ptr %qam_if101.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %qam_if101.i, align 4
  tail call fastcc void @au8522_set_if(ptr noundef %fe, i32 noundef %56) #6
  br label %sw.epilog.i

do.body104.i:                                     ; preds = %do.end3.i
  %57 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool105.not.i = icmp eq i32 %57, 0
  br i1 %tobool105.not.i, label %do.body104.i.au8522_enable_modulation.exit_crit_edge, label %do.end109.i

do.body104.i.au8522_enable_modulation.exit_crit_edge: ; preds = %do.body104.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %au8522_enable_modulation.exit

do.end109.i:                                      ; preds = %do.body104.i
  call void @__sanitizer_cov_trace_pc() #8
  %call111.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.18) #9
  br label %au8522_enable_modulation.exit

sw.epilog.i:                                      ; preds = %for.end99.i, %for.end71.i, %for.end42.i, %for.end.i
  %current_modulation.i = getelementptr inbounds %struct.au8522_state, ptr %26, i32 0, i32 8
  %58 = ptrtoint ptr %current_modulation.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %24, ptr %current_modulation.i, align 8
  br label %au8522_enable_modulation.exit

au8522_enable_modulation.exit:                    ; preds = %sw.epilog.i, %do.end109.i, %do.body104.i.au8522_enable_modulation.exit_crit_edge
  %59 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dtv_property_cache, align 4
  %61 = ptrtoint ptr %current_frequency to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %current_frequency, align 4
  br label %cleanup

cleanup:                                          ; preds = %au8522_enable_modulation.exit, %if.end29.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %au8522_enable_modulation.exit ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call20, %if.end29.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @au8522_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %tune) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tune to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1000, ptr %tune, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @au8522_get_frontend(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %c) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %current_frequency = getelementptr inbounds %struct.au8522_state, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %current_frequency to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_frequency, align 4
  %4 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %c, align 4
  %current_modulation = getelementptr inbounds %struct.au8522_state, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %current_modulation to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %current_modulation, align 8
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 1
  %7 = ptrtoint ptr %modulation to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %modulation, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @au8522_read_status(ptr noundef %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %tuner_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tuner_status) #6
  %2 = ptrtoint ptr %tuner_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tuner_status, align 4
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %status, align 4
  %current_modulation = getelementptr inbounds %struct.au8522_state, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %current_modulation to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_modulation, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %5)
  %cmp = icmp eq i32 %5, 7
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %cmp, label %do.body, label %do.body10

do.body:                                          ; preds = %entry
  br i1 %tobool.not, label %do.body.do.end4_crit_edge, label %do.end

do.body.do.end4_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %do.body.do.end4_crit_edge
  %call5 = tail call zeroext i8 @au8522_readreg(ptr noundef %1, i16 noundef zeroext 136) #6
  %7 = and i8 %call5, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp6 = icmp eq i8 %7, 3
  br i1 %cmp6, label %do.end4.if.end34.sink.split_crit_edge, label %do.end4.if.end34_crit_edge

do.end4.if.end34_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

do.end4.if.end34.sink.split_crit_edge:            ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.sink.split

do.body10:                                        ; preds = %entry
  br i1 %tobool.not, label %do.body10.do.end20_crit_edge, label %do.end15

do.body10.do.end20_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20

do.end15:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43) #9
  br label %do.end20

do.end20:                                         ; preds = %do.end15, %do.body10.do.end20_crit_edge
  %call21 = tail call zeroext i8 @au8522_readreg(ptr noundef %1, i16 noundef zeroext 1345) #6
  %conv22 = zext i8 %call21 to i32
  %and23 = and i32 %conv22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.end20.if.end27_crit_edge, label %if.then25

do.end20.if.end27_crit_edge:                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then25:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  %or26 = or i32 %9, 4
  store i32 %or26, ptr %status, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %do.end20.if.end27_crit_edge
  %and29 = and i32 %conv22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end27.if.end34_crit_edge, label %if.end27.if.end34.sink.split_crit_edge

if.end27.if.end34.sink.split_crit_edge:           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.sink.split

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.end34.sink.split:                              ; preds = %if.end27.if.end34.sink.split_crit_edge, %do.end4.if.end34.sink.split_crit_edge
  %.sink135 = phi i32 [ 28, %do.end4.if.end34.sink.split_crit_edge ], [ 24, %if.end27.if.end34.sink.split_crit_edge ]
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  %or32 = or i32 %11, %.sink135
  store i32 %or32, ptr %status, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %if.end27.if.end34_crit_edge, %do.end4.if.end34_crit_edge
  %status_mode = getelementptr inbounds %struct.au8522_state, ptr %1, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %status_mode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %status_mode, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %13, label %if.end34.sw.epilog_crit_edge [
    i8 1, label %do.body36
    i8 0, label %do.body53
  ]

if.end34.sw.epilog_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body36:                                        ; preds = %if.end34
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool37.not = icmp eq i32 %15, 0
  br i1 %tobool37.not, label %do.body36.do.end46_crit_edge, label %do.end41

do.body36.do.end46_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end46

do.end41:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #8
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.43) #9
  br label %do.end46

do.end46:                                         ; preds = %do.end41, %do.body36.do.end46_crit_edge
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status, align 4
  %and47 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %do.end46.sw.epilog_crit_edge, label %do.end46.sw.epilog.sink.split_crit_edge

do.end46.sw.epilog.sink.split_crit_edge:          ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

do.end46.sw.epilog_crit_edge:                     ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body53:                                        ; preds = %if.end34
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool54.not = icmp eq i32 %18, 0
  br i1 %tobool54.not, label %do.body53.do.end63_crit_edge, label %do.end58

do.body53.do.end63_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end63

do.end58:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #8
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.43) #9
  br label %do.end63

do.end63:                                         ; preds = %do.end58, %do.body53.do.end63_crit_edge
  %get_status = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 12
  %19 = ptrtoint ptr %get_status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_status, align 4
  %tobool64.not = icmp eq ptr %20, null
  br i1 %tobool64.not, label %do.end63.if.end85_crit_edge, label %if.then65

do.end63.if.end85_crit_edge:                      ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.then65:                                        ; preds = %do.end63
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %21 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool67.not = icmp eq ptr %22, null
  br i1 %tobool67.not, label %if.then65.if.end72_crit_edge, label %if.then68

if.then65.if.end72_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then68:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #8
  %call71 = tail call i32 %22(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end72

if.end72:                                         ; preds = %if.then68, %if.then65.if.end72_crit_edge
  %23 = ptrtoint ptr %get_status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %get_status, align 4
  %call76 = call i32 %24(ptr noundef %fe, ptr noundef nonnull %tuner_status) #6
  %25 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool79.not = icmp eq ptr %26, null
  br i1 %tobool79.not, label %if.end72.if.end85_crit_edge, label %if.then80

if.end72.if.end85_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.then80:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  %call83 = call i32 %26(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end85

if.end85:                                         ; preds = %if.then80, %if.end72.if.end85_crit_edge, %do.end63.if.end85_crit_edge
  %27 = ptrtoint ptr %tuner_status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tuner_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool86.not = icmp eq i32 %28, 0
  br i1 %tobool86.not, label %if.end85.sw.epilog_crit_edge, label %if.then87

if.end85.sw.epilog_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then87:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %status, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.then87, %do.end46.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ %30, %if.then87 ], [ %17, %do.end46.sw.epilog.sink.split_crit_edge ]
  %or88 = or i32 %.sink, 3
  %31 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or88, ptr %status, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end85.sw.epilog_crit_edge, %do.end46.sw.epilog_crit_edge, %if.end34.sw.epilog_crit_edge
  %32 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %status, align 4
  %fe_status = getelementptr inbounds %struct.au8522_state, ptr %1, i32 0, i32 9
  %34 = ptrtoint ptr %fe_status to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %fe_status, align 4
  %35 = load i32, ptr %status, align 4
  %and90 = shl i32 %35, 27
  %sext = ashr i32 %and90, 31
  %call93 = call i32 @au8522_led_ctrl(ptr noundef %1, i32 noundef %sext) #6
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool98.not = icmp eq i32 %36, 0
  br i1 %tobool98.not, label %sw.epilog.do.end107_crit_edge, label %do.end102

sw.epilog.do.end107_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end107

do.end102:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %status, align 4
  %call104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.43, i32 noundef %38) #9
  br label %do.end107

do.end107:                                        ; preds = %do.end102, %sw.epilog.do.end107_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tuner_status) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @au8522_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv.i, align 4
  %current_modulation.i = getelementptr inbounds %struct.au8522_state, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %current_modulation.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_modulation.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp.i = icmp eq i32 %3, 7
  %..i = select i1 %cmp.i, i16 135, i16 1347
  %call1.i = tail call zeroext i8 @au8522_readreg(ptr noundef %1, i16 noundef zeroext %..i) #6
  %storemerge.i = zext i8 %call1.i to i32
  %4 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %storemerge.i, ptr %ber, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @au8522_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %signal_strength) #0 align 64 {
entry:
  %snr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %snr) #6
  %0 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %snr, align 2, !annotation !151
  %call = call i32 @au8522_read_snr(ptr noundef %fe, ptr noundef nonnull %snr)
  %1 = ptrtoint ptr %signal_strength to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %signal_strength, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %snr) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @au8522_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef %snr) #0 align 64 {
entry:
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %current_modulation = getelementptr inbounds %struct.au8522_state, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %current_modulation to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %current_modulation, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %4, label %if.else14 [
    i32 5, label %if.then4
    i32 3, label %if.then10
  ]

if.then4:                                         ; preds = %do.end3
  %call5 = tail call zeroext i8 @au8522_readreg(ptr noundef %1, i16 noundef zeroext 1314) #6
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.then4.do.end3.i_crit_edge, label %do.end.i

if.then4.do.end3.i_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i

do.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.58) #9
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.then4.do.end3.i_crit_edge
  %7 = zext i8 %call5 to i16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end3.i
  %i.028.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.end3.i ]
  %arrayidx.i = getelementptr %struct.mse2snr_tab, ptr @qam256_mse2snr_tab, i32 %i.028.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %7)
  %cmp4.i = icmp ugt i16 %9, %7
  br i1 %cmp4.i, label %if.then6.i, label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i = getelementptr %struct.mse2snr_tab, ptr @qam256_mse2snr_tab, i32 %i.028.i, i32 1
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data.i, align 2
  %12 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %snr, align 2
  br label %do.body9.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.inc.i.do.body9.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.do.body9.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body9.i

do.body9.i:                                       ; preds = %for.inc.i.do.body9.i_crit_edge, %if.then6.i
  %ret.0.i = phi i32 [ 0, %if.then6.i ], [ -22, %for.inc.i.do.body9.i_crit_edge ]
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not.i = icmp eq i32 %13, 0
  br i1 %tobool10.not.i, label %do.body9.i.if.end19_crit_edge, label %do.body9.i.if.end19.sink.split_crit_edge

do.body9.i.if.end19.sink.split_crit_edge:         ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.sink.split

do.body9.i.if.end19_crit_edge:                    ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then10:                                        ; preds = %do.end3
  %call11 = tail call zeroext i8 @au8522_readreg(ptr noundef %1, i16 noundef zeroext 1314) #6
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i33 = icmp eq i32 %14, 0
  br i1 %tobool.not.i33, label %if.then10.do.end3.i36_crit_edge, label %do.end.i35

if.then10.do.end3.i36_crit_edge:                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i36

do.end.i35:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %call.i34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.58) #9
  br label %do.end3.i36

do.end3.i36:                                      ; preds = %do.end.i35, %if.then10.do.end3.i36_crit_edge
  %15 = zext i8 %call11 to i16
  br label %for.body.i41

for.body.i41:                                     ; preds = %for.inc.i46.for.body.i41_crit_edge, %do.end3.i36
  %i.028.i37 = phi i32 [ %inc.i44, %for.inc.i46.for.body.i41_crit_edge ], [ 0, %do.end3.i36 ]
  %arrayidx.i38 = getelementptr %struct.mse2snr_tab, ptr @qam64_mse2snr_tab, i32 %i.028.i37
  %16 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.i38, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %15)
  %cmp4.i40 = icmp ugt i16 %17, %15
  br i1 %cmp4.i40, label %if.then6.i43, label %for.inc.i46

if.then6.i43:                                     ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #8
  %data.i42 = getelementptr %struct.mse2snr_tab, ptr @qam64_mse2snr_tab, i32 %i.028.i37, i32 1
  %18 = ptrtoint ptr %data.i42 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %data.i42, align 2
  %20 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %snr, align 2
  br label %do.body9.i49

for.inc.i46:                                      ; preds = %for.body.i41
  %inc.i44 = add nuw nsw i32 %i.028.i37, 1
  %exitcond.not.i45 = icmp eq i32 %inc.i44, 77
  br i1 %exitcond.not.i45, label %for.inc.i46.do.body9.i49_crit_edge, label %for.inc.i46.for.body.i41_crit_edge

for.inc.i46.for.body.i41_crit_edge:               ; preds = %for.inc.i46
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i41

for.inc.i46.do.body9.i49_crit_edge:               ; preds = %for.inc.i46
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body9.i49

do.body9.i49:                                     ; preds = %for.inc.i46.do.body9.i49_crit_edge, %if.then6.i43
  %ret.0.i47 = phi i32 [ 0, %if.then6.i43 ], [ -22, %for.inc.i46.do.body9.i49_crit_edge ]
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool10.not.i48 = icmp eq i32 %21, 0
  br i1 %tobool10.not.i48, label %do.body9.i49.if.end19_crit_edge, label %do.body9.i49.if.end19.sink.split_crit_edge

do.body9.i49.if.end19.sink.split_crit_edge:       ; preds = %do.body9.i49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.sink.split

do.body9.i49.if.end19_crit_edge:                  ; preds = %do.body9.i49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.else14:                                        ; preds = %do.end3
  %call15 = tail call zeroext i8 @au8522_readreg(ptr noundef %1, i16 noundef zeroext 785) #6
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i54 = icmp eq i32 %22, 0
  br i1 %tobool.not.i54, label %if.else14.do.end3.i57_crit_edge, label %do.end.i56

if.else14.do.end3.i57_crit_edge:                  ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i57

do.end.i56:                                       ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #8
  %call.i55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.58) #9
  br label %do.end3.i57

do.end3.i57:                                      ; preds = %do.end.i56, %if.else14.do.end3.i57_crit_edge
  %23 = zext i8 %call15 to i16
  br label %for.body.i62

for.body.i62:                                     ; preds = %for.inc.i67.for.body.i62_crit_edge, %do.end3.i57
  %i.028.i58 = phi i32 [ %inc.i65, %for.inc.i67.for.body.i62_crit_edge ], [ 0, %do.end3.i57 ]
  %arrayidx.i59 = getelementptr %struct.mse2snr_tab, ptr @vsb_mse2snr_tab, i32 %i.028.i58
  %24 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.i59, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %23)
  %cmp4.i61 = icmp ugt i16 %25, %23
  br i1 %cmp4.i61, label %if.then6.i64, label %for.inc.i67

if.then6.i64:                                     ; preds = %for.body.i62
  call void @__sanitizer_cov_trace_pc() #8
  %data.i63 = getelementptr %struct.mse2snr_tab, ptr @vsb_mse2snr_tab, i32 %i.028.i58, i32 1
  %26 = ptrtoint ptr %data.i63 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %data.i63, align 2
  %28 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %snr, align 2
  br label %do.body9.i70

for.inc.i67:                                      ; preds = %for.body.i62
  %inc.i65 = add nuw nsw i32 %i.028.i58, 1
  %exitcond.not.i66 = icmp eq i32 %inc.i65, 30
  br i1 %exitcond.not.i66, label %for.inc.i67.do.body9.i70_crit_edge, label %for.inc.i67.for.body.i62_crit_edge

for.inc.i67.for.body.i62_crit_edge:               ; preds = %for.inc.i67
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i62

for.inc.i67.do.body9.i70_crit_edge:               ; preds = %for.inc.i67
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body9.i70

do.body9.i70:                                     ; preds = %for.inc.i67.do.body9.i70_crit_edge, %if.then6.i64
  %ret.0.i68 = phi i32 [ 0, %if.then6.i64 ], [ -22, %for.inc.i67.do.body9.i70_crit_edge ]
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool10.not.i69 = icmp eq i32 %29, 0
  br i1 %tobool10.not.i69, label %do.body9.i70.if.end19_crit_edge, label %do.body9.i70.if.end19.sink.split_crit_edge

do.body9.i70.if.end19.sink.split_crit_edge:       ; preds = %do.body9.i70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.sink.split

do.body9.i70.if.end19_crit_edge:                  ; preds = %do.body9.i70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.end19.sink.split:                              ; preds = %do.body9.i70.if.end19.sink.split_crit_edge, %do.body9.i49.if.end19.sink.split_crit_edge, %do.body9.i.if.end19.sink.split_crit_edge
  %ret.0.ph = phi i32 [ %ret.0.i, %do.body9.i.if.end19.sink.split_crit_edge ], [ %ret.0.i47, %do.body9.i49.if.end19.sink.split_crit_edge ], [ %ret.0.i68, %do.body9.i70.if.end19.sink.split_crit_edge ]
  %30 = ptrtoint ptr %snr to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %snr, align 2
  %conv16.i71 = zext i16 %31 to i32
  %call17.i72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.58, i32 noundef %conv16.i71) #9
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %do.body9.i70.if.end19_crit_edge, %do.body9.i49.if.end19_crit_edge, %do.body9.i.if.end19_crit_edge
  %ret.0 = phi i32 [ %ret.0.i, %do.body9.i.if.end19_crit_edge ], [ %ret.0.i47, %do.body9.i49.if.end19_crit_edge ], [ %ret.0.i68, %do.body9.i70.if.end19_crit_edge ], [ %ret.0.ph, %if.end19.sink.split ]
  %led_cfg = getelementptr inbounds %struct.au8522_state, ptr %1, i32 0, i32 5, i32 2
  %32 = ptrtoint ptr %led_cfg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %led_cfg, align 4
  %tobool20.not = icmp eq ptr %33, null
  br i1 %tobool20.not, label %if.end19.if.end23_crit_edge, label %if.end.i

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.end.i:                                         ; preds = %if.end19
  %fe_status.i = getelementptr inbounds %struct.au8522_state, ptr %1, i32 0, i32 9
  %34 = ptrtoint ptr %fe_status.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fe_status.i, align 4
  %and.i = and i32 %35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.else.i

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  %36 = ptrtoint ptr %current_modulation to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %current_modulation, align 8
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %37, label %if.else.i.if.end11.i_crit_edge [
    i32 5, label %if.then3.i
    i32 3, label %if.then7.i
  ]

if.else.i.if.end11.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %qam256_strong.i = getelementptr inbounds %struct.au8522_led_config, ptr %33, i32 0, i32 2
  br label %if.end11.i

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %qam64_strong.i = getelementptr inbounds %struct.au8522_led_config, ptr %33, i32 0, i32 1
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then7.i, %if.then3.i, %if.else.i.if.end11.i_crit_edge
  %strong.0.in.i = phi ptr [ %qam256_strong.i, %if.then3.i ], [ %qam64_strong.i, %if.then7.i ], [ %33, %if.else.i.if.end11.i_crit_edge ]
  %39 = ptrtoint ptr %strong.0.in.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %strong.0.i = load i16, ptr %strong.0.in.i, align 2
  %40 = ptrtoint ptr %snr to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %snr, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %strong.0.i)
  %cmp13.not.i = icmp ult i16 %41, %strong.0.i
  %..i = select i1 %cmp13.not.i, i32 1, i32 2
  %led_state.i = getelementptr inbounds %struct.au8522_state, ptr %1, i32 0, i32 10
  %42 = ptrtoint ptr %led_state.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %led_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool18.not.i = icmp eq i32 %43, 0
  br i1 %tobool18.not.i, label %if.end11.i.cleanup.sink.split.i_crit_edge, label %land.lhs.true.i

if.end11.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

land.lhs.true.i:                                  ; preds = %if.end11.i
  %conv12.i = zext i16 %strong.0.i to i32
  %conv20.i = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %strong.0.i, i16 %41)
  %cmp21.i = icmp ult i16 %strong.0.i, %41
  %sub.i = sub nsw i32 %conv20.i, %conv12.i
  %sub27.i = sub nsw i32 %conv12.i, %conv20.i
  %cond.i = select i1 %cmp21.i, i32 %sub.i, i32 %sub27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %cond.i)
  %cmp28.i = icmp slt i32 %cond.i, 11
  br i1 %cmp28.i, label %land.lhs.true.i.if.end23_crit_edge, label %land.lhs.true.i.cleanup.sink.split.i_crit_edge

land.lhs.true.i.cleanup.sink.split.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

land.lhs.true.i.if.end23_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

cleanup.sink.split.i:                             ; preds = %land.lhs.true.i.cleanup.sink.split.i_crit_edge, %if.end11.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge
  %..sink.i = phi i32 [ 0, %if.end.i.cleanup.sink.split.i_crit_edge ], [ %..i, %land.lhs.true.i.cleanup.sink.split.i_crit_edge ], [ %..i, %if.end11.i.cleanup.sink.split.i_crit_edge ]
  %call32.i = tail call i32 @au8522_led_ctrl(ptr noundef %1, i32 noundef %..sink.i) #6
  br label %if.end23

if.end23:                                         ; preds = %cleanup.sink.split.i, %land.lhs.true.i.if.end23_crit_edge, %if.end19.if.end23_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @au8522_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %current_modulation = getelementptr inbounds %struct.au8522_state, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %current_modulation to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_modulation, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp = icmp eq i32 %3, 7
  %. = select i1 %cmp, i16 135, i16 1347
  %call1 = tail call zeroext i8 @au8522_readreg(ptr noundef %1, i16 noundef zeroext %.) #6
  %storemerge = zext i8 %call1 to i32
  %4 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %storemerge, ptr %ucblocks, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au8522_writereg(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @au8522_set_if(ptr nocapture noundef readonly %fe, i32 noundef %if_freq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %if_freq)
  %2 = icmp ult i32 %if_freq, 3
  br i1 %2, label %switch.lookup, label %do.body

do.body:                                          ; preds = %entry
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #9
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.cast = trunc i32 %if_freq to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 251, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %switch.cast1 = trunc i32 %if_freq to i24
  %switch.shiftamt2 = shl i24 %switch.cast1, 3
  %switch.downshift3 = lshr i24 4017038, %switch.shiftamt2
  %switch.masked4 = trunc i24 %switch.downshift3 to i8
  %switch.cast5 = trunc i32 %if_freq to i24
  %switch.shiftamt6 = shl i24 %switch.cast5, 3
  %switch.downshift7 = lshr i24 -6235847, %switch.shiftamt6
  %switch.masked8 = trunc i24 %switch.downshift7 to i8
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool7.not = icmp eq i32 %4, 0
  br i1 %tobool7.not, label %switch.lookup.do.end16_crit_edge, label %do.end11

switch.lookup.do.end16_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

do.end11:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.au8522_set_if, i32 0, i32 %if_freq
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.38, ptr noundef nonnull %switch.load) #9
  br label %do.end16

do.end16:                                         ; preds = %do.end11, %switch.lookup.do.end16_crit_edge
  %call17 = tail call i32 @au8522_writereg(ptr noundef %1, i16 noundef zeroext 181, i8 noundef zeroext %switch.masked) #6
  %call18 = tail call i32 @au8522_writereg(ptr noundef %1, i16 noundef zeroext 182, i8 noundef zeroext %switch.masked4) #6
  %call19 = tail call i32 @au8522_writereg(ptr noundef %1, i16 noundef zeroext 183, i8 noundef zeroext %switch.masked8) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @au8522_readreg(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au8522_led_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !34, !36, !37, !39, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !79, !81, !83, !85, !86, !87, !88, !90, !91, !92, !94, !96, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !136, !138, !139, !140}
!llvm.module.flags = !{!142, !143, !144, !145, !146, !147, !148, !149}
!llvm.ident = !{!150}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 843, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @au8522_attach._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @au8522_attach._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 847, i32 3}
!8 = !{ptr @au8522_attach._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @au8522_attach._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 851, i32 3}
!12 = !{ptr @au8522_attach._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @au8522_attach._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 868, i32 3}
!16 = !{ptr @au8522_attach._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @au8522_attach._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__ksymtab_au8522_attach, !19, !"__ksymtab_au8522_attach", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 882, i32 1}
!20 = !{ptr @__param_debug, !21, !"__param_debug", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 908, i32 1}
!22 = !{ptr @__UNIQUE_ID_debugtype292, !21, !"__UNIQUE_ID_debugtype292", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_debug293, !24, !"__UNIQUE_ID_debug293", i1 false, i1 false}
!24 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 909, i32 1}
!25 = !{ptr @__param_zv_mode, !26, !"__param_zv_mode", i1 false, i1 false}
!26 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 911, i32 1}
!27 = !{ptr @__UNIQUE_ID_zv_modetype294, !26, !"__UNIQUE_ID_zv_modetype294", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_zv_mode295, !29, !"__UNIQUE_ID_zv_mode295", i1 false, i1 false}
!29 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 912, i32 1}
!30 = !{ptr @__UNIQUE_ID_description296, !31, !"__UNIQUE_ID_description296", i1 false, i1 false}
!31 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 916, i32 1}
!32 = !{ptr @__UNIQUE_ID_author297, !33, !"__UNIQUE_ID_author297", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 917, i32 1}
!34 = !{ptr @__UNIQUE_ID_file298, !35, !"__UNIQUE_ID_file298", i1 false, i1 false}
!35 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 918, i32 1}
!36 = !{ptr @__UNIQUE_ID_license299, !35, !"__UNIQUE_ID_license299", i1 false, i1 false}
!37 = !{ptr @debug, !38, !"debug", i1 false, i1 false}
!38 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 19, i32 12}
!39 = !{ptr @au8522_ops, !40, !"au8522_ops", i1 false, i1 false}
!40 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 884, i32 38}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 602, i32 2}
!43 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @au8522_set_frontend._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @au8522_set_frontend._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 621, i32 3}
!48 = !{ptr @au8522_set_frontend._entry.14, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @au8522_set_frontend._entry_ptr.16, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 547, i32 2}
!52 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @au8522_enable_modulation._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @au8522_enable_modulation._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 551, i32 3}
!57 = !{ptr @au8522_enable_modulation._entry.19, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @au8522_enable_modulation._entry_ptr.21, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 559, i32 3}
!61 = !{ptr @au8522_enable_modulation._entry.22, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @au8522_enable_modulation._entry_ptr.24, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 568, i32 4}
!65 = !{ptr @au8522_enable_modulation._entry.25, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @au8522_enable_modulation._entry_ptr.27, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 577, i32 4}
!69 = !{ptr @au8522_enable_modulation._entry.28, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @au8522_enable_modulation._entry_ptr.30, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 586, i32 3}
!73 = !{ptr @au8522_enable_modulation._entry.31, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @au8522_enable_modulation._entry_ptr.33, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @VSB_mod_tab, !76, !"VSB_mod_tab", i1 false, i1 false}
!76 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 273, i32 3}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 240, i32 11}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 246, i32 11}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 252, i32 11}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 258, i32 3}
!85 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @au8522_set_if._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @au8522_set_if._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 261, i32 2}
!90 = !{ptr @au8522_set_if._entry.39, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @au8522_set_if._entry_ptr.41, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @QAM64_mod_tab, !93, !"QAM64_mod_tab", i1 false, i1 false}
!93 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 306, i32 3}
!94 = !{ptr @QAM256_mod_tab_zv_mode, !95, !"QAM256_mod_tab_zv_mode", i1 false, i1 false}
!95 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 463, i32 3}
!96 = !{ptr @QAM256_mod_tab, !97, !"QAM256_mod_tab", i1 false, i1 false}
!97 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 385, i32 3}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 643, i32 3}
!100 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @au8522_read_status._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @au8522_read_status._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 648, i32 3}
!105 = !{ptr @au8522_read_status._entry.44, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @au8522_read_status._entry_ptr.46, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 658, i32 3}
!109 = !{ptr @au8522_read_status._entry.47, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @au8522_read_status._entry_ptr.49, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 664, i32 3}
!113 = !{ptr @au8522_read_status._entry.50, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @au8522_read_status._entry_ptr.52, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 687, i32 2}
!117 = !{ptr @au8522_read_status._entry.53, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @au8522_read_status._entry_ptr.55, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 730, i32 2}
!121 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @au8522_read_snr._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @au8522_read_snr._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 219, i32 2}
!126 = !{ptr @au8522_mse2snr_lookup._entry, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @au8522_mse2snr_lookup._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 228, i32 2}
!130 = !{ptr @au8522_mse2snr_lookup._entry.59, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @au8522_mse2snr_lookup._entry_ptr.61, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @qam256_mse2snr_tab, !133, !"qam256_mse2snr_tab", i1 false, i1 false}
!133 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 148, i32 27}
!134 = !{ptr @qam64_mse2snr_tab, !135, !"qam64_mse2snr_tab", i1 false, i1 false}
!135 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 67, i32 27}
!136 = !{ptr @vsb_mse2snr_tab, !137, !"vsb_mse2snr_tab", i1 false, i1 false}
!137 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 33, i32 27}
!138 = !{ptr @__param_str_debug, !21, !"__param_str_debug", i1 false, i1 false}
!139 = !{ptr @__param_str_zv_mode, !26, !"__param_str_zv_mode", i1 false, i1 false}
!140 = !{ptr @zv_mode, !141, !"zv_mode", i1 false, i1 false}
!141 = !{!"../drivers/media/dvb-frontends/au8522_dig.c", i32 20, i32 12}
!142 = !{i32 1, !"wchar_size", i32 2}
!143 = !{i32 1, !"min_enum_size", i32 4}
!144 = !{i32 8, !"branch-target-enforcement", i32 0}
!145 = !{i32 8, !"sign-return-address", i32 0}
!146 = !{i32 8, !"sign-return-address-all", i32 0}
!147 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!148 = !{i32 7, !"uwtable", i32 1}
!149 = !{i32 7, !"frame-pointer", i32 2}
!150 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!151 = !{!"auto-init"}
