; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/m88rs2000.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/m88rs2000.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+m88rs2000_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_m88rs2000_attach\09\09\09\09"
module asm "\09.long\09__crc_m88rs2000_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_m88rs2000_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22m88rs2000_attach\22\09\09\09\09\09"
module asm "__kstrtabns_m88rs2000_attach:\09\09\09\09\09"
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
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.inittab = type { i8, i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.m88rs2000_state = type { ptr, ptr, %struct.dvb_frontend, i8, i32, i32, i32, i8, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.m88rs2000_config = type { i8, ptr, i32, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }

@__param_str_debug = internal constant [16 x i8] c"m88rs2000.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@m88rs2000_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @m88rs2000_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [29 x i8] c"m88rs2000.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [61 x i8] c"m88rs2000.parm=debug:set debugging level (1=info (or-able)).\00", section ".modinfo", align 1
@m88rs2000_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"M88RS2000 DVB-S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 1000000, i32 5000000, i32 1000000, i32 45000000, i32 500, i32 1711 }, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr null, ptr @m88rs2000_release, ptr null, ptr @m88rs2000_init, ptr @m88rs2000_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @m88rs2000_set_frontend, ptr @m88rs2000_get_tune_settings, ptr @m88rs2000_get_frontend, ptr @m88rs2000_read_status, ptr @m88rs2000_read_ber, ptr @m88rs2000_read_signal_strength, ptr @m88rs2000_read_snr, ptr @m88rs2000_read_ucblocks, ptr null, ptr @m88rs2000_send_diseqc_msg, ptr null, ptr @m88rs2000_send_diseqc_burst, ptr @m88rs2000_set_tone, ptr @m88rs2000_set_voltage, ptr null, ptr null, ptr @m88rs2000_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__kstrtab_m88rs2000_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_m88rs2000_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_m88rs2000_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @m88rs2000_attach to i32), ptr @__kstrtab_m88rs2000_attach, ptr @__kstrtabns_m88rs2000_attach }, section "___ksymtab+m88rs2000_attach", align 4
@__UNIQUE_ID_description292 = internal constant [57 x i8] c"m88rs2000.description=M88RS2000 DVB-S Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [54 x i8] c"m88rs2000.author=Malcolm Priestley tvboxspy@gmail.com\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [53 x i8] c"m88rs2000.file=drivers/media/dvb-frontends/m88rs2000\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [22 x i8] c"m88rs2000.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version296 = internal constant [23 x i8] c"m88rs2000.version=1.13\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"m88rs2000\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.13\00", [27 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@m88rs2000_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017m88rs2000-fe: m88rs2000: init chip\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"m88rs2000_init\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/dvb-frontends/m88rs2000.c\00", [56 x i8] zeroinitializer }, align 32
@m88rs2000_init._entry_ptr = internal global ptr @m88rs2000_init._entry, section ".printk_index", align 4
@m88rs2000_setup = internal global { [15 x %struct.inittab], [51 x i8] } { [15 x %struct.inittab] [%struct.inittab { i8 1, i8 -102, i8 48 }, %struct.inittab { i8 1, i8 0, i8 1 }, %struct.inittab { i8 16, i8 25, i8 0 }, %struct.inittab { i8 1, i8 0, i8 0 }, %struct.inittab { i8 1, i8 -102, i8 -80 }, %struct.inittab { i8 1, i8 -127, i8 -63 }, %struct.inittab { i8 1, i8 -127, i8 -127 }, %struct.inittab { i8 1, i8 -122, i8 -58 }, %struct.inittab { i8 1, i8 -102, i8 48 }, %struct.inittab { i8 1, i8 -16, i8 34 }, %struct.inittab { i8 1, i8 -15, i8 -65 }, %struct.inittab { i8 1, i8 -80, i8 69 }, %struct.inittab { i8 1, i8 -78, i8 1 }, %struct.inittab { i8 1, i8 -102, i8 -80 }, %struct.inittab { i8 -1, i8 -86, i8 -1 }], [51 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@m88rs2000_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.5, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\017m88rs2000-fe: %s: writereg error (reg == 0x%02x, val == 0x%02x, ret == %i)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"m88rs2000_writereg\00", [45 x i8] zeroinitializer }, align 32
@m88rs2000_writereg._entry_ptr = internal global ptr @m88rs2000_writereg._entry, section ".printk_index", align 4
@m88rs2000_shutdown = internal global { [7 x %struct.inittab], [43 x i8] } { [7 x %struct.inittab] [%struct.inittab { i8 1, i8 -102, i8 48 }, %struct.inittab { i8 1, i8 -80, i8 0 }, %struct.inittab { i8 1, i8 -15, i8 -119 }, %struct.inittab { i8 1, i8 0, i8 1 }, %struct.inittab { i8 1, i8 -102, i8 -80 }, %struct.inittab { i8 1, i8 -127, i8 -127 }, %struct.inittab { i8 -1, i8 -86, i8 -1 }], [43 x i8] zeroinitializer }, align 32
@m88rs2000_set_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017m88rs2000-fe: %s: unsupported delivery system selected (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"m88rs2000_set_frontend\00", [41 x i8] zeroinitializer }, align 32
@m88rs2000_set_frontend._entry_ptr = internal global ptr @m88rs2000_set_frontend._entry, section ".printk_index", align 4
@fe_reset = internal global { [35 x %struct.inittab], [55 x i8] } { [35 x %struct.inittab] [%struct.inittab { i8 1, i8 0, i8 1 }, %struct.inittab { i8 1, i8 32, i8 -127 }, %struct.inittab { i8 1, i8 33, i8 -128 }, %struct.inittab { i8 1, i8 16, i8 51 }, %struct.inittab { i8 1, i8 17, i8 68 }, %struct.inittab { i8 1, i8 18, i8 7 }, %struct.inittab { i8 1, i8 24, i8 32 }, %struct.inittab { i8 1, i8 40, i8 4 }, %struct.inittab { i8 1, i8 41, i8 -114 }, %struct.inittab { i8 1, i8 59, i8 -1 }, %struct.inittab { i8 1, i8 50, i8 16 }, %struct.inittab { i8 1, i8 51, i8 2 }, %struct.inittab { i8 1, i8 52, i8 48 }, %struct.inittab { i8 1, i8 53, i8 -1 }, %struct.inittab { i8 1, i8 56, i8 80 }, %struct.inittab { i8 1, i8 57, i8 104 }, %struct.inittab { i8 1, i8 60, i8 127 }, %struct.inittab { i8 1, i8 61, i8 15 }, %struct.inittab { i8 1, i8 69, i8 32 }, %struct.inittab { i8 1, i8 70, i8 36 }, %struct.inittab { i8 1, i8 71, i8 124 }, %struct.inittab { i8 1, i8 72, i8 22 }, %struct.inittab { i8 1, i8 73, i8 4 }, %struct.inittab { i8 1, i8 74, i8 1 }, %struct.inittab { i8 1, i8 75, i8 120 }, %struct.inittab { i8 1, i8 77, i8 -46 }, %struct.inittab { i8 1, i8 78, i8 109 }, %struct.inittab { i8 1, i8 80, i8 48 }, %struct.inittab { i8 1, i8 81, i8 48 }, %struct.inittab { i8 1, i8 84, i8 123 }, %struct.inittab { i8 1, i8 86, i8 9 }, %struct.inittab { i8 1, i8 88, i8 89 }, %struct.inittab { i8 1, i8 89, i8 55 }, %struct.inittab { i8 1, i8 99, i8 -6 }, %struct.inittab { i8 -1, i8 -86, i8 -1 }], [55 x i8] zeroinitializer }, align 32
@fe_trigger = internal global { [14 x %struct.inittab], [54 x i8] } { [14 x %struct.inittab] [%struct.inittab { i8 1, i8 -105, i8 4 }, %struct.inittab { i8 1, i8 -103, i8 119 }, %struct.inittab { i8 1, i8 -101, i8 100 }, %struct.inittab { i8 1, i8 -98, i8 0 }, %struct.inittab { i8 1, i8 -97, i8 -8 }, %struct.inittab { i8 1, i8 -104, i8 -1 }, %struct.inittab { i8 1, i8 -64, i8 15 }, %struct.inittab { i8 1, i8 -119, i8 1 }, %struct.inittab { i8 1, i8 0, i8 0 }, %struct.inittab { i8 16, i8 10, i8 0 }, %struct.inittab { i8 1, i8 0, i8 1 }, %struct.inittab { i8 1, i8 0, i8 0 }, %struct.inittab { i8 1, i8 -102, i8 -80 }, %struct.inittab { i8 -1, i8 -86, i8 -1 }], [54 x i8] zeroinitializer }, align 32
@m88rs2000_set_symbolrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017m88rs2000-fe: m88rs2000: m88rs2000_set_symbolrate\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"m88rs2000_set_symbolrate\00", [39 x i8] zeroinitializer }, align 32
@m88rs2000_set_symbolrate._entry_ptr = internal global ptr @m88rs2000_set_symbolrate._entry, section ".printk_index", align 4
@m88rs2000_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.5, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017m88rs2000-fe: %s: readreg error (reg == 0x%02x, ret == %i)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"m88rs2000_readreg\00", [46 x i8] zeroinitializer }, align 32
@m88rs2000_readreg._entry_ptr = internal global ptr @m88rs2000_readreg._entry, section ".printk_index", align 4
@m88rs2000_send_diseqc_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017m88rs2000-fe: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"m88rs2000_send_diseqc_msg\00", [38 x i8] zeroinitializer }, align 32
@m88rs2000_send_diseqc_msg._entry_ptr = internal global ptr @m88rs2000_send_diseqc_msg._entry, section ".printk_index", align 4
@m88rs2000_send_diseqc_burst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.16, ptr @.str.5, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"m88rs2000_send_diseqc_burst\00", [36 x i8] zeroinitializer }, align 32
@m88rs2000_send_diseqc_burst._entry_ptr = internal global ptr @m88rs2000_send_diseqc_burst._entry, section ".printk_index", align 4
@switch.table.m88rs2000_set_frontend = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\08\10 \00@\00\80", [25 x i8] zeroinitializer }, align 32
@switch.table.m88rs2000_get_fec = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 7, i32 5, i32 3, i32 2, i32 1], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 16, i64 255]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@___asan_gen_.20 = private unnamed_addr constant [16 x i8] c"m88rs2000_debug\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 37, i32 12 }
@___asan_gen_.23 = private unnamed_addr constant [14 x i8] c"m88rs2000_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 747, i32 38 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 816, i32 1 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 436, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"m88rs2000_setup\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 289, i32 23 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 66, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [19 x i8] c"m88rs2000_shutdown\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 307, i32 23 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 610, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [9 x i8] c"fe_reset\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 317, i32 23 }
@___asan_gen_.74 = private unnamed_addr constant [11 x i8] c"fe_trigger\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 355, i32 23 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 189, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 95, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 200, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private constant [43 x i8] c"../drivers/media/dvb-frontends/m88rs2000.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 242, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [36 x i8] c"switch.table.m88rs2000_set_frontend\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [31 x i8] c"switch.table.m88rs2000_get_fec\00", align 1
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__UNIQUE_ID_version296, ptr @__ksymtab_m88rs2000_attach, ptr @__modver_attr, ptr @__param_debug, ptr @m88rs2000_init._entry, ptr @m88rs2000_init._entry_ptr, ptr @m88rs2000_readreg._entry, ptr @m88rs2000_readreg._entry_ptr, ptr @m88rs2000_send_diseqc_burst._entry, ptr @m88rs2000_send_diseqc_burst._entry_ptr, ptr @m88rs2000_send_diseqc_msg._entry, ptr @m88rs2000_send_diseqc_msg._entry_ptr, ptr @m88rs2000_set_frontend._entry, ptr @m88rs2000_set_frontend._entry_ptr, ptr @m88rs2000_set_symbolrate._entry, ptr @m88rs2000_set_symbolrate._entry_ptr, ptr @m88rs2000_writereg._entry, ptr @m88rs2000_writereg._entry_ptr, ptr @m88rs2000_debug, ptr @m88rs2000_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @m88rs2000_setup, ptr @.str.6, ptr @.str.7, ptr @m88rs2000_shutdown, ptr @.str.8, ptr @.str.9, ptr @fe_reset, ptr @fe_trigger, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @switch.table.m88rs2000_set_frontend, ptr @switch.table.m88rs2000_get_fec], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88rs2000_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88rs2000_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88rs2000_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88rs2000_setup to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88rs2000_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88rs2000_shutdown to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88rs2000_set_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fe_reset to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fe_trigger to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88rs2000_set_symbolrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88rs2000_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88rs2000_send_diseqc_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88rs2000_send_diseqc_burst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.m88rs2000_set_frontend to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.m88rs2000_get_fec to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @m88rs2000_attach(ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1072) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %error, label %if.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %config1 = getelementptr inbounds %struct.m88rs2000_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %config, ptr %config1, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %call7.i.i, align 8
  %tuner_frequency = getelementptr inbounds %struct.m88rs2000_state, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %tuner_frequency to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %tuner_frequency, align 4
  %symbol_rate = getelementptr inbounds %struct.m88rs2000_state, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %symbol_rate, align 8
  %fec_inner = getelementptr inbounds %struct.m88rs2000_state, ptr %call7.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %fec_inner to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %fec_inner, align 4
  %frontend = getelementptr inbounds %struct.m88rs2000_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.m88rs2000_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %6 = call ptr @memcpy(ptr %ops, ptr @m88rs2000_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.m88rs2000_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  br label %cleanup

error:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end
  %retval.0 = phi ptr [ null, %error ], [ %frontend, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @m88rs2000_release(ptr nocapture noundef readonly %fe) #0 align 64 {
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
define internal i32 @m88rs2000_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @m88rs2000_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %config = getelementptr inbounds %struct.m88rs2000_state, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config, align 4
  %inittab = getelementptr inbounds %struct.m88rs2000_config, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %inittab to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %inittab, align 4
  %tobool4.not = icmp eq ptr %6, null
  %m88rs2000_setup. = select i1 %tobool4.not, ptr @m88rs2000_setup, ptr %6
  %call9 = tail call fastcc i32 @m88rs2000_tab_set(ptr noundef %1, ptr noundef nonnull %m88rs2000_setup.)
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88rs2000_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %call = tail call fastcc i32 @m88rs2000_tab_set(ptr noundef %1, ptr noundef nonnull @m88rs2000_shutdown)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88rs2000_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i399 = alloca [2 x i8], align 1
  %msg.i400 = alloca %struct.i2c_msg, align 4
  %b0.i378 = alloca [1 x i8], align 1
  %b1.i379 = alloca [1 x i8], align 1
  %msg.i380 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i366 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i475.i = alloca [2 x i8], align 1
  %msg.i476.i = alloca %struct.i2c_msg, align 4
  %buf.i459.i = alloca [2 x i8], align 1
  %msg.i460.i = alloca %struct.i2c_msg, align 4
  %buf.i443.i = alloca [2 x i8], align 1
  %msg.i444.i = alloca %struct.i2c_msg, align 4
  %buf.i427.i = alloca [2 x i8], align 1
  %msg.i428.i = alloca %struct.i2c_msg, align 4
  %buf.i411.i = alloca [2 x i8], align 1
  %msg.i412.i = alloca %struct.i2c_msg, align 4
  %buf.i395.i = alloca [2 x i8], align 1
  %msg.i396.i = alloca %struct.i2c_msg, align 4
  %buf.i378.i = alloca [2 x i8], align 1
  %msg.i379.i = alloca %struct.i2c_msg, align 4
  %buf.i361.i = alloca [2 x i8], align 1
  %msg.i362.i = alloca %struct.i2c_msg, align 4
  %buf.i.i339 = alloca [2 x i8], align 1
  %msg.i.i340 = alloca %struct.i2c_msg, align 4
  %buf.i323 = alloca [2 x i8], align 1
  %msg.i324 = alloca %struct.i2c_msg, align 4
  %buf.i307 = alloca [2 x i8], align 1
  %msg.i308 = alloca %struct.i2c_msg, align 4
  %buf.i291 = alloca [2 x i8], align 1
  %msg.i292 = alloca %struct.i2c_msg, align 4
  %buf.i275 = alloca [2 x i8], align 1
  %msg.i276 = alloca %struct.i2c_msg, align 4
  %buf.i259 = alloca [2 x i8], align 1
  %msg.i260 = alloca %struct.i2c_msg, align 4
  %buf.i29.i = alloca [2 x i8], align 1
  %msg.i30.i = alloca %struct.i2c_msg, align 4
  %buf.i17.i = alloca [2 x i8], align 1
  %msg.i18.i = alloca %struct.i2c_msg, align 4
  %b0.i.i234 = alloca [1 x i8], align 1
  %b1.i.i235 = alloca [1 x i8], align 1
  %msg.i.i236 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i218 = alloca [2 x i8], align 1
  %msg.i219 = alloca %struct.i2c_msg, align 4
  %buf.i202 = alloca [2 x i8], align 1
  %msg.i203 = alloca %struct.i2c_msg, align 4
  %buf.i45.i = alloca [2 x i8], align 1
  %msg.i46.i = alloca %struct.i2c_msg, align 4
  %b0.i.i = alloca [1 x i8], align 1
  %b1.i.i = alloca [1 x i8], align 1
  %msg.i33.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i183 = alloca [2 x i8], align 1
  %msg.i184 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %tuner_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tuner_freq) #7
  %2 = ptrtoint ptr %tuner_freq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tuner_freq, align 4, !annotation !77
  %no_lock_count = getelementptr inbounds %struct.m88rs2000_state, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %no_lock_count to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %no_lock_count, align 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %4 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delivery_system, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp.not = icmp eq i32 %5, 5
  br i1 %cmp.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  %6 = load i32, ptr @m88rs2000_debug, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %5) #11
  br label %cleanup

if.end6:                                          ; preds = %entry
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %7 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_params, align 4
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %if.end6.if.end16_crit_edge, label %if.end13

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.end13:                                         ; preds = %if.end6
  %call12 = tail call i32 %8(ptr noundef %fe) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp14 = icmp slt i32 %call12, 0
  br i1 %cmp14, label %if.end13.cleanup_crit_edge, label %if.end13.if.end16_crit_edge

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end13.if.end16_crit_edge, %if.end6.if.end16_crit_edge
  %get_frequency = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 9
  %9 = ptrtoint ptr %get_frequency to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_frequency, align 4
  %tobool19.not = icmp eq ptr %10, null
  br i1 %tobool19.not, label %if.end16.if.end28_crit_edge, label %if.then20

if.end16.if.end28_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then20:                                        ; preds = %if.end16
  %call24 = call i32 %10(ptr noundef %fe, ptr noundef nonnull %tuner_freq) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then20.cleanup_crit_edge, label %if.end27

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %tuner_freq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tuner_freq, align 4
  %13 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dtv_property_cache, align 4
  %sub = sub i32 %12, %14
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end16.if.end28_crit_edge
  %offset.0 = phi i32 [ %sub, %if.end27 ], [ 0, %if.end16.if.end28_crit_edge ]
  %15 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dtv_property_cache, align 4
  %rem = urem i32 %16, 192857
  %17 = add nsw i32 %rem, -189857
  call void @__sanitizer_cov_trace_const_cmp4(i32 -186856, i32 %17)
  %18 = icmp ult i32 %17, -186856
  br i1 %18, label %if.then36, label %if.else38

if.then36:                                        ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %19 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %20 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -122, ptr %buf.i, align 1
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -62, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %22 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %22, align 4
  %config.i = getelementptr inbounds %struct.m88rs2000_state, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %config.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 4
  %conv.i = zext i8 %27 to i16
  %28 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %flags.i, align 2
  store i16 2, ptr %22, align 4
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %30 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %buf.i, ptr %buf1.i, align 4
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.then36.m88rs2000_writereg.exit_crit_edge, label %do.body.i

if.then36.m88rs2000_writereg.exit_crit_edge:      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit

do.body.i:                                        ; preds = %if.then36
  %33 = load i32, ptr @m88rs2000_debug, align 4
  %and.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.m88rs2000_writereg.exit_crit_edge, label %do.end.i

do.body.i.m88rs2000_writereg.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 134, i32 noundef 194, i32 noundef %call.i) #11
  br label %m88rs2000_writereg.exit

m88rs2000_writereg.exit:                          ; preds = %do.end.i, %do.body.i.m88rs2000_writereg.exit_crit_edge, %if.then36.m88rs2000_writereg.exit_crit_edge
  %cond.i = phi i32 [ -121, %do.body.i.m88rs2000_writereg.exit_crit_edge ], [ -121, %do.end.i ], [ 0, %if.then36.m88rs2000_writereg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  br label %if.end40

if.else38:                                        ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i183) #7
  %34 = getelementptr inbounds [2 x i8], ptr %buf.i183, i32 0, i32 1
  %35 = ptrtoint ptr %buf.i183 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -122, ptr %buf.i183, align 1
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -58, ptr %34, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i184) #7
  %37 = getelementptr inbounds i8, ptr %msg.i184, i32 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %37, align 4
  %config.i185 = getelementptr inbounds %struct.m88rs2000_state, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %config.i185 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %config.i185, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 4
  %conv.i186 = zext i8 %42 to i16
  %43 = ptrtoint ptr %msg.i184 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv.i186, ptr %msg.i184, align 4
  %flags.i187 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i184, i32 0, i32 1
  %44 = ptrtoint ptr %flags.i187 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %flags.i187, align 2
  store i16 2, ptr %37, align 4
  %buf1.i189 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i184, i32 0, i32 3
  %45 = ptrtoint ptr %buf1.i189 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %buf.i183, ptr %buf1.i189, align 4
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %call.i190 = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %msg.i184, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i190)
  %cmp.not.i191 = icmp eq i32 %call.i190, 1
  br i1 %cmp.not.i191, label %if.else38.m88rs2000_writereg.exit198_crit_edge, label %do.body.i194

if.else38.m88rs2000_writereg.exit198_crit_edge:   ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit198

do.body.i194:                                     ; preds = %if.else38
  %48 = load i32, ptr @m88rs2000_debug, align 4
  %and.i192 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i192)
  %tobool.not.i193 = icmp eq i32 %and.i192, 0
  br i1 %tobool.not.i193, label %do.body.i194.m88rs2000_writereg.exit198_crit_edge, label %do.end.i196

do.body.i194.m88rs2000_writereg.exit198_crit_edge: ; preds = %do.body.i194
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit198

do.end.i196:                                      ; preds = %do.body.i194
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i195 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 134, i32 noundef 198, i32 noundef %call.i190) #11
  br label %m88rs2000_writereg.exit198

m88rs2000_writereg.exit198:                       ; preds = %do.end.i196, %do.body.i194.m88rs2000_writereg.exit198_crit_edge, %if.else38.m88rs2000_writereg.exit198_crit_edge
  %cond.i197 = phi i32 [ -121, %do.body.i194.m88rs2000_writereg.exit198_crit_edge ], [ -121, %do.end.i196 ], [ 0, %if.else38.m88rs2000_writereg.exit198_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i184) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i183) #7
  br label %if.end40

if.end40:                                         ; preds = %m88rs2000_writereg.exit198, %m88rs2000_writereg.exit
  %ret.1 = phi i32 [ %cond.i, %m88rs2000_writereg.exit ], [ %cond.i197, %m88rs2000_writereg.exit198 ]
  %49 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %demodulator_priv, align 4
  %call.i199 = call fastcc i32 @m88rs2000_get_mclk(ptr noundef %fe) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199)
  %tobool.not.i200 = icmp eq i32 %call.i199, 0
  br i1 %tobool.not.i200, label %if.end40.m88rs2000_set_carrieroffset.exit_crit_edge, label %if.end.i

if.end40.m88rs2000_set_carrieroffset.exit_crit_edge: ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_set_carrieroffset.exit

if.end.i:                                         ; preds = %if.end40
  %sext = shl i32 %offset.0, 16
  %mul.i = ashr exact i32 %sext, 4
  %div.i = sdiv i32 %call.i199, 2
  %add.i = add nsw i32 %div.i, %mul.i
  %div1.i = sdiv i32 %add.i, %call.i199
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div1.i)
  %cmp.i = icmp slt i32 %div1.i, 0
  %add4.i = add nsw i32 %div1.i, 4096
  %spec.select.i = select i1 %cmp.i, i32 %add4.i, i32 %div1.i
  %51 = lshr i32 %spec.select.i, 4
  %conv6.i = trunc i32 %51 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #7
  %52 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -100, ptr %buf.i.i, align 1
  %54 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv6.i, ptr %52, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %55 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 196607, ptr %55, align 4
  %config.i.i = getelementptr inbounds %struct.m88rs2000_state, ptr %50, i32 0, i32 1
  %57 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %config.i.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %58, align 4
  %conv.i.i = zext i8 %60 to i16
  %61 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 0, ptr %flags.i.i, align 2
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %63 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %64 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %50, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %65, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %if.end.i.m88rs2000_writereg.exit.i_crit_edge, label %do.body.i.i

if.end.i.m88rs2000_writereg.exit.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit.i

do.body.i.i:                                      ; preds = %if.end.i
  %66 = load i32, ptr @m88rs2000_debug, align 4
  %and.i.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.m88rs2000_writereg.exit.i_crit_edge, label %do.end.i.i

do.body.i.i.m88rs2000_writereg.exit.i_crit_edge:  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i.i = and i32 %51, 255
  %call7.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 156, i32 noundef %conv6.i.i, i32 noundef %call.i.i) #11
  br label %m88rs2000_writereg.exit.i

m88rs2000_writereg.exit.i:                        ; preds = %do.end.i.i, %do.body.i.i.m88rs2000_writereg.exit.i_crit_edge, %if.end.i.m88rs2000_writereg.exit.i_crit_edge
  %cond.i.i = phi i32 [ -121, %do.body.i.i.m88rs2000_writereg.exit.i_crit_edge ], [ -121, %do.end.i.i ], [ 0, %if.end.i.m88rs2000_writereg.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i.i) #7
  %67 = ptrtoint ptr %b0.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -99, ptr %b0.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i.i) #7
  %68 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %b1.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i33.i) #7
  %69 = getelementptr inbounds i8, ptr %msg.i33.i, i32 4
  %70 = call ptr @memset(ptr %69, i32 255, i32 16)
  %71 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %config.i.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %72, align 4
  %conv.i35.i = zext i8 %74 to i16
  %75 = ptrtoint ptr %msg.i33.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv.i35.i, ptr %msg.i33.i, align 4
  %flags.i36.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33.i, i32 0, i32 1
  %76 = ptrtoint ptr %flags.i36.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %flags.i36.i, align 2
  %77 = ptrtoint ptr %69 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 1, ptr %69, align 4
  %buf.i38.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33.i, i32 0, i32 3
  %78 = ptrtoint ptr %buf.i38.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %b0.i.i, ptr %buf.i38.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33.i, i32 1
  %79 = load i8, ptr %72, align 4
  %conv5.i.i = zext i8 %79 to i16
  %80 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv5.i.i, ptr %arrayinit.element.i.i, align 4
  %flags6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33.i, i32 1, i32 1
  %81 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 1, ptr %flags6.i.i, align 2
  %len7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33.i, i32 1, i32 2
  %82 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 1, ptr %len7.i.i, align 4
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33.i, i32 1, i32 3
  %83 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %b1.i.i, ptr %buf8.i.i, align 4
  %84 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %50, align 4
  %call.i39.i = call i32 @i2c_transfer(ptr noundef %85, ptr noundef nonnull %msg.i33.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i39.i)
  %cmp.not.i40.i = icmp eq i32 %call.i39.i, 2
  br i1 %cmp.not.i40.i, label %m88rs2000_writereg.exit.i.m88rs2000_readreg.exit.i_crit_edge, label %do.body.i43.i

m88rs2000_writereg.exit.i.m88rs2000_readreg.exit.i_crit_edge: ; preds = %m88rs2000_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit.i

do.body.i43.i:                                    ; preds = %m88rs2000_writereg.exit.i
  %86 = load i32, ptr @m88rs2000_debug, align 4
  %and.i41.i = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i41.i)
  %tobool.not.i42.i = icmp eq i32 %and.i41.i, 0
  br i1 %tobool.not.i42.i, label %do.body.i43.i.m88rs2000_readreg.exit.i_crit_edge, label %do.end.i44.i

do.body.i43.i.m88rs2000_readreg.exit.i_crit_edge: ; preds = %do.body.i43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit.i

do.end.i44.i:                                     ; preds = %do.body.i43.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 157, i32 noundef %call.i39.i) #11
  br label %m88rs2000_readreg.exit.i

m88rs2000_readreg.exit.i:                         ; preds = %do.end.i44.i, %do.body.i43.i.m88rs2000_readreg.exit.i_crit_edge, %m88rs2000_writereg.exit.i.m88rs2000_readreg.exit.i_crit_edge
  %87 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %b1.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i33.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i.i) #7
  %89 = and i8 %88, 15
  %tmp.0.tr.i = trunc i32 %spec.select.i to i8
  %90 = shl i8 %tmp.0.tr.i, 4
  %conv15.i = or i8 %89, %90
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i45.i) #7
  %91 = getelementptr inbounds [2 x i8], ptr %buf.i45.i, i32 0, i32 1
  %92 = ptrtoint ptr %buf.i45.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -99, ptr %buf.i45.i, align 1
  %93 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv15.i, ptr %91, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i46.i) #7
  %94 = getelementptr inbounds i8, ptr %msg.i46.i, i32 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 196607, ptr %94, align 4
  %96 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %config.i.i, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %97, align 4
  %conv.i48.i = zext i8 %99 to i16
  %100 = ptrtoint ptr %msg.i46.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %conv.i48.i, ptr %msg.i46.i, align 4
  %flags.i49.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i46.i, i32 0, i32 1
  %101 = ptrtoint ptr %flags.i49.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 0, ptr %flags.i49.i, align 2
  %buf1.i51.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i46.i, i32 0, i32 3
  %102 = ptrtoint ptr %buf1.i51.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %buf.i45.i, ptr %buf1.i51.i, align 4
  %103 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %50, align 4
  %call.i52.i = call i32 @i2c_transfer(ptr noundef %104, ptr noundef nonnull %msg.i46.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i52.i)
  %cmp.not.i53.i = icmp eq i32 %call.i52.i, 1
  br i1 %cmp.not.i53.i, label %m88rs2000_readreg.exit.i.m88rs2000_writereg.exit61.i_crit_edge, label %do.body.i56.i

m88rs2000_readreg.exit.i.m88rs2000_writereg.exit61.i_crit_edge: ; preds = %m88rs2000_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit61.i

do.body.i56.i:                                    ; preds = %m88rs2000_readreg.exit.i
  %105 = load i32, ptr @m88rs2000_debug, align 4
  %and.i54.i = and i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i54.i)
  %tobool.not.i55.i = icmp eq i32 %and.i54.i, 0
  br i1 %tobool.not.i55.i, label %do.body.i56.i.m88rs2000_writereg.exit61.i_crit_edge, label %do.end.i59.i

do.body.i56.i.m88rs2000_writereg.exit61.i_crit_edge: ; preds = %do.body.i56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit61.i

do.end.i59.i:                                     ; preds = %do.body.i56.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i57.i = zext i8 %conv15.i to i32
  %call7.i58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 157, i32 noundef %conv6.i57.i, i32 noundef %call.i52.i) #11
  br label %m88rs2000_writereg.exit61.i

m88rs2000_writereg.exit61.i:                      ; preds = %do.end.i59.i, %do.body.i56.i.m88rs2000_writereg.exit61.i_crit_edge, %m88rs2000_readreg.exit.i.m88rs2000_writereg.exit61.i_crit_edge
  %cond.i60.i = phi i32 [ -121, %do.body.i56.i.m88rs2000_writereg.exit61.i_crit_edge ], [ -121, %do.end.i59.i ], [ 0, %m88rs2000_readreg.exit.i.m88rs2000_writereg.exit61.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i46.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i45.i) #7
  %or17.i = or i32 %cond.i60.i, %cond.i.i
  br label %m88rs2000_set_carrieroffset.exit

m88rs2000_set_carrieroffset.exit:                 ; preds = %m88rs2000_writereg.exit61.i, %if.end40.m88rs2000_set_carrieroffset.exit_crit_edge
  %retval.0.i = phi i32 [ %or17.i, %m88rs2000_writereg.exit61.i ], [ -22, %if.end40.m88rs2000_set_carrieroffset.exit_crit_edge ]
  %or = or i32 %retval.0.i, %ret.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp42 = icmp slt i32 %or, 0
  br i1 %cmp42, label %m88rs2000_set_carrieroffset.exit.cleanup_crit_edge, label %if.end45

m88rs2000_set_carrieroffset.exit.cleanup_crit_edge: ; preds = %m88rs2000_set_carrieroffset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end45:                                         ; preds = %m88rs2000_set_carrieroffset.exit
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %106 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %symbol_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 27500000, i32 %107)
  %cmp46 = icmp ugt i32 %107, 27500000
  br i1 %cmp46, label %if.then48, label %if.else50

if.then48:                                        ; preds = %if.end45
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i202) #7
  %108 = getelementptr inbounds [2 x i8], ptr %buf.i202, i32 0, i32 1
  %109 = ptrtoint ptr %buf.i202 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 -15, ptr %buf.i202, align 1
  %110 = ptrtoint ptr %108 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 -92, ptr %108, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i203) #7
  %111 = getelementptr inbounds i8, ptr %msg.i203, i32 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 -1, ptr %111, align 4
  %config.i204 = getelementptr inbounds %struct.m88rs2000_state, ptr %1, i32 0, i32 1
  %113 = ptrtoint ptr %config.i204 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %config.i204, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %114, align 4
  %conv.i205 = zext i8 %116 to i16
  %117 = ptrtoint ptr %msg.i203 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %conv.i205, ptr %msg.i203, align 4
  %flags.i206 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i203, i32 0, i32 1
  %118 = ptrtoint ptr %flags.i206 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 0, ptr %flags.i206, align 2
  store i16 2, ptr %111, align 4
  %buf1.i208 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i203, i32 0, i32 3
  %119 = ptrtoint ptr %buf1.i208 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %buf.i202, ptr %buf1.i208, align 4
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %1, align 4
  %call.i209 = call i32 @i2c_transfer(ptr noundef %121, ptr noundef nonnull %msg.i203, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i209)
  %cmp.not.i210 = icmp eq i32 %call.i209, 1
  br i1 %cmp.not.i210, label %if.then48.m88rs2000_writereg.exit217_crit_edge, label %do.body.i213

if.then48.m88rs2000_writereg.exit217_crit_edge:   ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit217

do.body.i213:                                     ; preds = %if.then48
  %122 = load i32, ptr @m88rs2000_debug, align 4
  %and.i211 = and i32 %122, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i211)
  %tobool.not.i212 = icmp eq i32 %and.i211, 0
  br i1 %tobool.not.i212, label %do.body.i213.m88rs2000_writereg.exit217_crit_edge, label %do.end.i215

do.body.i213.m88rs2000_writereg.exit217_crit_edge: ; preds = %do.body.i213
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit217

do.end.i215:                                      ; preds = %do.body.i213
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i214 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 241, i32 noundef 164, i32 noundef %call.i209) #11
  br label %m88rs2000_writereg.exit217

m88rs2000_writereg.exit217:                       ; preds = %do.end.i215, %do.body.i213.m88rs2000_writereg.exit217_crit_edge, %if.then48.m88rs2000_writereg.exit217_crit_edge
  %cond.i216 = phi i32 [ -121, %do.body.i213.m88rs2000_writereg.exit217_crit_edge ], [ -121, %do.end.i215 ], [ 0, %if.then48.m88rs2000_writereg.exit217_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i203) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i202) #7
  br label %if.end52

if.else50:                                        ; preds = %if.end45
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i218) #7
  %123 = getelementptr inbounds [2 x i8], ptr %buf.i218, i32 0, i32 1
  %124 = ptrtoint ptr %buf.i218 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 -15, ptr %buf.i218, align 1
  %125 = ptrtoint ptr %123 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 -65, ptr %123, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i219) #7
  %126 = getelementptr inbounds i8, ptr %msg.i219, i32 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 -1, ptr %126, align 4
  %config.i220 = getelementptr inbounds %struct.m88rs2000_state, ptr %1, i32 0, i32 1
  %128 = ptrtoint ptr %config.i220 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %config.i220, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %129, align 4
  %conv.i221 = zext i8 %131 to i16
  %132 = ptrtoint ptr %msg.i219 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %conv.i221, ptr %msg.i219, align 4
  %flags.i222 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i219, i32 0, i32 1
  %133 = ptrtoint ptr %flags.i222 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 0, ptr %flags.i222, align 2
  store i16 2, ptr %126, align 4
  %buf1.i224 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i219, i32 0, i32 3
  %134 = ptrtoint ptr %buf1.i224 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %buf.i218, ptr %buf1.i224, align 4
  %135 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %1, align 4
  %call.i225 = call i32 @i2c_transfer(ptr noundef %136, ptr noundef nonnull %msg.i219, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i225)
  %cmp.not.i226 = icmp eq i32 %call.i225, 1
  br i1 %cmp.not.i226, label %if.else50.m88rs2000_writereg.exit233_crit_edge, label %do.body.i229

if.else50.m88rs2000_writereg.exit233_crit_edge:   ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit233

do.body.i229:                                     ; preds = %if.else50
  %137 = load i32, ptr @m88rs2000_debug, align 4
  %and.i227 = and i32 %137, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i227)
  %tobool.not.i228 = icmp eq i32 %and.i227, 0
  br i1 %tobool.not.i228, label %do.body.i229.m88rs2000_writereg.exit233_crit_edge, label %do.end.i231

do.body.i229.m88rs2000_writereg.exit233_crit_edge: ; preds = %do.body.i229
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit233

do.end.i231:                                      ; preds = %do.body.i229
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i230 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 241, i32 noundef 191, i32 noundef %call.i225) #11
  br label %m88rs2000_writereg.exit233

m88rs2000_writereg.exit233:                       ; preds = %do.end.i231, %do.body.i229.m88rs2000_writereg.exit233_crit_edge, %if.else50.m88rs2000_writereg.exit233_crit_edge
  %cond.i232 = phi i32 [ -121, %do.body.i229.m88rs2000_writereg.exit233_crit_edge ], [ -121, %do.end.i231 ], [ 0, %if.else50.m88rs2000_writereg.exit233_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i219) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i218) #7
  br label %if.end52

if.end52:                                         ; preds = %m88rs2000_writereg.exit233, %m88rs2000_writereg.exit217
  %ret.2 = phi i32 [ %cond.i216, %m88rs2000_writereg.exit217 ], [ %cond.i232, %m88rs2000_writereg.exit233 ]
  %call53 = call fastcc i32 @m88rs2000_tab_set(ptr noundef %1, ptr noundef nonnull @fe_reset)
  %or54 = or i32 %call53, %ret.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or54)
  %cmp55 = icmp slt i32 %or54, 0
  br i1 %cmp55, label %if.end52.cleanup_crit_edge, label %if.end58

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end58:                                         ; preds = %if.end52
  %fec_inner = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 5
  %138 = ptrtoint ptr %fec_inner to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %fec_inner, align 4
  %switch.tableidx = add i32 %139, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %140 = icmp ult i32 %switch.tableidx, 7
  br i1 %140, label %switch.lookup, label %if.end58.sw.epilog.i_crit_edge

if.end58.sw.epilog.i_crit_edge:                   ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [7 x i8], ptr @switch.table.m88rs2000_set_frontend, i32 0, i32 %switch.tableidx
  %141 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %141)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %if.end58.sw.epilog.i_crit_edge
  %fec_set.0.i = phi i8 [ %switch.load, %switch.lookup ], [ 0, %if.end58.sw.epilog.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i.i234) #7
  %142 = ptrtoint ptr %b0.i.i234 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 112, ptr %b0.i.i234, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i.i235) #7
  %143 = ptrtoint ptr %b1.i.i235 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 0, ptr %b1.i.i235, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i236) #7
  %144 = getelementptr inbounds i8, ptr %msg.i.i236, i32 4
  %145 = call ptr @memset(ptr %144, i32 255, i32 16)
  %config.i.i237 = getelementptr inbounds %struct.m88rs2000_state, ptr %1, i32 0, i32 1
  %146 = ptrtoint ptr %config.i.i237 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %config.i.i237, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %147, align 4
  %conv.i.i238 = zext i8 %149 to i16
  %150 = ptrtoint ptr %msg.i.i236 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %conv.i.i238, ptr %msg.i.i236, align 4
  %flags.i.i239 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i236, i32 0, i32 1
  %151 = ptrtoint ptr %flags.i.i239 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 0, ptr %flags.i.i239, align 2
  %152 = ptrtoint ptr %144 to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 1, ptr %144, align 4
  %buf.i.i240 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i236, i32 0, i32 3
  %153 = ptrtoint ptr %buf.i.i240 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %b0.i.i234, ptr %buf.i.i240, align 4
  %arrayinit.element.i.i241 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i236, i32 1
  %154 = load i8, ptr %147, align 4
  %conv5.i.i242 = zext i8 %154 to i16
  %155 = ptrtoint ptr %arrayinit.element.i.i241 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %conv5.i.i242, ptr %arrayinit.element.i.i241, align 4
  %flags6.i.i243 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i236, i32 1, i32 1
  %156 = ptrtoint ptr %flags6.i.i243 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 1, ptr %flags6.i.i243, align 2
  %len7.i.i244 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i236, i32 1, i32 2
  %157 = ptrtoint ptr %len7.i.i244 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 1, ptr %len7.i.i244, align 4
  %buf8.i.i245 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i236, i32 1, i32 3
  %158 = ptrtoint ptr %buf8.i.i245 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %b1.i.i235, ptr %buf8.i.i245, align 4
  %159 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %1, align 4
  %call.i.i246 = call i32 @i2c_transfer(ptr noundef %160, ptr noundef nonnull %msg.i.i236, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i246)
  %cmp.not.i.i247 = icmp eq i32 %call.i.i246, 2
  br i1 %cmp.not.i.i247, label %sw.epilog.i.m88rs2000_readreg.exit.i254_crit_edge, label %do.body.i.i250

sw.epilog.i.m88rs2000_readreg.exit.i254_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit.i254

do.body.i.i250:                                   ; preds = %sw.epilog.i
  %161 = load i32, ptr @m88rs2000_debug, align 4
  %and.i.i248 = and i32 %161, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i248)
  %tobool.not.i.i249 = icmp eq i32 %and.i.i248, 0
  br i1 %tobool.not.i.i249, label %do.body.i.i250.m88rs2000_readreg.exit.i254_crit_edge, label %do.end.i.i252

do.body.i.i250.m88rs2000_readreg.exit.i254_crit_edge: ; preds = %do.body.i.i250
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit.i254

do.end.i.i252:                                    ; preds = %do.body.i.i250
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i.i251 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 112, i32 noundef %call.i.i246) #11
  br label %m88rs2000_readreg.exit.i254

m88rs2000_readreg.exit.i254:                      ; preds = %do.end.i.i252, %do.body.i.i250.m88rs2000_readreg.exit.i254_crit_edge, %sw.epilog.i.m88rs2000_readreg.exit.i254_crit_edge
  %162 = ptrtoint ptr %b1.i.i235 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %b1.i.i235, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i236) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i.i235) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i.i234) #7
  %164 = and i8 %163, 7
  %or.i = or i8 %164, %fec_set.0.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i17.i) #7
  %165 = getelementptr inbounds [2 x i8], ptr %buf.i17.i, i32 0, i32 1
  %166 = ptrtoint ptr %buf.i17.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 112, ptr %buf.i17.i, align 1
  %167 = ptrtoint ptr %165 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %or.i, ptr %165, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i18.i) #7
  %168 = getelementptr inbounds i8, ptr %msg.i18.i, i32 4
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 196607, ptr %168, align 4
  %170 = ptrtoint ptr %config.i.i237 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %config.i.i237, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %171, align 4
  %conv.i20.i = zext i8 %173 to i16
  %174 = ptrtoint ptr %msg.i18.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %conv.i20.i, ptr %msg.i18.i, align 4
  %flags.i21.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18.i, i32 0, i32 1
  %175 = ptrtoint ptr %flags.i21.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 0, ptr %flags.i21.i, align 2
  %buf1.i.i253 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18.i, i32 0, i32 3
  %176 = ptrtoint ptr %buf1.i.i253 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %buf.i17.i, ptr %buf1.i.i253, align 4
  %177 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %1, align 4
  %call.i23.i = call i32 @i2c_transfer(ptr noundef %178, ptr noundef nonnull %msg.i18.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i23.i)
  %cmp.not.i24.i = icmp eq i32 %call.i23.i, 1
  br i1 %cmp.not.i24.i, label %m88rs2000_readreg.exit.i254.m88rs2000_writereg.exit.i258_crit_edge, label %do.body.i27.i

m88rs2000_readreg.exit.i254.m88rs2000_writereg.exit.i258_crit_edge: ; preds = %m88rs2000_readreg.exit.i254
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit.i258

do.body.i27.i:                                    ; preds = %m88rs2000_readreg.exit.i254
  %179 = load i32, ptr @m88rs2000_debug, align 4
  %and.i25.i = and i32 %179, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25.i)
  %tobool.not.i26.i = icmp eq i32 %and.i25.i, 0
  br i1 %tobool.not.i26.i, label %do.body.i27.i.m88rs2000_writereg.exit.i258_crit_edge, label %do.end.i28.i

do.body.i27.i.m88rs2000_writereg.exit.i258_crit_edge: ; preds = %do.body.i27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit.i258

do.end.i28.i:                                     ; preds = %do.body.i27.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i.i255 = zext i8 %or.i to i32
  %call7.i.i256 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 112, i32 noundef %conv6.i.i255, i32 noundef %call.i23.i) #11
  br label %m88rs2000_writereg.exit.i258

m88rs2000_writereg.exit.i258:                     ; preds = %do.end.i28.i, %do.body.i27.i.m88rs2000_writereg.exit.i258_crit_edge, %m88rs2000_readreg.exit.i254.m88rs2000_writereg.exit.i258_crit_edge
  %cond.i.i257 = phi i32 [ -121, %do.body.i27.i.m88rs2000_writereg.exit.i258_crit_edge ], [ -121, %do.end.i28.i ], [ 0, %m88rs2000_readreg.exit.i254.m88rs2000_writereg.exit.i258_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i18.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i17.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i29.i) #7
  %180 = getelementptr inbounds [2 x i8], ptr %buf.i29.i, i32 0, i32 1
  %181 = ptrtoint ptr %buf.i29.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 118, ptr %buf.i29.i, align 1
  %182 = ptrtoint ptr %180 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 8, ptr %180, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i30.i) #7
  %183 = getelementptr inbounds i8, ptr %msg.i30.i, i32 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 196607, ptr %183, align 4
  %185 = ptrtoint ptr %config.i.i237 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %config.i.i237, align 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %186, align 4
  %conv.i32.i = zext i8 %188 to i16
  %189 = ptrtoint ptr %msg.i30.i to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 %conv.i32.i, ptr %msg.i30.i, align 4
  %flags.i33.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i30.i, i32 0, i32 1
  %190 = ptrtoint ptr %flags.i33.i to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 0, ptr %flags.i33.i, align 2
  %buf1.i35.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i30.i, i32 0, i32 3
  %191 = ptrtoint ptr %buf1.i35.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %buf.i29.i, ptr %buf1.i35.i, align 4
  %192 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %1, align 4
  %call.i36.i = call i32 @i2c_transfer(ptr noundef %193, ptr noundef nonnull %msg.i30.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i36.i)
  %cmp.not.i37.i = icmp eq i32 %call.i36.i, 1
  br i1 %cmp.not.i37.i, label %m88rs2000_writereg.exit.i258.m88rs2000_set_fec.exit_crit_edge, label %do.body.i40.i

m88rs2000_writereg.exit.i258.m88rs2000_set_fec.exit_crit_edge: ; preds = %m88rs2000_writereg.exit.i258
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_set_fec.exit

do.body.i40.i:                                    ; preds = %m88rs2000_writereg.exit.i258
  %194 = load i32, ptr @m88rs2000_debug, align 4
  %and.i38.i = and i32 %194, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i38.i)
  %tobool.not.i39.i = icmp eq i32 %and.i38.i, 0
  br i1 %tobool.not.i39.i, label %do.body.i40.i.m88rs2000_set_fec.exit_crit_edge, label %do.end.i42.i

do.body.i40.i.m88rs2000_set_fec.exit_crit_edge:   ; preds = %do.body.i40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_set_fec.exit

do.end.i42.i:                                     ; preds = %do.body.i40.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 118, i32 noundef 8, i32 noundef %call.i36.i) #11
  br label %m88rs2000_set_fec.exit

m88rs2000_set_fec.exit:                           ; preds = %do.end.i42.i, %do.body.i40.i.m88rs2000_set_fec.exit_crit_edge, %m88rs2000_writereg.exit.i258.m88rs2000_set_fec.exit_crit_edge
  %cond.i43.i = phi i32 [ -121, %do.body.i40.i.m88rs2000_set_fec.exit_crit_edge ], [ -121, %do.end.i42.i ], [ 0, %m88rs2000_writereg.exit.i258.m88rs2000_set_fec.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i30.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i29.i) #7
  %or12.i = or i32 %cond.i43.i, %cond.i.i257
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i259) #7
  %195 = getelementptr inbounds [2 x i8], ptr %buf.i259, i32 0, i32 1
  %196 = ptrtoint ptr %buf.i259 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 -123, ptr %buf.i259, align 1
  %197 = ptrtoint ptr %195 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 1, ptr %195, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i260) #7
  %198 = getelementptr inbounds i8, ptr %msg.i260, i32 4
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 -1, ptr %198, align 4
  %200 = ptrtoint ptr %config.i.i237 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %config.i.i237, align 4
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %201, align 4
  %conv.i262 = zext i8 %203 to i16
  %204 = ptrtoint ptr %msg.i260 to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 %conv.i262, ptr %msg.i260, align 4
  %flags.i263 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i260, i32 0, i32 1
  %205 = ptrtoint ptr %flags.i263 to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 0, ptr %flags.i263, align 2
  store i16 2, ptr %198, align 4
  %buf1.i265 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i260, i32 0, i32 3
  %206 = ptrtoint ptr %buf1.i265 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %buf.i259, ptr %buf1.i265, align 4
  %207 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %1, align 4
  %call.i266 = call i32 @i2c_transfer(ptr noundef %208, ptr noundef nonnull %msg.i260, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i266)
  %cmp.not.i267 = icmp eq i32 %call.i266, 1
  br i1 %cmp.not.i267, label %m88rs2000_set_fec.exit.m88rs2000_writereg.exit274_crit_edge, label %do.body.i270

m88rs2000_set_fec.exit.m88rs2000_writereg.exit274_crit_edge: ; preds = %m88rs2000_set_fec.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit274

do.body.i270:                                     ; preds = %m88rs2000_set_fec.exit
  %209 = load i32, ptr @m88rs2000_debug, align 4
  %and.i268 = and i32 %209, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i268)
  %tobool.not.i269 = icmp eq i32 %and.i268, 0
  br i1 %tobool.not.i269, label %do.body.i270.m88rs2000_writereg.exit274_crit_edge, label %do.end.i272

do.body.i270.m88rs2000_writereg.exit274_crit_edge: ; preds = %do.body.i270
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit274

do.end.i272:                                      ; preds = %do.body.i270
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i271 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 133, i32 noundef 1, i32 noundef %call.i266) #11
  br label %m88rs2000_writereg.exit274

m88rs2000_writereg.exit274:                       ; preds = %do.end.i272, %do.body.i270.m88rs2000_writereg.exit274_crit_edge, %m88rs2000_set_fec.exit.m88rs2000_writereg.exit274_crit_edge
  %cond.i273 = phi i32 [ -121, %do.body.i270.m88rs2000_writereg.exit274_crit_edge ], [ -121, %do.end.i272 ], [ 0, %m88rs2000_set_fec.exit.m88rs2000_writereg.exit274_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i260) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i259) #7
  %or61 = or i32 %or12.i, %cond.i273
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i275) #7
  %210 = getelementptr inbounds [2 x i8], ptr %buf.i275, i32 0, i32 1
  %211 = ptrtoint ptr %buf.i275 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 -118, ptr %buf.i275, align 1
  %212 = ptrtoint ptr %210 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 -65, ptr %210, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i276) #7
  %213 = getelementptr inbounds i8, ptr %msg.i276, i32 4
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 -1, ptr %213, align 4
  %215 = ptrtoint ptr %config.i.i237 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %config.i.i237, align 4
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %216, align 4
  %conv.i278 = zext i8 %218 to i16
  %219 = ptrtoint ptr %msg.i276 to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 %conv.i278, ptr %msg.i276, align 4
  %flags.i279 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i276, i32 0, i32 1
  %220 = ptrtoint ptr %flags.i279 to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 0, ptr %flags.i279, align 2
  store i16 2, ptr %213, align 4
  %buf1.i281 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i276, i32 0, i32 3
  %221 = ptrtoint ptr %buf1.i281 to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %buf.i275, ptr %buf1.i281, align 4
  %222 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %1, align 4
  %call.i282 = call i32 @i2c_transfer(ptr noundef %223, ptr noundef nonnull %msg.i276, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i282)
  %cmp.not.i283 = icmp eq i32 %call.i282, 1
  br i1 %cmp.not.i283, label %m88rs2000_writereg.exit274.m88rs2000_writereg.exit290_crit_edge, label %do.body.i286

m88rs2000_writereg.exit274.m88rs2000_writereg.exit290_crit_edge: ; preds = %m88rs2000_writereg.exit274
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit290

do.body.i286:                                     ; preds = %m88rs2000_writereg.exit274
  %224 = load i32, ptr @m88rs2000_debug, align 4
  %and.i284 = and i32 %224, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i284)
  %tobool.not.i285 = icmp eq i32 %and.i284, 0
  br i1 %tobool.not.i285, label %do.body.i286.m88rs2000_writereg.exit290_crit_edge, label %do.end.i288

do.body.i286.m88rs2000_writereg.exit290_crit_edge: ; preds = %do.body.i286
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit290

do.end.i288:                                      ; preds = %do.body.i286
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i287 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 138, i32 noundef 191, i32 noundef %call.i282) #11
  br label %m88rs2000_writereg.exit290

m88rs2000_writereg.exit290:                       ; preds = %do.end.i288, %do.body.i286.m88rs2000_writereg.exit290_crit_edge, %m88rs2000_writereg.exit274.m88rs2000_writereg.exit290_crit_edge
  %cond.i289 = phi i32 [ -121, %do.body.i286.m88rs2000_writereg.exit290_crit_edge ], [ -121, %do.end.i288 ], [ 0, %m88rs2000_writereg.exit274.m88rs2000_writereg.exit290_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i276) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i275) #7
  %or63 = or i32 %or61, %cond.i289
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i291) #7
  %225 = getelementptr inbounds [2 x i8], ptr %buf.i291, i32 0, i32 1
  %226 = ptrtoint ptr %buf.i291 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 -115, ptr %buf.i291, align 1
  %227 = ptrtoint ptr %225 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 30, ptr %225, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i292) #7
  %228 = getelementptr inbounds i8, ptr %msg.i292, i32 4
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 -1, ptr %228, align 4
  %230 = ptrtoint ptr %config.i.i237 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %config.i.i237, align 4
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %231, align 4
  %conv.i294 = zext i8 %233 to i16
  %234 = ptrtoint ptr %msg.i292 to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 %conv.i294, ptr %msg.i292, align 4
  %flags.i295 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i292, i32 0, i32 1
  %235 = ptrtoint ptr %flags.i295 to i32
  call void @__asan_store2_noabort(i32 %235)
  store i16 0, ptr %flags.i295, align 2
  store i16 2, ptr %228, align 4
  %buf1.i297 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i292, i32 0, i32 3
  %236 = ptrtoint ptr %buf1.i297 to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr %buf.i291, ptr %buf1.i297, align 4
  %237 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %1, align 4
  %call.i298 = call i32 @i2c_transfer(ptr noundef %238, ptr noundef nonnull %msg.i292, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i298)
  %cmp.not.i299 = icmp eq i32 %call.i298, 1
  br i1 %cmp.not.i299, label %m88rs2000_writereg.exit290.m88rs2000_writereg.exit306_crit_edge, label %do.body.i302

m88rs2000_writereg.exit290.m88rs2000_writereg.exit306_crit_edge: ; preds = %m88rs2000_writereg.exit290
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit306

do.body.i302:                                     ; preds = %m88rs2000_writereg.exit290
  %239 = load i32, ptr @m88rs2000_debug, align 4
  %and.i300 = and i32 %239, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i300)
  %tobool.not.i301 = icmp eq i32 %and.i300, 0
  br i1 %tobool.not.i301, label %do.body.i302.m88rs2000_writereg.exit306_crit_edge, label %do.end.i304

do.body.i302.m88rs2000_writereg.exit306_crit_edge: ; preds = %do.body.i302
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit306

do.end.i304:                                      ; preds = %do.body.i302
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i303 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 141, i32 noundef 30, i32 noundef %call.i298) #11
  br label %m88rs2000_writereg.exit306

m88rs2000_writereg.exit306:                       ; preds = %do.end.i304, %do.body.i302.m88rs2000_writereg.exit306_crit_edge, %m88rs2000_writereg.exit290.m88rs2000_writereg.exit306_crit_edge
  %cond.i305 = phi i32 [ -121, %do.body.i302.m88rs2000_writereg.exit306_crit_edge ], [ -121, %do.end.i304 ], [ 0, %m88rs2000_writereg.exit290.m88rs2000_writereg.exit306_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i292) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i291) #7
  %or65 = or i32 %or63, %cond.i305
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i307) #7
  %240 = getelementptr inbounds [2 x i8], ptr %buf.i307, i32 0, i32 1
  %241 = ptrtoint ptr %buf.i307 to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 -112, ptr %buf.i307, align 1
  %242 = ptrtoint ptr %240 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 -15, ptr %240, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i308) #7
  %243 = getelementptr inbounds i8, ptr %msg.i308, i32 4
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 -1, ptr %243, align 4
  %245 = ptrtoint ptr %config.i.i237 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %config.i.i237, align 4
  %247 = ptrtoint ptr %246 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %246, align 4
  %conv.i310 = zext i8 %248 to i16
  %249 = ptrtoint ptr %msg.i308 to i32
  call void @__asan_store2_noabort(i32 %249)
  store i16 %conv.i310, ptr %msg.i308, align 4
  %flags.i311 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i308, i32 0, i32 1
  %250 = ptrtoint ptr %flags.i311 to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 0, ptr %flags.i311, align 2
  store i16 2, ptr %243, align 4
  %buf1.i313 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i308, i32 0, i32 3
  %251 = ptrtoint ptr %buf1.i313 to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %buf.i307, ptr %buf1.i313, align 4
  %252 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %1, align 4
  %call.i314 = call i32 @i2c_transfer(ptr noundef %253, ptr noundef nonnull %msg.i308, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i314)
  %cmp.not.i315 = icmp eq i32 %call.i314, 1
  br i1 %cmp.not.i315, label %m88rs2000_writereg.exit306.m88rs2000_writereg.exit322_crit_edge, label %do.body.i318

m88rs2000_writereg.exit306.m88rs2000_writereg.exit322_crit_edge: ; preds = %m88rs2000_writereg.exit306
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit322

do.body.i318:                                     ; preds = %m88rs2000_writereg.exit306
  %254 = load i32, ptr @m88rs2000_debug, align 4
  %and.i316 = and i32 %254, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i316)
  %tobool.not.i317 = icmp eq i32 %and.i316, 0
  br i1 %tobool.not.i317, label %do.body.i318.m88rs2000_writereg.exit322_crit_edge, label %do.end.i320

do.body.i318.m88rs2000_writereg.exit322_crit_edge: ; preds = %do.body.i318
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit322

do.end.i320:                                      ; preds = %do.body.i318
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i319 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 144, i32 noundef 241, i32 noundef %call.i314) #11
  br label %m88rs2000_writereg.exit322

m88rs2000_writereg.exit322:                       ; preds = %do.end.i320, %do.body.i318.m88rs2000_writereg.exit322_crit_edge, %m88rs2000_writereg.exit306.m88rs2000_writereg.exit322_crit_edge
  %cond.i321 = phi i32 [ -121, %do.body.i318.m88rs2000_writereg.exit322_crit_edge ], [ -121, %do.end.i320 ], [ 0, %m88rs2000_writereg.exit306.m88rs2000_writereg.exit322_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i308) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i307) #7
  %or67 = or i32 %or65, %cond.i321
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i323) #7
  %255 = getelementptr inbounds [2 x i8], ptr %buf.i323, i32 0, i32 1
  %256 = ptrtoint ptr %buf.i323 to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 -111, ptr %buf.i323, align 1
  %257 = ptrtoint ptr %255 to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 8, ptr %255, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i324) #7
  %258 = getelementptr inbounds i8, ptr %msg.i324, i32 4
  %259 = ptrtoint ptr %258 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 -1, ptr %258, align 4
  %260 = ptrtoint ptr %config.i.i237 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %config.i.i237, align 4
  %262 = ptrtoint ptr %261 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %261, align 4
  %conv.i326 = zext i8 %263 to i16
  %264 = ptrtoint ptr %msg.i324 to i32
  call void @__asan_store2_noabort(i32 %264)
  store i16 %conv.i326, ptr %msg.i324, align 4
  %flags.i327 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i324, i32 0, i32 1
  %265 = ptrtoint ptr %flags.i327 to i32
  call void @__asan_store2_noabort(i32 %265)
  store i16 0, ptr %flags.i327, align 2
  store i16 2, ptr %258, align 4
  %buf1.i329 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i324, i32 0, i32 3
  %266 = ptrtoint ptr %buf1.i329 to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr %buf.i323, ptr %buf1.i329, align 4
  %267 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %1, align 4
  %call.i330 = call i32 @i2c_transfer(ptr noundef %268, ptr noundef nonnull %msg.i324, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i330)
  %cmp.not.i331 = icmp eq i32 %call.i330, 1
  br i1 %cmp.not.i331, label %m88rs2000_writereg.exit322.m88rs2000_writereg.exit338_crit_edge, label %do.body.i334

m88rs2000_writereg.exit322.m88rs2000_writereg.exit338_crit_edge: ; preds = %m88rs2000_writereg.exit322
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit338

do.body.i334:                                     ; preds = %m88rs2000_writereg.exit322
  %269 = load i32, ptr @m88rs2000_debug, align 4
  %and.i332 = and i32 %269, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i332)
  %tobool.not.i333 = icmp eq i32 %and.i332, 0
  br i1 %tobool.not.i333, label %do.body.i334.m88rs2000_writereg.exit338_crit_edge, label %do.end.i336

do.body.i334.m88rs2000_writereg.exit338_crit_edge: ; preds = %do.body.i334
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit338

do.end.i336:                                      ; preds = %do.body.i334
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i335 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 145, i32 noundef 8, i32 noundef %call.i330) #11
  br label %m88rs2000_writereg.exit338

m88rs2000_writereg.exit338:                       ; preds = %do.end.i336, %do.body.i334.m88rs2000_writereg.exit338_crit_edge, %m88rs2000_writereg.exit322.m88rs2000_writereg.exit338_crit_edge
  %cond.i337 = phi i32 [ -121, %do.body.i334.m88rs2000_writereg.exit338_crit_edge ], [ -121, %do.end.i336 ], [ 0, %m88rs2000_writereg.exit322.m88rs2000_writereg.exit338_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i324) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i323) #7
  %or69 = or i32 %or67, %cond.i337
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or69)
  %cmp70 = icmp slt i32 %or69, 0
  br i1 %cmp70, label %m88rs2000_writereg.exit338.cleanup_crit_edge, label %if.end73

m88rs2000_writereg.exit338.cleanup_crit_edge:     ; preds = %m88rs2000_writereg.exit338
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end73:                                         ; preds = %m88rs2000_writereg.exit338
  %270 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %symbol_rate, align 4
  %272 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %demodulator_priv, align 4
  %274 = add i32 %271, -45000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -44000001, i32 %274)
  %275 = icmp ult i32 %274, -44000001
  br i1 %275, label %if.end73.cleanup_crit_edge, label %if.end.i344

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i344:                                      ; preds = %if.end73
  %call.i342 = call fastcc i32 @m88rs2000_get_mclk(ptr noundef %fe) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i342)
  %tobool.not.i343 = icmp eq i32 %call.i342, 0
  br i1 %tobool.not.i343, label %if.end.i344.cleanup_crit_edge, label %if.else186.i

if.end.i344.cleanup_crit_edge:                    ; preds = %if.end.i344
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else186.i:                                     ; preds = %if.end.i344
  %div.i345 = udiv i32 %271, 1000
  %conv.i346 = zext i32 %div.i345 to i64
  %mul.i347 = shl nuw nsw i64 %conv.i346, 24
  %276 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call.i342, i64 %mul.i347) #12, !srcloc !78
  %asmresult1.i.i = extractvalue { i64, i64 } %276, 1
  %extract = lshr i64 %asmresult1.i.i, 8
  %extract.t425 = trunc i64 %extract to i8
  %extract430 = lshr i64 %asmresult1.i.i, 16
  %extract.t431 = trunc i64 %extract430 to i8
  %extract.t = trunc i64 %asmresult1.i.i to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i339) #7
  %277 = getelementptr inbounds [2 x i8], ptr %buf.i.i339, i32 0, i32 1
  %278 = ptrtoint ptr %buf.i.i339 to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 -109, ptr %buf.i.i339, align 1
  %279 = ptrtoint ptr %277 to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 %extract.t, ptr %277, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i340) #7
  %280 = getelementptr inbounds i8, ptr %msg.i.i340, i32 4
  %281 = ptrtoint ptr %280 to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 -1, ptr %280, align 4
  %config.i.i350 = getelementptr inbounds %struct.m88rs2000_state, ptr %273, i32 0, i32 1
  %282 = ptrtoint ptr %config.i.i350 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %config.i.i350, align 4
  %284 = ptrtoint ptr %283 to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %283, align 4
  %conv.i.i351 = zext i8 %285 to i16
  %286 = ptrtoint ptr %msg.i.i340 to i32
  call void @__asan_store2_noabort(i32 %286)
  store i16 %conv.i.i351, ptr %msg.i.i340, align 4
  %flags.i.i352 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i340, i32 0, i32 1
  %287 = ptrtoint ptr %flags.i.i352 to i32
  call void @__asan_store2_noabort(i32 %287)
  store i16 0, ptr %flags.i.i352, align 2
  store i16 2, ptr %280, align 4
  %buf1.i.i353 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i340, i32 0, i32 3
  %288 = ptrtoint ptr %buf1.i.i353 to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr %buf.i.i339, ptr %buf1.i.i353, align 4
  %289 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %273, align 4
  %call.i.i354 = call i32 @i2c_transfer(ptr noundef %290, ptr noundef nonnull %msg.i.i340, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i354)
  %cmp.not.i.i355 = icmp eq i32 %call.i.i354, 1
  br i1 %cmp.not.i.i355, label %if.else186.i.m88rs2000_writereg.exit.i362_crit_edge, label %do.body.i.i357

if.else186.i.m88rs2000_writereg.exit.i362_crit_edge: ; preds = %if.else186.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit.i362

do.body.i.i357:                                   ; preds = %if.else186.i
  %291 = load i32, ptr @m88rs2000_debug, align 4
  %and.i360.i = and i32 %291, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i360.i)
  %tobool.not.i.i356 = icmp eq i32 %and.i360.i, 0
  br i1 %tobool.not.i.i356, label %do.body.i.i357.m88rs2000_writereg.exit.i362_crit_edge, label %do.end.i.i360

do.body.i.i357.m88rs2000_writereg.exit.i362_crit_edge: ; preds = %do.body.i.i357
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit.i362

do.end.i.i360:                                    ; preds = %do.body.i.i357
  call void @__sanitizer_cov_trace_pc() #9
  %292 = trunc i64 %asmresult1.i.i to i32
  %conv6.i.i358 = and i32 %292, 255
  %call7.i.i359 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 147, i32 noundef %conv6.i.i358, i32 noundef %call.i.i354) #11
  br label %m88rs2000_writereg.exit.i362

m88rs2000_writereg.exit.i362:                     ; preds = %do.end.i.i360, %do.body.i.i357.m88rs2000_writereg.exit.i362_crit_edge, %if.else186.i.m88rs2000_writereg.exit.i362_crit_edge
  %cond.i.i361 = phi i32 [ -121, %do.body.i.i357.m88rs2000_writereg.exit.i362_crit_edge ], [ -121, %do.end.i.i360 ], [ 0, %if.else186.i.m88rs2000_writereg.exit.i362_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i340) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i339) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i361.i) #7
  %293 = getelementptr inbounds [2 x i8], ptr %buf.i361.i, i32 0, i32 1
  %294 = ptrtoint ptr %buf.i361.i to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 -108, ptr %buf.i361.i, align 1
  %295 = ptrtoint ptr %293 to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 %extract.t425, ptr %293, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i362.i) #7
  %296 = getelementptr inbounds i8, ptr %msg.i362.i, i32 4
  %297 = ptrtoint ptr %296 to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 -1, ptr %296, align 4
  %298 = ptrtoint ptr %config.i.i350 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %config.i.i350, align 4
  %300 = ptrtoint ptr %299 to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %299, align 4
  %conv.i364.i = zext i8 %301 to i16
  %302 = ptrtoint ptr %msg.i362.i to i32
  call void @__asan_store2_noabort(i32 %302)
  store i16 %conv.i364.i, ptr %msg.i362.i, align 4
  %flags.i365.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i362.i, i32 0, i32 1
  %303 = ptrtoint ptr %flags.i365.i to i32
  call void @__asan_store2_noabort(i32 %303)
  store i16 0, ptr %flags.i365.i, align 2
  store i16 2, ptr %296, align 4
  %buf1.i367.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i362.i, i32 0, i32 3
  %304 = ptrtoint ptr %buf1.i367.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store ptr %buf.i361.i, ptr %buf1.i367.i, align 4
  %305 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %273, align 4
  %call.i368.i = call i32 @i2c_transfer(ptr noundef %306, ptr noundef nonnull %msg.i362.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i368.i)
  %cmp.not.i369.i = icmp eq i32 %call.i368.i, 1
  br i1 %cmp.not.i369.i, label %m88rs2000_writereg.exit.i362.m88rs2000_writereg.exit377.i_crit_edge, label %do.body.i372.i

m88rs2000_writereg.exit.i362.m88rs2000_writereg.exit377.i_crit_edge: ; preds = %m88rs2000_writereg.exit.i362
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit377.i

do.body.i372.i:                                   ; preds = %m88rs2000_writereg.exit.i362
  %307 = load i32, ptr @m88rs2000_debug, align 4
  %and.i370.i = and i32 %307, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i370.i)
  %tobool.not.i371.i = icmp eq i32 %and.i370.i, 0
  br i1 %tobool.not.i371.i, label %do.body.i372.i.m88rs2000_writereg.exit377.i_crit_edge, label %do.end.i375.i

do.body.i372.i.m88rs2000_writereg.exit377.i_crit_edge: ; preds = %do.body.i372.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit377.i

do.end.i375.i:                                    ; preds = %do.body.i372.i
  call void @__sanitizer_cov_trace_pc() #9
  %308 = trunc i64 %extract to i32
  %conv6.i373.i = and i32 %308, 255
  %call7.i374.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 148, i32 noundef %conv6.i373.i, i32 noundef %call.i368.i) #11
  br label %m88rs2000_writereg.exit377.i

m88rs2000_writereg.exit377.i:                     ; preds = %do.end.i375.i, %do.body.i372.i.m88rs2000_writereg.exit377.i_crit_edge, %m88rs2000_writereg.exit.i362.m88rs2000_writereg.exit377.i_crit_edge
  %cond.i376.i = phi i32 [ -121, %do.body.i372.i.m88rs2000_writereg.exit377.i_crit_edge ], [ -121, %do.end.i375.i ], [ 0, %m88rs2000_writereg.exit.i362.m88rs2000_writereg.exit377.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i362.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i361.i) #7
  %or212.i = or i32 %cond.i376.i, %cond.i.i361
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i378.i) #7
  %309 = getelementptr inbounds [2 x i8], ptr %buf.i378.i, i32 0, i32 1
  %310 = ptrtoint ptr %buf.i378.i to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 -107, ptr %buf.i378.i, align 1
  %311 = ptrtoint ptr %309 to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 %extract.t431, ptr %309, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i379.i) #7
  %312 = getelementptr inbounds i8, ptr %msg.i379.i, i32 4
  %313 = ptrtoint ptr %312 to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 196607, ptr %312, align 4
  %314 = ptrtoint ptr %config.i.i350 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %config.i.i350, align 4
  %316 = ptrtoint ptr %315 to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %315, align 4
  %conv.i381.i = zext i8 %317 to i16
  %318 = ptrtoint ptr %msg.i379.i to i32
  call void @__asan_store2_noabort(i32 %318)
  store i16 %conv.i381.i, ptr %msg.i379.i, align 4
  %flags.i382.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i379.i, i32 0, i32 1
  %319 = ptrtoint ptr %flags.i382.i to i32
  call void @__asan_store2_noabort(i32 %319)
  store i16 0, ptr %flags.i382.i, align 2
  %buf1.i384.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i379.i, i32 0, i32 3
  %320 = ptrtoint ptr %buf1.i384.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store ptr %buf.i378.i, ptr %buf1.i384.i, align 4
  %321 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %273, align 4
  %call.i385.i = call i32 @i2c_transfer(ptr noundef %322, ptr noundef nonnull %msg.i379.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i385.i)
  %cmp.not.i386.i = icmp eq i32 %call.i385.i, 1
  br i1 %cmp.not.i386.i, label %m88rs2000_writereg.exit377.i.m88rs2000_writereg.exit394.i_crit_edge, label %do.body.i389.i

m88rs2000_writereg.exit377.i.m88rs2000_writereg.exit394.i_crit_edge: ; preds = %m88rs2000_writereg.exit377.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit394.i

do.body.i389.i:                                   ; preds = %m88rs2000_writereg.exit377.i
  %323 = load i32, ptr @m88rs2000_debug, align 4
  %and.i387.i = and i32 %323, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i387.i)
  %tobool.not.i388.i = icmp eq i32 %and.i387.i, 0
  br i1 %tobool.not.i388.i, label %do.body.i389.i.m88rs2000_writereg.exit394.i_crit_edge, label %do.end.i392.i

do.body.i389.i.m88rs2000_writereg.exit394.i_crit_edge: ; preds = %do.body.i389.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit394.i

do.end.i392.i:                                    ; preds = %do.body.i389.i
  call void @__sanitizer_cov_trace_pc() #9
  %324 = trunc i64 %extract430 to i32
  %conv6.i390.i = and i32 %324, 255
  %call7.i391.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 149, i32 noundef %conv6.i390.i, i32 noundef %call.i385.i) #11
  br label %m88rs2000_writereg.exit394.i

m88rs2000_writereg.exit394.i:                     ; preds = %do.end.i392.i, %do.body.i389.i.m88rs2000_writereg.exit394.i_crit_edge, %m88rs2000_writereg.exit377.i.m88rs2000_writereg.exit394.i_crit_edge
  %cond.i393.i = phi i32 [ -121, %do.body.i389.i.m88rs2000_writereg.exit394.i_crit_edge ], [ -121, %do.end.i392.i ], [ 0, %m88rs2000_writereg.exit377.i.m88rs2000_writereg.exit394.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i379.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i378.i) #7
  %or215.i = or i32 %or212.i, %cond.i393.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %271)
  %cmp216.i = icmp ugt i32 %271, 10000000
  br i1 %cmp216.i, label %if.then218.i, label %if.else221.i

if.then218.i:                                     ; preds = %m88rs2000_writereg.exit394.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i395.i) #7
  %325 = getelementptr inbounds [2 x i8], ptr %buf.i395.i, i32 0, i32 1
  %326 = ptrtoint ptr %buf.i395.i to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 -96, ptr %buf.i395.i, align 1
  %327 = ptrtoint ptr %325 to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 32, ptr %325, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i396.i) #7
  %328 = getelementptr inbounds i8, ptr %msg.i396.i, i32 4
  %329 = ptrtoint ptr %328 to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 196607, ptr %328, align 4
  %330 = ptrtoint ptr %config.i.i350 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %config.i.i350, align 4
  %332 = ptrtoint ptr %331 to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %331, align 4
  %conv.i398.i = zext i8 %333 to i16
  %334 = ptrtoint ptr %msg.i396.i to i32
  call void @__asan_store2_noabort(i32 %334)
  store i16 %conv.i398.i, ptr %msg.i396.i, align 4
  %flags.i399.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i396.i, i32 0, i32 1
  %335 = ptrtoint ptr %flags.i399.i to i32
  call void @__asan_store2_noabort(i32 %335)
  store i16 0, ptr %flags.i399.i, align 2
  %buf1.i401.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i396.i, i32 0, i32 3
  %336 = ptrtoint ptr %buf1.i401.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store ptr %buf.i395.i, ptr %buf1.i401.i, align 4
  %337 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %273, align 4
  %call.i402.i = call i32 @i2c_transfer(ptr noundef %338, ptr noundef nonnull %msg.i396.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i402.i)
  %cmp.not.i403.i = icmp eq i32 %call.i402.i, 1
  br i1 %cmp.not.i403.i, label %if.then218.i.m88rs2000_writereg.exit410.i_crit_edge, label %do.body.i406.i

if.then218.i.m88rs2000_writereg.exit410.i_crit_edge: ; preds = %if.then218.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit410.i

do.body.i406.i:                                   ; preds = %if.then218.i
  %339 = load i32, ptr @m88rs2000_debug, align 4
  %and.i404.i = and i32 %339, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i404.i)
  %tobool.not.i405.i = icmp eq i32 %and.i404.i, 0
  br i1 %tobool.not.i405.i, label %do.body.i406.i.m88rs2000_writereg.exit410.i_crit_edge, label %do.end.i408.i

do.body.i406.i.m88rs2000_writereg.exit410.i_crit_edge: ; preds = %do.body.i406.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit410.i

do.end.i408.i:                                    ; preds = %do.body.i406.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i407.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 160, i32 noundef 32, i32 noundef %call.i402.i) #11
  br label %m88rs2000_writereg.exit410.i

m88rs2000_writereg.exit410.i:                     ; preds = %do.end.i408.i, %do.body.i406.i.m88rs2000_writereg.exit410.i_crit_edge, %if.then218.i.m88rs2000_writereg.exit410.i_crit_edge
  %cond.i409.i = phi i32 [ -121, %do.body.i406.i.m88rs2000_writereg.exit410.i_crit_edge ], [ -121, %do.end.i408.i ], [ 0, %if.then218.i.m88rs2000_writereg.exit410.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i396.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i395.i) #7
  br label %if.end224.i

if.else221.i:                                     ; preds = %m88rs2000_writereg.exit394.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i411.i) #7
  %340 = getelementptr inbounds [2 x i8], ptr %buf.i411.i, i32 0, i32 1
  %341 = ptrtoint ptr %buf.i411.i to i32
  call void @__asan_store1_noabort(i32 %341)
  store i8 -96, ptr %buf.i411.i, align 1
  %342 = ptrtoint ptr %340 to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 96, ptr %340, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i412.i) #7
  %343 = getelementptr inbounds i8, ptr %msg.i412.i, i32 4
  %344 = ptrtoint ptr %343 to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 196607, ptr %343, align 4
  %345 = ptrtoint ptr %config.i.i350 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %config.i.i350, align 4
  %347 = ptrtoint ptr %346 to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %346, align 4
  %conv.i414.i = zext i8 %348 to i16
  %349 = ptrtoint ptr %msg.i412.i to i32
  call void @__asan_store2_noabort(i32 %349)
  store i16 %conv.i414.i, ptr %msg.i412.i, align 4
  %flags.i415.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i412.i, i32 0, i32 1
  %350 = ptrtoint ptr %flags.i415.i to i32
  call void @__asan_store2_noabort(i32 %350)
  store i16 0, ptr %flags.i415.i, align 2
  %buf1.i417.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i412.i, i32 0, i32 3
  %351 = ptrtoint ptr %buf1.i417.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store ptr %buf.i411.i, ptr %buf1.i417.i, align 4
  %352 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %273, align 4
  %call.i418.i = call i32 @i2c_transfer(ptr noundef %353, ptr noundef nonnull %msg.i412.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i418.i)
  %cmp.not.i419.i = icmp eq i32 %call.i418.i, 1
  br i1 %cmp.not.i419.i, label %if.else221.i.m88rs2000_writereg.exit426.i_crit_edge, label %do.body.i422.i

if.else221.i.m88rs2000_writereg.exit426.i_crit_edge: ; preds = %if.else221.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit426.i

do.body.i422.i:                                   ; preds = %if.else221.i
  %354 = load i32, ptr @m88rs2000_debug, align 4
  %and.i420.i = and i32 %354, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i420.i)
  %tobool.not.i421.i = icmp eq i32 %and.i420.i, 0
  br i1 %tobool.not.i421.i, label %do.body.i422.i.m88rs2000_writereg.exit426.i_crit_edge, label %do.end.i424.i

do.body.i422.i.m88rs2000_writereg.exit426.i_crit_edge: ; preds = %do.body.i422.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit426.i

do.end.i424.i:                                    ; preds = %do.body.i422.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i423.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 160, i32 noundef 96, i32 noundef %call.i418.i) #11
  br label %m88rs2000_writereg.exit426.i

m88rs2000_writereg.exit426.i:                     ; preds = %do.end.i424.i, %do.body.i422.i.m88rs2000_writereg.exit426.i_crit_edge, %if.else221.i.m88rs2000_writereg.exit426.i_crit_edge
  %cond.i425.i = phi i32 [ -121, %do.body.i422.i.m88rs2000_writereg.exit426.i_crit_edge ], [ -121, %do.end.i424.i ], [ 0, %if.else221.i.m88rs2000_writereg.exit426.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i412.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i411.i) #7
  br label %if.end224.i

if.end224.i:                                      ; preds = %m88rs2000_writereg.exit426.i, %m88rs2000_writereg.exit410.i
  %call219.pn.i = phi i32 [ %cond.i409.i, %m88rs2000_writereg.exit410.i ], [ %cond.i425.i, %m88rs2000_writereg.exit426.i ]
  %ret.0.i = or i32 %or215.i, %call219.pn.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i427.i) #7
  %355 = getelementptr inbounds [2 x i8], ptr %buf.i427.i, i32 0, i32 1
  %356 = ptrtoint ptr %buf.i427.i to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 -95, ptr %buf.i427.i, align 1
  %357 = ptrtoint ptr %355 to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 -32, ptr %355, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i428.i) #7
  %358 = getelementptr inbounds i8, ptr %msg.i428.i, i32 4
  %359 = ptrtoint ptr %358 to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 196607, ptr %358, align 4
  %360 = ptrtoint ptr %config.i.i350 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %config.i.i350, align 4
  %362 = ptrtoint ptr %361 to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %361, align 4
  %conv.i430.i = zext i8 %363 to i16
  %364 = ptrtoint ptr %msg.i428.i to i32
  call void @__asan_store2_noabort(i32 %364)
  store i16 %conv.i430.i, ptr %msg.i428.i, align 4
  %flags.i431.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i428.i, i32 0, i32 1
  %365 = ptrtoint ptr %flags.i431.i to i32
  call void @__asan_store2_noabort(i32 %365)
  store i16 0, ptr %flags.i431.i, align 2
  %buf1.i433.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i428.i, i32 0, i32 3
  %366 = ptrtoint ptr %buf1.i433.i to i32
  call void @__asan_store4_noabort(i32 %366)
  store ptr %buf.i427.i, ptr %buf1.i433.i, align 4
  %367 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %273, align 4
  %call.i434.i = call i32 @i2c_transfer(ptr noundef %368, ptr noundef nonnull %msg.i428.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i434.i)
  %cmp.not.i435.i = icmp eq i32 %call.i434.i, 1
  br i1 %cmp.not.i435.i, label %if.end224.i.m88rs2000_writereg.exit442.i_crit_edge, label %do.body.i438.i

if.end224.i.m88rs2000_writereg.exit442.i_crit_edge: ; preds = %if.end224.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit442.i

do.body.i438.i:                                   ; preds = %if.end224.i
  %369 = load i32, ptr @m88rs2000_debug, align 4
  %and.i436.i = and i32 %369, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i436.i)
  %tobool.not.i437.i = icmp eq i32 %and.i436.i, 0
  br i1 %tobool.not.i437.i, label %do.body.i438.i.m88rs2000_writereg.exit442.i_crit_edge, label %do.end.i440.i

do.body.i438.i.m88rs2000_writereg.exit442.i_crit_edge: ; preds = %do.body.i438.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit442.i

do.end.i440.i:                                    ; preds = %do.body.i438.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i439.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 161, i32 noundef 224, i32 noundef %call.i434.i) #11
  br label %m88rs2000_writereg.exit442.i

m88rs2000_writereg.exit442.i:                     ; preds = %do.end.i440.i, %do.body.i438.i.m88rs2000_writereg.exit442.i_crit_edge, %if.end224.i.m88rs2000_writereg.exit442.i_crit_edge
  %cond.i441.i = phi i32 [ -121, %do.body.i438.i.m88rs2000_writereg.exit442.i_crit_edge ], [ -121, %do.end.i440.i ], [ 0, %if.end224.i.m88rs2000_writereg.exit442.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i428.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i427.i) #7
  %or226.i = or i32 %ret.0.i, %cond.i441.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000000, i32 %271)
  %cmp227.i = icmp ugt i32 %271, 12000000
  br i1 %cmp227.i, label %if.then229.i, label %if.else232.i

if.then229.i:                                     ; preds = %m88rs2000_writereg.exit442.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i443.i) #7
  %370 = getelementptr inbounds [2 x i8], ptr %buf.i443.i, i32 0, i32 1
  %371 = ptrtoint ptr %buf.i443.i to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 -93, ptr %buf.i443.i, align 1
  %372 = ptrtoint ptr %370 to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 32, ptr %370, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i444.i) #7
  %373 = getelementptr inbounds i8, ptr %msg.i444.i, i32 4
  %374 = ptrtoint ptr %373 to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 196607, ptr %373, align 4
  %375 = ptrtoint ptr %config.i.i350 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %config.i.i350, align 4
  %377 = ptrtoint ptr %376 to i32
  call void @__asan_load1_noabort(i32 %377)
  %378 = load i8, ptr %376, align 4
  %conv.i446.i = zext i8 %378 to i16
  %379 = ptrtoint ptr %msg.i444.i to i32
  call void @__asan_store2_noabort(i32 %379)
  store i16 %conv.i446.i, ptr %msg.i444.i, align 4
  %flags.i447.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i444.i, i32 0, i32 1
  %380 = ptrtoint ptr %flags.i447.i to i32
  call void @__asan_store2_noabort(i32 %380)
  store i16 0, ptr %flags.i447.i, align 2
  %buf1.i449.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i444.i, i32 0, i32 3
  %381 = ptrtoint ptr %buf1.i449.i to i32
  call void @__asan_store4_noabort(i32 %381)
  store ptr %buf.i443.i, ptr %buf1.i449.i, align 4
  %382 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %273, align 4
  %call.i450.i = call i32 @i2c_transfer(ptr noundef %383, ptr noundef nonnull %msg.i444.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i450.i)
  %cmp.not.i451.i = icmp eq i32 %call.i450.i, 1
  br i1 %cmp.not.i451.i, label %if.then229.i.m88rs2000_writereg.exit458.i_crit_edge, label %do.body.i454.i

if.then229.i.m88rs2000_writereg.exit458.i_crit_edge: ; preds = %if.then229.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit458.i

do.body.i454.i:                                   ; preds = %if.then229.i
  %384 = load i32, ptr @m88rs2000_debug, align 4
  %and.i452.i = and i32 %384, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i452.i)
  %tobool.not.i453.i = icmp eq i32 %and.i452.i, 0
  br i1 %tobool.not.i453.i, label %do.body.i454.i.m88rs2000_writereg.exit458.i_crit_edge, label %do.end.i456.i

do.body.i454.i.m88rs2000_writereg.exit458.i_crit_edge: ; preds = %do.body.i454.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit458.i

do.end.i456.i:                                    ; preds = %do.body.i454.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i455.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 163, i32 noundef 32, i32 noundef %call.i450.i) #11
  br label %m88rs2000_writereg.exit458.i

m88rs2000_writereg.exit458.i:                     ; preds = %do.end.i456.i, %do.body.i454.i.m88rs2000_writereg.exit458.i_crit_edge, %if.then229.i.m88rs2000_writereg.exit458.i_crit_edge
  %cond.i457.i = phi i32 [ -121, %do.body.i454.i.m88rs2000_writereg.exit458.i_crit_edge ], [ -121, %do.end.i456.i ], [ 0, %if.then229.i.m88rs2000_writereg.exit458.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i444.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i443.i) #7
  br label %do.body.i363

if.else232.i:                                     ; preds = %m88rs2000_writereg.exit442.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2800000, i32 %271)
  %cmp233.i = icmp ugt i32 %271, 2800000
  br i1 %cmp233.i, label %if.then235.i, label %if.else238.i

if.then235.i:                                     ; preds = %if.else232.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i459.i) #7
  %385 = getelementptr inbounds [2 x i8], ptr %buf.i459.i, i32 0, i32 1
  %386 = ptrtoint ptr %buf.i459.i to i32
  call void @__asan_store1_noabort(i32 %386)
  store i8 -93, ptr %buf.i459.i, align 1
  %387 = ptrtoint ptr %385 to i32
  call void @__asan_store1_noabort(i32 %387)
  store i8 -104, ptr %385, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i460.i) #7
  %388 = getelementptr inbounds i8, ptr %msg.i460.i, i32 4
  %389 = ptrtoint ptr %388 to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 196607, ptr %388, align 4
  %390 = ptrtoint ptr %config.i.i350 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %config.i.i350, align 4
  %392 = ptrtoint ptr %391 to i32
  call void @__asan_load1_noabort(i32 %392)
  %393 = load i8, ptr %391, align 4
  %conv.i462.i = zext i8 %393 to i16
  %394 = ptrtoint ptr %msg.i460.i to i32
  call void @__asan_store2_noabort(i32 %394)
  store i16 %conv.i462.i, ptr %msg.i460.i, align 4
  %flags.i463.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i460.i, i32 0, i32 1
  %395 = ptrtoint ptr %flags.i463.i to i32
  call void @__asan_store2_noabort(i32 %395)
  store i16 0, ptr %flags.i463.i, align 2
  %buf1.i465.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i460.i, i32 0, i32 3
  %396 = ptrtoint ptr %buf1.i465.i to i32
  call void @__asan_store4_noabort(i32 %396)
  store ptr %buf.i459.i, ptr %buf1.i465.i, align 4
  %397 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %273, align 4
  %call.i466.i = call i32 @i2c_transfer(ptr noundef %398, ptr noundef nonnull %msg.i460.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i466.i)
  %cmp.not.i467.i = icmp eq i32 %call.i466.i, 1
  br i1 %cmp.not.i467.i, label %if.then235.i.m88rs2000_writereg.exit474.i_crit_edge, label %do.body.i470.i

if.then235.i.m88rs2000_writereg.exit474.i_crit_edge: ; preds = %if.then235.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit474.i

do.body.i470.i:                                   ; preds = %if.then235.i
  %399 = load i32, ptr @m88rs2000_debug, align 4
  %and.i468.i = and i32 %399, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i468.i)
  %tobool.not.i469.i = icmp eq i32 %and.i468.i, 0
  br i1 %tobool.not.i469.i, label %do.body.i470.i.m88rs2000_writereg.exit474.i_crit_edge, label %do.end.i472.i

do.body.i470.i.m88rs2000_writereg.exit474.i_crit_edge: ; preds = %do.body.i470.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit474.i

do.end.i472.i:                                    ; preds = %do.body.i470.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i471.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 163, i32 noundef 152, i32 noundef %call.i466.i) #11
  br label %m88rs2000_writereg.exit474.i

m88rs2000_writereg.exit474.i:                     ; preds = %do.end.i472.i, %do.body.i470.i.m88rs2000_writereg.exit474.i_crit_edge, %if.then235.i.m88rs2000_writereg.exit474.i_crit_edge
  %cond.i473.i = phi i32 [ -121, %do.body.i470.i.m88rs2000_writereg.exit474.i_crit_edge ], [ -121, %do.end.i472.i ], [ 0, %if.then235.i.m88rs2000_writereg.exit474.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i460.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i459.i) #7
  br label %do.body.i363

if.else238.i:                                     ; preds = %if.else232.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i475.i) #7
  %400 = getelementptr inbounds [2 x i8], ptr %buf.i475.i, i32 0, i32 1
  %401 = ptrtoint ptr %buf.i475.i to i32
  call void @__asan_store1_noabort(i32 %401)
  store i8 -93, ptr %buf.i475.i, align 1
  %402 = ptrtoint ptr %400 to i32
  call void @__asan_store1_noabort(i32 %402)
  store i8 -112, ptr %400, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i476.i) #7
  %403 = getelementptr inbounds i8, ptr %msg.i476.i, i32 4
  %404 = ptrtoint ptr %403 to i32
  call void @__asan_store4_noabort(i32 %404)
  store i32 196607, ptr %403, align 4
  %405 = ptrtoint ptr %config.i.i350 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %config.i.i350, align 4
  %407 = ptrtoint ptr %406 to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %406, align 4
  %conv.i478.i = zext i8 %408 to i16
  %409 = ptrtoint ptr %msg.i476.i to i32
  call void @__asan_store2_noabort(i32 %409)
  store i16 %conv.i478.i, ptr %msg.i476.i, align 4
  %flags.i479.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i476.i, i32 0, i32 1
  %410 = ptrtoint ptr %flags.i479.i to i32
  call void @__asan_store2_noabort(i32 %410)
  store i16 0, ptr %flags.i479.i, align 2
  %buf1.i481.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i476.i, i32 0, i32 3
  %411 = ptrtoint ptr %buf1.i481.i to i32
  call void @__asan_store4_noabort(i32 %411)
  store ptr %buf.i475.i, ptr %buf1.i481.i, align 4
  %412 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %273, align 4
  %call.i482.i = call i32 @i2c_transfer(ptr noundef %413, ptr noundef nonnull %msg.i476.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i482.i)
  %cmp.not.i483.i = icmp eq i32 %call.i482.i, 1
  br i1 %cmp.not.i483.i, label %if.else238.i.m88rs2000_writereg.exit490.i_crit_edge, label %do.body.i486.i

if.else238.i.m88rs2000_writereg.exit490.i_crit_edge: ; preds = %if.else238.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit490.i

do.body.i486.i:                                   ; preds = %if.else238.i
  %414 = load i32, ptr @m88rs2000_debug, align 4
  %and.i484.i = and i32 %414, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i484.i)
  %tobool.not.i485.i = icmp eq i32 %and.i484.i, 0
  br i1 %tobool.not.i485.i, label %do.body.i486.i.m88rs2000_writereg.exit490.i_crit_edge, label %do.end.i488.i

do.body.i486.i.m88rs2000_writereg.exit490.i_crit_edge: ; preds = %do.body.i486.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit490.i

do.end.i488.i:                                    ; preds = %do.body.i486.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i487.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 163, i32 noundef 144, i32 noundef %call.i482.i) #11
  br label %m88rs2000_writereg.exit490.i

m88rs2000_writereg.exit490.i:                     ; preds = %do.end.i488.i, %do.body.i486.i.m88rs2000_writereg.exit490.i_crit_edge, %if.else238.i.m88rs2000_writereg.exit490.i_crit_edge
  %cond.i489.i = phi i32 [ -121, %do.body.i486.i.m88rs2000_writereg.exit490.i_crit_edge ], [ -121, %do.end.i488.i ], [ 0, %if.else238.i.m88rs2000_writereg.exit490.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i476.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i475.i) #7
  br label %do.body.i363

do.body.i363:                                     ; preds = %m88rs2000_writereg.exit490.i, %m88rs2000_writereg.exit474.i, %m88rs2000_writereg.exit458.i
  %call230.pn.i = phi i32 [ %cond.i457.i, %m88rs2000_writereg.exit458.i ], [ %cond.i473.i, %m88rs2000_writereg.exit474.i ], [ %cond.i489.i, %m88rs2000_writereg.exit490.i ]
  %ret.1.i = or i32 %or226.i, %call230.pn.i
  %415 = load i32, ptr @m88rs2000_debug, align 4
  %and243.i = and i32 %415, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and243.i)
  %tobool244.not.i = icmp eq i32 %and243.i, 0
  br i1 %tobool244.not.i, label %do.body.i363.m88rs2000_set_symbolrate.exit_crit_edge, label %do.end.i364

do.body.i363.m88rs2000_set_symbolrate.exit_crit_edge: ; preds = %do.body.i363
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_set_symbolrate.exit

do.end.i364:                                      ; preds = %do.body.i363
  call void @__sanitizer_cov_trace_pc() #9
  %call248.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #11
  br label %m88rs2000_set_symbolrate.exit

m88rs2000_set_symbolrate.exit:                    ; preds = %do.end.i364, %do.body.i363.m88rs2000_set_symbolrate.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp76 = icmp slt i32 %ret.1.i, 0
  br i1 %cmp76, label %m88rs2000_set_symbolrate.exit.cleanup_crit_edge, label %if.end79

m88rs2000_set_symbolrate.exit.cleanup_crit_edge:  ; preds = %m88rs2000_set_symbolrate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end79:                                         ; preds = %m88rs2000_set_symbolrate.exit
  %call80 = call fastcc i32 @m88rs2000_tab_set(ptr noundef %1, ptr noundef nonnull @fe_trigger)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %if.end79.cleanup_crit_edge, label %for.cond.preheader

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end79
  %416 = getelementptr inbounds i8, ptr %msg.i366, i32 4
  %flags.i369 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i366, i32 0, i32 1
  %buf.i371 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i366, i32 0, i32 3
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i366, i32 1
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i366, i32 1, i32 1
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i366, i32 1, i32 2
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i366, i32 1, i32 3
  %417 = getelementptr inbounds i8, ptr %msg.i380, i32 4
  %flags.i383 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i380, i32 0, i32 1
  %buf.i385 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i380, i32 0, i32 3
  %arrayinit.element.i386 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i380, i32 1
  %flags6.i388 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i380, i32 1, i32 1
  %len7.i389 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i380, i32 1, i32 2
  %buf8.i390 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i380, i32 1, i32 3
  %418 = getelementptr inbounds [2 x i8], ptr %buf.i399, i32 0, i32 1
  %419 = getelementptr inbounds i8, ptr %msg.i400, i32 4
  %flags.i403 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i400, i32 0, i32 1
  %buf1.i405 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i400, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end105.for.body_crit_edge, %for.cond.preheader
  %i.0420 = phi i32 [ 0, %for.cond.preheader ], [ %inc106, %if.end105.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %420 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %420)
  store i8 -116, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %421 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %421)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i366) #7
  %422 = call ptr @memset(ptr %416, i32 255, i32 16)
  %423 = ptrtoint ptr %config.i.i237 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %config.i.i237, align 4
  %425 = ptrtoint ptr %424 to i32
  call void @__asan_load1_noabort(i32 %425)
  %426 = load i8, ptr %424, align 4
  %conv.i368 = zext i8 %426 to i16
  %427 = ptrtoint ptr %msg.i366 to i32
  call void @__asan_store2_noabort(i32 %427)
  store i16 %conv.i368, ptr %msg.i366, align 4
  %428 = ptrtoint ptr %flags.i369 to i32
  call void @__asan_store2_noabort(i32 %428)
  store i16 0, ptr %flags.i369, align 2
  %429 = ptrtoint ptr %416 to i32
  call void @__asan_store2_noabort(i32 %429)
  store i16 1, ptr %416, align 4
  %430 = ptrtoint ptr %buf.i371 to i32
  call void @__asan_store4_noabort(i32 %430)
  store ptr %b0.i, ptr %buf.i371, align 4
  %431 = load i8, ptr %424, align 4
  %conv5.i = zext i8 %431 to i16
  %432 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %432)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %433 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %433)
  store i16 1, ptr %flags6.i, align 2
  %434 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %434)
  store i16 1, ptr %len7.i, align 4
  %435 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %435)
  store ptr %b1.i, ptr %buf8.i, align 4
  %436 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %1, align 4
  %call.i372 = call i32 @i2c_transfer(ptr noundef %437, ptr noundef nonnull %msg.i366, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i372)
  %cmp.not.i373 = icmp eq i32 %call.i372, 2
  br i1 %cmp.not.i373, label %for.body.m88rs2000_readreg.exit_crit_edge, label %do.body.i376

for.body.m88rs2000_readreg.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit

do.body.i376:                                     ; preds = %for.body
  %438 = load i32, ptr @m88rs2000_debug, align 4
  %and.i374 = and i32 %438, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i374)
  %tobool.not.i375 = icmp eq i32 %and.i374, 0
  br i1 %tobool.not.i375, label %do.body.i376.m88rs2000_readreg.exit_crit_edge, label %do.end.i377

do.body.i376.m88rs2000_readreg.exit_crit_edge:    ; preds = %do.body.i376
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit

do.end.i377:                                      ; preds = %do.body.i376
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 140, i32 noundef %call.i372) #11
  br label %m88rs2000_readreg.exit

m88rs2000_readreg.exit:                           ; preds = %do.end.i377, %do.body.i376.m88rs2000_readreg.exit_crit_edge, %for.body.m88rs2000_readreg.exit_crit_edge
  %439 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %439)
  %440 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i366) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %441 = and i8 %440, -18
  call void @__sanitizer_cov_trace_const_cmp1(i8 -18, i8 %441)
  %cmp90 = icmp eq i8 %441, -18
  br i1 %cmp90, label %if.then109.critedge, label %if.end93

if.end93:                                         ; preds = %m88rs2000_readreg.exit
  %442 = ptrtoint ptr %no_lock_count to i32
  call void @__asan_load1_noabort(i32 %442)
  %443 = load i8, ptr %no_lock_count, align 4
  %inc = add i8 %443, 1
  store i8 %inc, ptr %no_lock_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %inc)
  %cmp97 = icmp eq i8 %inc, 15
  br i1 %cmp97, label %if.then99, label %if.end93.if.end105_crit_edge

if.end93.if.end105_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105

if.then99:                                        ; preds = %if.end93
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i378) #7
  %444 = ptrtoint ptr %b0.i378 to i32
  call void @__asan_store1_noabort(i32 %444)
  store i8 112, ptr %b0.i378, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i379) #7
  %445 = ptrtoint ptr %b1.i379 to i32
  call void @__asan_store1_noabort(i32 %445)
  store i8 0, ptr %b1.i379, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i380) #7
  %446 = call ptr @memset(ptr %417, i32 255, i32 16)
  %447 = ptrtoint ptr %config.i.i237 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %config.i.i237, align 4
  %449 = ptrtoint ptr %448 to i32
  call void @__asan_load1_noabort(i32 %449)
  %450 = load i8, ptr %448, align 4
  %conv.i382 = zext i8 %450 to i16
  %451 = ptrtoint ptr %msg.i380 to i32
  call void @__asan_store2_noabort(i32 %451)
  store i16 %conv.i382, ptr %msg.i380, align 4
  %452 = ptrtoint ptr %flags.i383 to i32
  call void @__asan_store2_noabort(i32 %452)
  store i16 0, ptr %flags.i383, align 2
  %453 = ptrtoint ptr %417 to i32
  call void @__asan_store2_noabort(i32 %453)
  store i16 1, ptr %417, align 4
  %454 = ptrtoint ptr %buf.i385 to i32
  call void @__asan_store4_noabort(i32 %454)
  store ptr %b0.i378, ptr %buf.i385, align 4
  %455 = load i8, ptr %448, align 4
  %conv5.i387 = zext i8 %455 to i16
  %456 = ptrtoint ptr %arrayinit.element.i386 to i32
  call void @__asan_store2_noabort(i32 %456)
  store i16 %conv5.i387, ptr %arrayinit.element.i386, align 4
  %457 = ptrtoint ptr %flags6.i388 to i32
  call void @__asan_store2_noabort(i32 %457)
  store i16 1, ptr %flags6.i388, align 2
  %458 = ptrtoint ptr %len7.i389 to i32
  call void @__asan_store2_noabort(i32 %458)
  store i16 1, ptr %len7.i389, align 4
  %459 = ptrtoint ptr %buf8.i390 to i32
  call void @__asan_store4_noabort(i32 %459)
  store ptr %b1.i379, ptr %buf8.i390, align 4
  %460 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %1, align 4
  %call.i391 = call i32 @i2c_transfer(ptr noundef %461, ptr noundef nonnull %msg.i380, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i391)
  %cmp.not.i392 = icmp eq i32 %call.i391, 2
  br i1 %cmp.not.i392, label %if.then99.m88rs2000_readreg.exit398_crit_edge, label %do.body.i395

if.then99.m88rs2000_readreg.exit398_crit_edge:    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit398

do.body.i395:                                     ; preds = %if.then99
  %462 = load i32, ptr @m88rs2000_debug, align 4
  %and.i393 = and i32 %462, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i393)
  %tobool.not.i394 = icmp eq i32 %and.i393, 0
  br i1 %tobool.not.i394, label %do.body.i395.m88rs2000_readreg.exit398_crit_edge, label %do.end.i397

do.body.i395.m88rs2000_readreg.exit398_crit_edge: ; preds = %do.body.i395
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit398

do.end.i397:                                      ; preds = %do.body.i395
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i396 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 112, i32 noundef %call.i391) #11
  br label %m88rs2000_readreg.exit398

m88rs2000_readreg.exit398:                        ; preds = %do.end.i397, %do.body.i395.m88rs2000_readreg.exit398_crit_edge, %if.then99.m88rs2000_readreg.exit398_crit_edge
  %463 = ptrtoint ptr %b1.i379 to i32
  call void @__asan_load1_noabort(i32 %463)
  %464 = load i8, ptr %b1.i379, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i380) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i379) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i378) #7
  %465 = xor i8 %464, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i399) #7
  %466 = ptrtoint ptr %buf.i399 to i32
  call void @__asan_store1_noabort(i32 %466)
  store i8 112, ptr %buf.i399, align 1
  %467 = ptrtoint ptr %418 to i32
  call void @__asan_store1_noabort(i32 %467)
  store i8 %465, ptr %418, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i400) #7
  %468 = ptrtoint ptr %419 to i32
  call void @__asan_store4_noabort(i32 %468)
  store i32 -1, ptr %419, align 4
  %469 = ptrtoint ptr %config.i.i237 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %config.i.i237, align 4
  %471 = ptrtoint ptr %470 to i32
  call void @__asan_load1_noabort(i32 %471)
  %472 = load i8, ptr %470, align 4
  %conv.i402 = zext i8 %472 to i16
  %473 = ptrtoint ptr %msg.i400 to i32
  call void @__asan_store2_noabort(i32 %473)
  store i16 %conv.i402, ptr %msg.i400, align 4
  %474 = ptrtoint ptr %flags.i403 to i32
  call void @__asan_store2_noabort(i32 %474)
  store i16 0, ptr %flags.i403, align 2
  store i16 2, ptr %419, align 4
  %475 = ptrtoint ptr %buf1.i405 to i32
  call void @__asan_store4_noabort(i32 %475)
  store ptr %buf.i399, ptr %buf1.i405, align 4
  %476 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %1, align 4
  %call.i406 = call i32 @i2c_transfer(ptr noundef %477, ptr noundef nonnull %msg.i400, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i406)
  %cmp.not.i407 = icmp eq i32 %call.i406, 1
  br i1 %cmp.not.i407, label %m88rs2000_readreg.exit398.m88rs2000_writereg.exit415_crit_edge, label %do.body.i410

m88rs2000_readreg.exit398.m88rs2000_writereg.exit415_crit_edge: ; preds = %m88rs2000_readreg.exit398
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit415

do.body.i410:                                     ; preds = %m88rs2000_readreg.exit398
  %478 = load i32, ptr @m88rs2000_debug, align 4
  %and.i408 = and i32 %478, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i408)
  %tobool.not.i409 = icmp eq i32 %and.i408, 0
  br i1 %tobool.not.i409, label %do.body.i410.m88rs2000_writereg.exit415_crit_edge, label %do.end.i413

do.body.i410.m88rs2000_writereg.exit415_crit_edge: ; preds = %do.body.i410
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit415

do.end.i413:                                      ; preds = %do.body.i410
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i411 = zext i8 %465 to i32
  %call7.i412 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 112, i32 noundef %conv6.i411, i32 noundef %call.i406) #11
  br label %m88rs2000_writereg.exit415

m88rs2000_writereg.exit415:                       ; preds = %do.end.i413, %do.body.i410.m88rs2000_writereg.exit415_crit_edge, %m88rs2000_readreg.exit398.m88rs2000_writereg.exit415_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i400) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i399) #7
  %479 = ptrtoint ptr %no_lock_count to i32
  call void @__asan_store1_noabort(i32 %479)
  store i8 0, ptr %no_lock_count, align 4
  br label %if.end105

if.end105:                                        ; preds = %m88rs2000_writereg.exit415, %if.end93.if.end105_crit_edge
  call void @msleep(i32 noundef 20) #7
  %inc106 = add nuw nsw i32 %i.0420, 1
  %exitcond.not = icmp eq i32 %inc106, 25
  br i1 %exitcond.not, label %if.end105.if.end113_crit_edge, label %if.end105.for.body_crit_edge

if.end105.for.body_crit_edge:                     ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end105.if.end113_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113

if.then109.critedge:                              ; preds = %m88rs2000_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call110 = call fastcc i32 @m88rs2000_get_fec(ptr noundef %1)
  %fec_inner111 = getelementptr inbounds %struct.m88rs2000_state, ptr %1, i32 0, i32 6
  %480 = ptrtoint ptr %fec_inner111 to i32
  call void @__asan_store4_noabort(i32 %480)
  store i32 %call110, ptr %fec_inner111, align 4
  %call112 = call fastcc zeroext i8 @m88rs2000_readreg(ptr noundef %1, i8 noundef zeroext 101)
  br label %if.end113

if.end113:                                        ; preds = %if.then109.critedge, %if.end105.if.end113_crit_edge
  %481 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %dtv_property_cache, align 4
  %tuner_frequency = getelementptr inbounds %struct.m88rs2000_state, ptr %1, i32 0, i32 4
  %483 = ptrtoint ptr %tuner_frequency to i32
  call void @__asan_store4_noabort(i32 %483)
  store i32 %482, ptr %tuner_frequency, align 4
  %484 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %symbol_rate, align 4
  %symbol_rate116 = getelementptr inbounds %struct.m88rs2000_state, ptr %1, i32 0, i32 5
  %486 = ptrtoint ptr %symbol_rate116 to i32
  call void @__asan_store4_noabort(i32 %486)
  store i32 %485, ptr %symbol_rate116, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end113, %if.end79.cleanup_crit_edge, %m88rs2000_set_symbolrate.exit.cleanup_crit_edge, %if.end.i344.cleanup_crit_edge, %if.end73.cleanup_crit_edge, %m88rs2000_writereg.exit338.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %m88rs2000_set_carrieroffset.exit.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end113 ], [ -95, %do.end ], [ -95, %do.body.cleanup_crit_edge ], [ -19, %if.end13.cleanup_crit_edge ], [ -19, %if.then20.cleanup_crit_edge ], [ -19, %m88rs2000_set_carrieroffset.exit.cleanup_crit_edge ], [ -19, %if.end52.cleanup_crit_edge ], [ -19, %m88rs2000_writereg.exit338.cleanup_crit_edge ], [ -19, %m88rs2000_set_symbolrate.exit.cleanup_crit_edge ], [ -19, %if.end79.cleanup_crit_edge ], [ -19, %if.end73.cleanup_crit_edge ], [ -19, %if.end.i344.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tuner_freq) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @m88rs2000_get_tune_settings(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %tune) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %0 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %symbol_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %1)
  %cmp = icmp ugt i32 %1, 3000000
  %. = select i1 %cmp, i32 2000, i32 3000
  %2 = ptrtoint ptr %tune to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %., ptr %tune, align 4
  %3 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %symbol_rate, align 4
  %div = udiv i32 %4, 16000
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %tune, i32 0, i32 1
  %5 = ptrtoint ptr %step_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div, ptr %step_size, align 4
  %6 = load i32, ptr %symbol_rate, align 4
  %div4 = udiv i32 %6, 2000
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %tune, i32 0, i32 2
  %7 = ptrtoint ptr %max_drift to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div4, ptr %max_drift, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @m88rs2000_get_frontend(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %c) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %fec_inner = getelementptr inbounds %struct.m88rs2000_state, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %fec_inner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fec_inner, align 4
  %fec_inner1 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 5
  %4 = ptrtoint ptr %fec_inner1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %fec_inner1, align 4
  %tuner_frequency = getelementptr inbounds %struct.m88rs2000_state, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %tuner_frequency to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tuner_frequency, align 4
  %7 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %c, align 4
  %symbol_rate = getelementptr inbounds %struct.m88rs2000_state, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %symbol_rate, align 4
  %symbol_rate2 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 10
  %10 = ptrtoint ptr %symbol_rate2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %symbol_rate2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88rs2000_read_status(ptr noundef %fe, ptr nocapture noundef writeonly %status) #0 align 64 {
entry:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
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
  store i8 -116, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.m88rs2000_state, ptr %1, i32 0, i32 1
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
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.m88rs2000_readreg.exit_crit_edge, label %do.body.i

entry.m88rs2000_readreg.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit

do.body.i:                                        ; preds = %entry
  %21 = load i32, ptr @m88rs2000_debug, align 4
  %and.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.m88rs2000_readreg.exit_crit_edge, label %do.end.i

do.body.i.m88rs2000_readreg.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 140, i32 noundef %call.i) #11
  br label %m88rs2000_readreg.exit

m88rs2000_readreg.exit:                           ; preds = %do.end.i, %do.body.i.m88rs2000_readreg.exit_crit_edge, %entry.m88rs2000_readreg.exit_crit_edge
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %24 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %status, align 4
  %25 = and i8 %23, -18
  call void @__sanitizer_cov_trace_const_cmp1(i8 -18, i8 %25)
  %cmp = icmp eq i8 %25, -18
  br i1 %cmp, label %if.then, label %m88rs2000_readreg.exit.if.end6_crit_edge

m88rs2000_readreg.exit.if.end6_crit_edge:         ; preds = %m88rs2000_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %m88rs2000_readreg.exit
  %26 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 31, ptr %status, align 4
  %27 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %config.i, align 4
  %set_ts_params = getelementptr inbounds %struct.m88rs2000_config, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %set_ts_params to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_ts_params, align 4
  %tobool.not = icmp eq ptr %30, null
  br i1 %tobool.not, label %if.then.if.end6_crit_edge, label %if.then2

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = call i32 %30(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.then.if.end6_crit_edge, %m88rs2000_readreg.exit.if.end6_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88rs2000_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  %buf.i180 = alloca [2 x i8], align 1
  %msg.i181 = alloca %struct.i2c_msg, align 4
  %buf.i163 = alloca [2 x i8], align 1
  %msg.i164 = alloca %struct.i2c_msg, align 4
  %buf.i146 = alloca [2 x i8], align 1
  %msg.i147 = alloca %struct.i2c_msg, align 4
  %buf.i130 = alloca [2 x i8], align 1
  %msg.i131 = alloca %struct.i2c_msg, align 4
  %b0.i109 = alloca [1 x i8], align 1
  %b1.i110 = alloca [1 x i8], align 1
  %msg.i111 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i88 = alloca [1 x i8], align 1
  %b1.i89 = alloca [1 x i8], align 1
  %msg.i90 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i67 = alloca [1 x i8], align 1
  %b1.i68 = alloca [1 x i8], align 1
  %msg.i69 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i51 = alloca [2 x i8], align 1
  %msg.i52 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i39 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -102, ptr %buf.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 48, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196607, ptr %5, align 4
  %config.i = getelementptr inbounds %struct.m88rs2000_state, ptr %1, i32 0, i32 1
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
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %entry.m88rs2000_writereg.exit_crit_edge, label %do.body.i

entry.m88rs2000_writereg.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit

do.body.i:                                        ; preds = %entry
  %16 = load i32, ptr @m88rs2000_debug, align 4
  %and.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.m88rs2000_writereg.exit_crit_edge, label %do.end.i

do.body.i.m88rs2000_writereg.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 154, i32 noundef 48, i32 noundef %call.i) #11
  br label %m88rs2000_writereg.exit

m88rs2000_writereg.exit:                          ; preds = %do.end.i, %do.body.i.m88rs2000_writereg.exit_crit_edge, %entry.m88rs2000_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %17 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -40, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %18 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i39) #7
  %19 = getelementptr inbounds i8, ptr %msg.i39, i32 4
  %20 = call ptr @memset(ptr %19, i32 255, i32 16)
  %21 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %config.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 4
  %conv.i41 = zext i8 %24 to i16
  %25 = ptrtoint ptr %msg.i39 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i41, ptr %msg.i39, align 4
  %flags.i42 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39, i32 0, i32 1
  %26 = ptrtoint ptr %flags.i42 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %flags.i42, align 2
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %19, align 4
  %buf.i44 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39, i32 0, i32 3
  %28 = ptrtoint ptr %buf.i44 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %b0.i, ptr %buf.i44, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39, i32 1
  %29 = load i8, ptr %22, align 4
  %conv5.i = zext i8 %29 to i16
  %30 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39, i32 1, i32 1
  %31 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39, i32 1, i32 2
  %32 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39, i32 1, i32 3
  %33 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %b1.i, ptr %buf8.i, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %call.i45 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i39, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i45)
  %cmp.not.i46 = icmp eq i32 %call.i45, 2
  br i1 %cmp.not.i46, label %m88rs2000_writereg.exit.m88rs2000_readreg.exit_crit_edge, label %do.body.i49

m88rs2000_writereg.exit.m88rs2000_readreg.exit_crit_edge: ; preds = %m88rs2000_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit

do.body.i49:                                      ; preds = %m88rs2000_writereg.exit
  %36 = load i32, ptr @m88rs2000_debug, align 4
  %and.i47 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i47)
  %tobool.not.i48 = icmp eq i32 %and.i47, 0
  br i1 %tobool.not.i48, label %do.body.i49.m88rs2000_readreg.exit_crit_edge, label %do.end.i50

do.body.i49.m88rs2000_readreg.exit_crit_edge:     ; preds = %do.body.i49
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit

do.end.i50:                                       ; preds = %do.body.i49
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 216, i32 noundef %call.i45) #11
  br label %m88rs2000_readreg.exit

m88rs2000_readreg.exit:                           ; preds = %do.end.i50, %do.body.i49.m88rs2000_readreg.exit_crit_edge, %m88rs2000_writereg.exit.m88rs2000_readreg.exit_crit_edge
  %37 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i39) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %39 = and i8 %38, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp.not = icmp eq i8 %39, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %m88rs2000_readreg.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i51) #7
  %40 = getelementptr inbounds [2 x i8], ptr %buf.i51, i32 0, i32 1
  %41 = ptrtoint ptr %buf.i51 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -102, ptr %buf.i51, align 1
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -80, ptr %40, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i52) #7
  %43 = getelementptr inbounds i8, ptr %msg.i52, i32 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 196607, ptr %43, align 4
  %45 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %config.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 4
  %conv.i54 = zext i8 %48 to i16
  %49 = ptrtoint ptr %msg.i52 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv.i54, ptr %msg.i52, align 4
  %flags.i55 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52, i32 0, i32 1
  %50 = ptrtoint ptr %flags.i55 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %flags.i55, align 2
  %buf1.i57 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52, i32 0, i32 3
  %51 = ptrtoint ptr %buf1.i57 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %buf.i51, ptr %buf1.i57, align 4
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %call.i58 = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %msg.i52, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i58)
  %cmp.not.i59 = icmp eq i32 %call.i58, 1
  br i1 %cmp.not.i59, label %if.then.m88rs2000_writereg.exit66_crit_edge, label %do.body.i62

if.then.m88rs2000_writereg.exit66_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit66

do.body.i62:                                      ; preds = %if.then
  %54 = load i32, ptr @m88rs2000_debug, align 4
  %and.i60 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i60)
  %tobool.not.i61 = icmp eq i32 %and.i60, 0
  br i1 %tobool.not.i61, label %do.body.i62.m88rs2000_writereg.exit66_crit_edge, label %do.end.i64

do.body.i62.m88rs2000_writereg.exit66_crit_edge:  ; preds = %do.body.i62
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit66

do.end.i64:                                       ; preds = %do.body.i62
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 154, i32 noundef 176, i32 noundef %call.i58) #11
  br label %m88rs2000_writereg.exit66

m88rs2000_writereg.exit66:                        ; preds = %do.end.i64, %do.body.i62.m88rs2000_writereg.exit66_crit_edge, %if.then.m88rs2000_writereg.exit66_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i52) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i51) #7
  %55 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %ber, align 4
  br label %cleanup

if.end:                                           ; preds = %m88rs2000_readreg.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i67) #7
  %56 = ptrtoint ptr %b0.i67 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -41, ptr %b0.i67, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i68) #7
  %57 = ptrtoint ptr %b1.i68 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %b1.i68, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i69) #7
  %58 = getelementptr inbounds i8, ptr %msg.i69, i32 4
  %59 = call ptr @memset(ptr %58, i32 255, i32 16)
  %60 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %config.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 4
  %conv.i71 = zext i8 %63 to i16
  %64 = ptrtoint ptr %msg.i69 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv.i71, ptr %msg.i69, align 4
  %flags.i72 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69, i32 0, i32 1
  %65 = ptrtoint ptr %flags.i72 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 0, ptr %flags.i72, align 2
  %66 = ptrtoint ptr %58 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 1, ptr %58, align 4
  %buf.i74 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69, i32 0, i32 3
  %67 = ptrtoint ptr %buf.i74 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %b0.i67, ptr %buf.i74, align 4
  %arrayinit.element.i75 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69, i32 1
  %68 = load i8, ptr %61, align 4
  %conv5.i76 = zext i8 %68 to i16
  %69 = ptrtoint ptr %arrayinit.element.i75 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv5.i76, ptr %arrayinit.element.i75, align 4
  %flags6.i77 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69, i32 1, i32 1
  %70 = ptrtoint ptr %flags6.i77 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 1, ptr %flags6.i77, align 2
  %len7.i78 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69, i32 1, i32 2
  %71 = ptrtoint ptr %len7.i78 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 1, ptr %len7.i78, align 4
  %buf8.i79 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69, i32 1, i32 3
  %72 = ptrtoint ptr %buf8.i79 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %b1.i68, ptr %buf8.i79, align 4
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 4
  %call.i80 = call i32 @i2c_transfer(ptr noundef %74, ptr noundef nonnull %msg.i69, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i80)
  %cmp.not.i81 = icmp eq i32 %call.i80, 2
  br i1 %cmp.not.i81, label %if.end.m88rs2000_readreg.exit87_crit_edge, label %do.body.i84

if.end.m88rs2000_readreg.exit87_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit87

do.body.i84:                                      ; preds = %if.end
  %75 = load i32, ptr @m88rs2000_debug, align 4
  %and.i82 = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i82)
  %tobool.not.i83 = icmp eq i32 %and.i82, 0
  br i1 %tobool.not.i83, label %do.body.i84.m88rs2000_readreg.exit87_crit_edge, label %do.end.i86

do.body.i84.m88rs2000_readreg.exit87_crit_edge:   ; preds = %do.body.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit87

do.end.i86:                                       ; preds = %do.body.i84
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 215, i32 noundef %call.i80) #11
  br label %m88rs2000_readreg.exit87

m88rs2000_readreg.exit87:                         ; preds = %do.end.i86, %do.body.i84.m88rs2000_readreg.exit87_crit_edge, %if.end.m88rs2000_readreg.exit87_crit_edge
  %76 = ptrtoint ptr %b1.i68 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %b1.i68, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i69) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i68) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i67) #7
  %conv5 = zext i8 %77 to i32
  %shl = shl nuw nsw i32 %conv5, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i88) #7
  %78 = ptrtoint ptr %b0.i88 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -42, ptr %b0.i88, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i89) #7
  %79 = ptrtoint ptr %b1.i89 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %b1.i89, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i90) #7
  %80 = getelementptr inbounds i8, ptr %msg.i90, i32 4
  %81 = call ptr @memset(ptr %80, i32 255, i32 16)
  %82 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %config.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %83, align 4
  %conv.i92 = zext i8 %85 to i16
  %86 = ptrtoint ptr %msg.i90 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv.i92, ptr %msg.i90, align 4
  %flags.i93 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i90, i32 0, i32 1
  %87 = ptrtoint ptr %flags.i93 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 0, ptr %flags.i93, align 2
  %88 = ptrtoint ptr %80 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 1, ptr %80, align 4
  %buf.i95 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i90, i32 0, i32 3
  %89 = ptrtoint ptr %buf.i95 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %b0.i88, ptr %buf.i95, align 4
  %arrayinit.element.i96 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i90, i32 1
  %90 = load i8, ptr %83, align 4
  %conv5.i97 = zext i8 %90 to i16
  %91 = ptrtoint ptr %arrayinit.element.i96 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %conv5.i97, ptr %arrayinit.element.i96, align 4
  %flags6.i98 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i90, i32 1, i32 1
  %92 = ptrtoint ptr %flags6.i98 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 1, ptr %flags6.i98, align 2
  %len7.i99 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i90, i32 1, i32 2
  %93 = ptrtoint ptr %len7.i99 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 1, ptr %len7.i99, align 4
  %buf8.i100 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i90, i32 1, i32 3
  %94 = ptrtoint ptr %buf8.i100 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %b1.i89, ptr %buf8.i100, align 4
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %1, align 4
  %call.i101 = call i32 @i2c_transfer(ptr noundef %96, ptr noundef nonnull %msg.i90, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i101)
  %cmp.not.i102 = icmp eq i32 %call.i101, 2
  br i1 %cmp.not.i102, label %m88rs2000_readreg.exit87.m88rs2000_readreg.exit108_crit_edge, label %do.body.i105

m88rs2000_readreg.exit87.m88rs2000_readreg.exit108_crit_edge: ; preds = %m88rs2000_readreg.exit87
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit108

do.body.i105:                                     ; preds = %m88rs2000_readreg.exit87
  %97 = load i32, ptr @m88rs2000_debug, align 4
  %and.i103 = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i103)
  %tobool.not.i104 = icmp eq i32 %and.i103, 0
  br i1 %tobool.not.i104, label %do.body.i105.m88rs2000_readreg.exit108_crit_edge, label %do.end.i107

do.body.i105.m88rs2000_readreg.exit108_crit_edge: ; preds = %do.body.i105
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit108

do.end.i107:                                      ; preds = %do.body.i105
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 214, i32 noundef %call.i101) #11
  br label %m88rs2000_readreg.exit108

m88rs2000_readreg.exit108:                        ; preds = %do.end.i107, %do.body.i105.m88rs2000_readreg.exit108_crit_edge, %m88rs2000_readreg.exit87.m88rs2000_readreg.exit108_crit_edge
  %98 = ptrtoint ptr %b1.i89 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %b1.i89, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i90) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i89) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i88) #7
  %conv7 = zext i8 %99 to i32
  %or = or i32 %shl, %conv7
  %100 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %or, ptr %ber, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i109) #7
  %101 = ptrtoint ptr %b0.i109 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -39, ptr %b0.i109, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i110) #7
  %102 = ptrtoint ptr %b1.i110 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %b1.i110, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i111) #7
  %103 = getelementptr inbounds i8, ptr %msg.i111, i32 4
  %104 = call ptr @memset(ptr %103, i32 255, i32 16)
  %105 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %config.i, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %106, align 4
  %conv.i113 = zext i8 %108 to i16
  %109 = ptrtoint ptr %msg.i111 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %conv.i113, ptr %msg.i111, align 4
  %flags.i114 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i111, i32 0, i32 1
  %110 = ptrtoint ptr %flags.i114 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 0, ptr %flags.i114, align 2
  %111 = ptrtoint ptr %103 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 1, ptr %103, align 4
  %buf.i116 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i111, i32 0, i32 3
  %112 = ptrtoint ptr %buf.i116 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %b0.i109, ptr %buf.i116, align 4
  %arrayinit.element.i117 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i111, i32 1
  %113 = load i8, ptr %106, align 4
  %conv5.i118 = zext i8 %113 to i16
  %114 = ptrtoint ptr %arrayinit.element.i117 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %conv5.i118, ptr %arrayinit.element.i117, align 4
  %flags6.i119 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i111, i32 1, i32 1
  %115 = ptrtoint ptr %flags6.i119 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 1, ptr %flags6.i119, align 2
  %len7.i120 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i111, i32 1, i32 2
  %116 = ptrtoint ptr %len7.i120 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 1, ptr %len7.i120, align 4
  %buf8.i121 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i111, i32 1, i32 3
  %117 = ptrtoint ptr %buf8.i121 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %b1.i110, ptr %buf8.i121, align 4
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %1, align 4
  %call.i122 = call i32 @i2c_transfer(ptr noundef %119, ptr noundef nonnull %msg.i111, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i122)
  %cmp.not.i123 = icmp eq i32 %call.i122, 2
  br i1 %cmp.not.i123, label %m88rs2000_readreg.exit108.m88rs2000_readreg.exit129_crit_edge, label %do.body.i126

m88rs2000_readreg.exit108.m88rs2000_readreg.exit129_crit_edge: ; preds = %m88rs2000_readreg.exit108
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit129

do.body.i126:                                     ; preds = %m88rs2000_readreg.exit108
  %120 = load i32, ptr @m88rs2000_debug, align 4
  %and.i124 = and i32 %120, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i124)
  %tobool.not.i125 = icmp eq i32 %and.i124, 0
  br i1 %tobool.not.i125, label %do.body.i126.m88rs2000_readreg.exit129_crit_edge, label %do.end.i128

do.body.i126.m88rs2000_readreg.exit129_crit_edge: ; preds = %do.body.i126
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit129

do.end.i128:                                      ; preds = %do.body.i126
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 217, i32 noundef %call.i122) #11
  br label %m88rs2000_readreg.exit129

m88rs2000_readreg.exit129:                        ; preds = %do.end.i128, %do.body.i126.m88rs2000_readreg.exit129_crit_edge, %m88rs2000_readreg.exit108.m88rs2000_readreg.exit129_crit_edge
  %121 = ptrtoint ptr %b1.i110 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %b1.i110, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i111) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i110) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i109) #7
  %123 = and i8 %122, -8
  %124 = or i8 %123, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i130) #7
  %125 = getelementptr inbounds [2 x i8], ptr %buf.i130, i32 0, i32 1
  %126 = ptrtoint ptr %buf.i130 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 -39, ptr %buf.i130, align 1
  %127 = ptrtoint ptr %125 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %124, ptr %125, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i131) #7
  %128 = getelementptr inbounds i8, ptr %msg.i131, i32 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 196607, ptr %128, align 4
  %130 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %config.i, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %131, align 4
  %conv.i133 = zext i8 %133 to i16
  %134 = ptrtoint ptr %msg.i131 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %conv.i133, ptr %msg.i131, align 4
  %flags.i134 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i131, i32 0, i32 1
  %135 = ptrtoint ptr %flags.i134 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 0, ptr %flags.i134, align 2
  %buf1.i136 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i131, i32 0, i32 3
  %136 = ptrtoint ptr %buf1.i136 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %buf.i130, ptr %buf1.i136, align 4
  %137 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %1, align 4
  %call.i137 = call i32 @i2c_transfer(ptr noundef %138, ptr noundef nonnull %msg.i131, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i137)
  %cmp.not.i138 = icmp eq i32 %call.i137, 1
  br i1 %cmp.not.i138, label %m88rs2000_readreg.exit129.m88rs2000_writereg.exit145_crit_edge, label %do.body.i141

m88rs2000_readreg.exit129.m88rs2000_writereg.exit145_crit_edge: ; preds = %m88rs2000_readreg.exit129
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit145

do.body.i141:                                     ; preds = %m88rs2000_readreg.exit129
  %139 = load i32, ptr @m88rs2000_debug, align 4
  %and.i139 = and i32 %139, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i139)
  %tobool.not.i140 = icmp eq i32 %and.i139, 0
  br i1 %tobool.not.i140, label %do.body.i141.m88rs2000_writereg.exit145_crit_edge, label %do.end.i143

do.body.i141.m88rs2000_writereg.exit145_crit_edge: ; preds = %do.body.i141
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit145

do.end.i143:                                      ; preds = %do.body.i141
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i = zext i8 %124 to i32
  %call7.i142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 217, i32 noundef %conv6.i, i32 noundef %call.i137) #11
  br label %m88rs2000_writereg.exit145

m88rs2000_writereg.exit145:                       ; preds = %do.end.i143, %do.body.i141.m88rs2000_writereg.exit145_crit_edge, %m88rs2000_readreg.exit129.m88rs2000_writereg.exit145_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i131) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i130) #7
  %and15 = and i8 %38, -57
  %or16 = or i8 %and15, 48
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i146) #7
  %140 = getelementptr inbounds [2 x i8], ptr %buf.i146, i32 0, i32 1
  %141 = ptrtoint ptr %buf.i146 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 -40, ptr %buf.i146, align 1
  %142 = ptrtoint ptr %140 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %or16, ptr %140, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i147) #7
  %143 = getelementptr inbounds i8, ptr %msg.i147, i32 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 196607, ptr %143, align 4
  %145 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %config.i, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %146, align 4
  %conv.i149 = zext i8 %148 to i16
  %149 = ptrtoint ptr %msg.i147 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %conv.i149, ptr %msg.i147, align 4
  %flags.i150 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i147, i32 0, i32 1
  %150 = ptrtoint ptr %flags.i150 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 0, ptr %flags.i150, align 2
  %buf1.i152 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i147, i32 0, i32 3
  %151 = ptrtoint ptr %buf1.i152 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %buf.i146, ptr %buf1.i152, align 4
  %152 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %1, align 4
  %call.i153 = call i32 @i2c_transfer(ptr noundef %153, ptr noundef nonnull %msg.i147, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i153)
  %cmp.not.i154 = icmp eq i32 %call.i153, 1
  br i1 %cmp.not.i154, label %m88rs2000_writereg.exit145.m88rs2000_writereg.exit162_crit_edge, label %do.body.i157

m88rs2000_writereg.exit145.m88rs2000_writereg.exit162_crit_edge: ; preds = %m88rs2000_writereg.exit145
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit162

do.body.i157:                                     ; preds = %m88rs2000_writereg.exit145
  %154 = load i32, ptr @m88rs2000_debug, align 4
  %and.i155 = and i32 %154, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i155)
  %tobool.not.i156 = icmp eq i32 %and.i155, 0
  br i1 %tobool.not.i156, label %do.body.i157.m88rs2000_writereg.exit162_crit_edge, label %do.end.i160

do.body.i157.m88rs2000_writereg.exit162_crit_edge: ; preds = %do.body.i157
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit162

do.end.i160:                                      ; preds = %do.body.i157
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i158 = zext i8 %or16 to i32
  %call7.i159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 216, i32 noundef %conv6.i158, i32 noundef %call.i153) #11
  br label %m88rs2000_writereg.exit162

m88rs2000_writereg.exit162:                       ; preds = %do.end.i160, %do.body.i157.m88rs2000_writereg.exit162_crit_edge, %m88rs2000_writereg.exit145.m88rs2000_writereg.exit162_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i147) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i146) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i163) #7
  %155 = getelementptr inbounds [2 x i8], ptr %buf.i163, i32 0, i32 1
  %156 = ptrtoint ptr %buf.i163 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 -40, ptr %buf.i163, align 1
  %157 = ptrtoint ptr %155 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %or16, ptr %155, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i164) #7
  %158 = getelementptr inbounds i8, ptr %msg.i164, i32 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 196607, ptr %158, align 4
  %160 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %config.i, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %161, align 4
  %conv.i166 = zext i8 %163 to i16
  %164 = ptrtoint ptr %msg.i164 to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %conv.i166, ptr %msg.i164, align 4
  %flags.i167 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i164, i32 0, i32 1
  %165 = ptrtoint ptr %flags.i167 to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 0, ptr %flags.i167, align 2
  %buf1.i169 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i164, i32 0, i32 3
  %166 = ptrtoint ptr %buf1.i169 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %buf.i163, ptr %buf1.i169, align 4
  %167 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %1, align 4
  %call.i170 = call i32 @i2c_transfer(ptr noundef %168, ptr noundef nonnull %msg.i164, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i170)
  %cmp.not.i171 = icmp eq i32 %call.i170, 1
  br i1 %cmp.not.i171, label %m88rs2000_writereg.exit162.m88rs2000_writereg.exit179_crit_edge, label %do.body.i174

m88rs2000_writereg.exit162.m88rs2000_writereg.exit179_crit_edge: ; preds = %m88rs2000_writereg.exit162
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit179

do.body.i174:                                     ; preds = %m88rs2000_writereg.exit162
  %169 = load i32, ptr @m88rs2000_debug, align 4
  %and.i172 = and i32 %169, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i172)
  %tobool.not.i173 = icmp eq i32 %and.i172, 0
  br i1 %tobool.not.i173, label %do.body.i174.m88rs2000_writereg.exit179_crit_edge, label %do.end.i177

do.body.i174.m88rs2000_writereg.exit179_crit_edge: ; preds = %do.body.i174
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit179

do.end.i177:                                      ; preds = %do.body.i174
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i175 = zext i8 %or16 to i32
  %call7.i176 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 216, i32 noundef %conv6.i175, i32 noundef %call.i170) #11
  br label %m88rs2000_writereg.exit179

m88rs2000_writereg.exit179:                       ; preds = %do.end.i177, %do.body.i174.m88rs2000_writereg.exit179_crit_edge, %m88rs2000_writereg.exit162.m88rs2000_writereg.exit179_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i164) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i163) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i180) #7
  %170 = getelementptr inbounds [2 x i8], ptr %buf.i180, i32 0, i32 1
  %171 = ptrtoint ptr %buf.i180 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 -102, ptr %buf.i180, align 1
  %172 = ptrtoint ptr %170 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 -80, ptr %170, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i181) #7
  %173 = getelementptr inbounds i8, ptr %msg.i181, i32 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 196607, ptr %173, align 4
  %175 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %config.i, align 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %176, align 4
  %conv.i183 = zext i8 %178 to i16
  %179 = ptrtoint ptr %msg.i181 to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %conv.i183, ptr %msg.i181, align 4
  %flags.i184 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i181, i32 0, i32 1
  %180 = ptrtoint ptr %flags.i184 to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 0, ptr %flags.i184, align 2
  %buf1.i186 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i181, i32 0, i32 3
  %181 = ptrtoint ptr %buf1.i186 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %buf.i180, ptr %buf1.i186, align 4
  %182 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %1, align 4
  %call.i187 = call i32 @i2c_transfer(ptr noundef %183, ptr noundef nonnull %msg.i181, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i187)
  %cmp.not.i188 = icmp eq i32 %call.i187, 1
  br i1 %cmp.not.i188, label %m88rs2000_writereg.exit179.m88rs2000_writereg.exit195_crit_edge, label %do.body.i191

m88rs2000_writereg.exit179.m88rs2000_writereg.exit195_crit_edge: ; preds = %m88rs2000_writereg.exit179
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit195

do.body.i191:                                     ; preds = %m88rs2000_writereg.exit179
  %184 = load i32, ptr @m88rs2000_debug, align 4
  %and.i189 = and i32 %184, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i189)
  %tobool.not.i190 = icmp eq i32 %and.i189, 0
  br i1 %tobool.not.i190, label %do.body.i191.m88rs2000_writereg.exit195_crit_edge, label %do.end.i193

do.body.i191.m88rs2000_writereg.exit195_crit_edge: ; preds = %do.body.i191
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit195

do.end.i193:                                      ; preds = %do.body.i191
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i192 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 154, i32 noundef 176, i32 noundef %call.i187) #11
  br label %m88rs2000_writereg.exit195

m88rs2000_writereg.exit195:                       ; preds = %do.end.i193, %do.body.i191.m88rs2000_writereg.exit195_crit_edge, %m88rs2000_writereg.exit179.m88rs2000_writereg.exit195_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i181) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i180) #7
  br label %cleanup

cleanup:                                          ; preds = %m88rs2000_writereg.exit195, %m88rs2000_writereg.exit66
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88rs2000_read_signal_strength(ptr noundef %fe, ptr noundef %strength) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %get_rf_strength = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 13
  %0 = ptrtoint ptr %get_rf_strength to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_rf_strength, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %1(ptr noundef %fe, ptr noundef %strength) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88rs2000_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
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
  store i8 101, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.m88rs2000_state, ptr %1, i32 0, i32 1
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
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.m88rs2000_readreg.exit_crit_edge, label %do.body.i

entry.m88rs2000_readreg.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit

do.body.i:                                        ; preds = %entry
  %21 = load i32, ptr @m88rs2000_debug, align 4
  %and.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.m88rs2000_readreg.exit_crit_edge, label %do.end.i

do.body.i.m88rs2000_readreg.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 101, i32 noundef %call.i) #11
  br label %m88rs2000_readreg.exit

m88rs2000_readreg.exit:                           ; preds = %do.end.i, %do.body.i.m88rs2000_readreg.exit_crit_edge, %entry.m88rs2000_readreg.exit_crit_edge
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %conv = zext i8 %23 to i16
  %mul = shl i16 %conv, 9
  %24 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %mul, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88rs2000_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #0 align 64 {
entry:
  %buf.i93 = alloca [2 x i8], align 1
  %msg.i94 = alloca %struct.i2c_msg, align 4
  %buf.i76 = alloca [2 x i8], align 1
  %msg.i77 = alloca %struct.i2c_msg, align 4
  %buf.i64 = alloca [2 x i8], align 1
  %msg.i65 = alloca %struct.i2c_msg, align 4
  %b0.i43 = alloca [1 x i8], align 1
  %b1.i44 = alloca [1 x i8], align 1
  %msg.i45 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i22 = alloca [1 x i8], align 1
  %b1.i23 = alloca [1 x i8], align 1
  %msg.i24 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
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
  store i8 -43, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.m88rs2000_state, ptr %1, i32 0, i32 1
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
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.m88rs2000_readreg.exit_crit_edge, label %do.body.i

entry.m88rs2000_readreg.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit

do.body.i:                                        ; preds = %entry
  %21 = load i32, ptr @m88rs2000_debug, align 4
  %and.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.m88rs2000_readreg.exit_crit_edge, label %do.end.i

do.body.i.m88rs2000_readreg.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 213, i32 noundef %call.i) #11
  br label %m88rs2000_readreg.exit

m88rs2000_readreg.exit:                           ; preds = %do.end.i, %do.body.i.m88rs2000_readreg.exit_crit_edge, %entry.m88rs2000_readreg.exit_crit_edge
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %conv = zext i8 %23 to i32
  %shl = shl nuw nsw i32 %conv, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i22) #7
  %24 = ptrtoint ptr %b0.i22 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -44, ptr %b0.i22, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i23) #7
  %25 = ptrtoint ptr %b1.i23 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %b1.i23, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i24) #7
  %26 = getelementptr inbounds i8, ptr %msg.i24, i32 4
  %27 = call ptr @memset(ptr %26, i32 255, i32 16)
  %28 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %config.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 4
  %conv.i26 = zext i8 %31 to i16
  %32 = ptrtoint ptr %msg.i24 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i26, ptr %msg.i24, align 4
  %flags.i27 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i27 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i27, align 2
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %26, align 4
  %buf.i29 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 0, i32 3
  %35 = ptrtoint ptr %buf.i29 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %b0.i22, ptr %buf.i29, align 4
  %arrayinit.element.i30 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 1
  %36 = load i8, ptr %29, align 4
  %conv5.i31 = zext i8 %36 to i16
  %37 = ptrtoint ptr %arrayinit.element.i30 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv5.i31, ptr %arrayinit.element.i30, align 4
  %flags6.i32 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 1, i32 1
  %38 = ptrtoint ptr %flags6.i32 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %flags6.i32, align 2
  %len7.i33 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 1, i32 2
  %39 = ptrtoint ptr %len7.i33 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %len7.i33, align 4
  %buf8.i34 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 1, i32 3
  %40 = ptrtoint ptr %buf8.i34 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %b1.i23, ptr %buf8.i34, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %call.i35 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg.i24, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i35)
  %cmp.not.i36 = icmp eq i32 %call.i35, 2
  br i1 %cmp.not.i36, label %m88rs2000_readreg.exit.m88rs2000_readreg.exit42_crit_edge, label %do.body.i39

m88rs2000_readreg.exit.m88rs2000_readreg.exit42_crit_edge: ; preds = %m88rs2000_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit42

do.body.i39:                                      ; preds = %m88rs2000_readreg.exit
  %43 = load i32, ptr @m88rs2000_debug, align 4
  %and.i37 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i37)
  %tobool.not.i38 = icmp eq i32 %and.i37, 0
  br i1 %tobool.not.i38, label %do.body.i39.m88rs2000_readreg.exit42_crit_edge, label %do.end.i41

do.body.i39.m88rs2000_readreg.exit42_crit_edge:   ; preds = %do.body.i39
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit42

do.end.i41:                                       ; preds = %do.body.i39
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 212, i32 noundef %call.i35) #11
  br label %m88rs2000_readreg.exit42

m88rs2000_readreg.exit42:                         ; preds = %do.end.i41, %do.body.i39.m88rs2000_readreg.exit42_crit_edge, %m88rs2000_readreg.exit.m88rs2000_readreg.exit42_crit_edge
  %44 = ptrtoint ptr %b1.i23 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %b1.i23, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i24) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i23) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i22) #7
  %conv2 = zext i8 %45 to i32
  %or = or i32 %shl, %conv2
  %46 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or, ptr %ucblocks, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i43) #7
  %47 = ptrtoint ptr %b0.i43 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -40, ptr %b0.i43, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i44) #7
  %48 = ptrtoint ptr %b1.i44 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %b1.i44, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i45) #7
  %49 = getelementptr inbounds i8, ptr %msg.i45, i32 4
  %50 = call ptr @memset(ptr %49, i32 255, i32 16)
  %51 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %config.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %52, align 4
  %conv.i47 = zext i8 %54 to i16
  %55 = ptrtoint ptr %msg.i45 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i47, ptr %msg.i45, align 4
  %flags.i48 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 0, i32 1
  %56 = ptrtoint ptr %flags.i48 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %flags.i48, align 2
  %57 = ptrtoint ptr %49 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 1, ptr %49, align 4
  %buf.i50 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 0, i32 3
  %58 = ptrtoint ptr %buf.i50 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %b0.i43, ptr %buf.i50, align 4
  %arrayinit.element.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 1
  %59 = load i8, ptr %52, align 4
  %conv5.i52 = zext i8 %59 to i16
  %60 = ptrtoint ptr %arrayinit.element.i51 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv5.i52, ptr %arrayinit.element.i51, align 4
  %flags6.i53 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 1, i32 1
  %61 = ptrtoint ptr %flags6.i53 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 1, ptr %flags6.i53, align 2
  %len7.i54 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 1, i32 2
  %62 = ptrtoint ptr %len7.i54 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 1, ptr %len7.i54, align 4
  %buf8.i55 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 1, i32 3
  %63 = ptrtoint ptr %buf8.i55 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %b1.i44, ptr %buf8.i55, align 4
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  %call.i56 = call i32 @i2c_transfer(ptr noundef %65, ptr noundef nonnull %msg.i45, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i56)
  %cmp.not.i57 = icmp eq i32 %call.i56, 2
  br i1 %cmp.not.i57, label %m88rs2000_readreg.exit42.m88rs2000_readreg.exit63_crit_edge, label %do.body.i60

m88rs2000_readreg.exit42.m88rs2000_readreg.exit63_crit_edge: ; preds = %m88rs2000_readreg.exit42
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit63

do.body.i60:                                      ; preds = %m88rs2000_readreg.exit42
  %66 = load i32, ptr @m88rs2000_debug, align 4
  %and.i58 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i58)
  %tobool.not.i59 = icmp eq i32 %and.i58, 0
  br i1 %tobool.not.i59, label %do.body.i60.m88rs2000_readreg.exit63_crit_edge, label %do.end.i62

do.body.i60.m88rs2000_readreg.exit63_crit_edge:   ; preds = %do.body.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit63

do.end.i62:                                       ; preds = %do.body.i60
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 216, i32 noundef %call.i56) #11
  br label %m88rs2000_readreg.exit63

m88rs2000_readreg.exit63:                         ; preds = %do.end.i62, %do.body.i60.m88rs2000_readreg.exit63_crit_edge, %m88rs2000_readreg.exit42.m88rs2000_readreg.exit63_crit_edge
  %67 = ptrtoint ptr %b1.i44 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %b1.i44, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i45) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i44) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i43) #7
  %and = and i8 %68, -33
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i64) #7
  %69 = getelementptr inbounds [2 x i8], ptr %buf.i64, i32 0, i32 1
  %70 = ptrtoint ptr %buf.i64 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -40, ptr %buf.i64, align 1
  %71 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %and, ptr %69, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i65) #7
  %72 = getelementptr inbounds i8, ptr %msg.i65, i32 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 196607, ptr %72, align 4
  %74 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %config.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %75, align 4
  %conv.i67 = zext i8 %77 to i16
  %78 = ptrtoint ptr %msg.i65 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv.i67, ptr %msg.i65, align 4
  %flags.i68 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i65, i32 0, i32 1
  %79 = ptrtoint ptr %flags.i68 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 0, ptr %flags.i68, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i65, i32 0, i32 3
  %80 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %buf.i64, ptr %buf1.i, align 4
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  %call.i70 = call i32 @i2c_transfer(ptr noundef %82, ptr noundef nonnull %msg.i65, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i70)
  %cmp.not.i71 = icmp eq i32 %call.i70, 1
  br i1 %cmp.not.i71, label %m88rs2000_readreg.exit63.m88rs2000_writereg.exit_crit_edge, label %do.body.i74

m88rs2000_readreg.exit63.m88rs2000_writereg.exit_crit_edge: ; preds = %m88rs2000_readreg.exit63
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit

do.body.i74:                                      ; preds = %m88rs2000_readreg.exit63
  %83 = load i32, ptr @m88rs2000_debug, align 4
  %and.i72 = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i72)
  %tobool.not.i73 = icmp eq i32 %and.i72, 0
  br i1 %tobool.not.i73, label %do.body.i74.m88rs2000_writereg.exit_crit_edge, label %do.end.i75

do.body.i74.m88rs2000_writereg.exit_crit_edge:    ; preds = %do.body.i74
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit

do.end.i75:                                       ; preds = %do.body.i74
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i = zext i8 %and to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 216, i32 noundef %conv6.i, i32 noundef %call.i70) #11
  br label %m88rs2000_writereg.exit

m88rs2000_writereg.exit:                          ; preds = %do.end.i75, %do.body.i74.m88rs2000_writereg.exit_crit_edge, %m88rs2000_readreg.exit63.m88rs2000_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i65) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i64) #7
  %84 = or i8 %68, 32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i76) #7
  %85 = getelementptr inbounds [2 x i8], ptr %buf.i76, i32 0, i32 1
  %86 = ptrtoint ptr %buf.i76 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 -40, ptr %buf.i76, align 1
  %87 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %84, ptr %85, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i77) #7
  %88 = getelementptr inbounds i8, ptr %msg.i77, i32 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 196607, ptr %88, align 4
  %90 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %config.i, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %91, align 4
  %conv.i79 = zext i8 %93 to i16
  %94 = ptrtoint ptr %msg.i77 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv.i79, ptr %msg.i77, align 4
  %flags.i80 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i77, i32 0, i32 1
  %95 = ptrtoint ptr %flags.i80 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 0, ptr %flags.i80, align 2
  %buf1.i82 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i77, i32 0, i32 3
  %96 = ptrtoint ptr %buf1.i82 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %buf.i76, ptr %buf1.i82, align 4
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %1, align 4
  %call.i83 = call i32 @i2c_transfer(ptr noundef %98, ptr noundef nonnull %msg.i77, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i83)
  %cmp.not.i84 = icmp eq i32 %call.i83, 1
  br i1 %cmp.not.i84, label %m88rs2000_writereg.exit.m88rs2000_writereg.exit92_crit_edge, label %do.body.i87

m88rs2000_writereg.exit.m88rs2000_writereg.exit92_crit_edge: ; preds = %m88rs2000_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit92

do.body.i87:                                      ; preds = %m88rs2000_writereg.exit
  %99 = load i32, ptr @m88rs2000_debug, align 4
  %and.i85 = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i85)
  %tobool.not.i86 = icmp eq i32 %and.i85, 0
  br i1 %tobool.not.i86, label %do.body.i87.m88rs2000_writereg.exit92_crit_edge, label %do.end.i90

do.body.i87.m88rs2000_writereg.exit92_crit_edge:  ; preds = %do.body.i87
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit92

do.end.i90:                                       ; preds = %do.body.i87
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i88 = zext i8 %84 to i32
  %call7.i89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 216, i32 noundef %conv6.i88, i32 noundef %call.i83) #11
  br label %m88rs2000_writereg.exit92

m88rs2000_writereg.exit92:                        ; preds = %do.end.i90, %do.body.i87.m88rs2000_writereg.exit92_crit_edge, %m88rs2000_writereg.exit.m88rs2000_writereg.exit92_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i77) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i76) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i93) #7
  %100 = getelementptr inbounds [2 x i8], ptr %buf.i93, i32 0, i32 1
  %101 = ptrtoint ptr %buf.i93 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -40, ptr %buf.i93, align 1
  %102 = ptrtoint ptr %100 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %84, ptr %100, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i94) #7
  %103 = getelementptr inbounds i8, ptr %msg.i94, i32 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 196607, ptr %103, align 4
  %105 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %config.i, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %106, align 4
  %conv.i96 = zext i8 %108 to i16
  %109 = ptrtoint ptr %msg.i94 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %conv.i96, ptr %msg.i94, align 4
  %flags.i97 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i94, i32 0, i32 1
  %110 = ptrtoint ptr %flags.i97 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 0, ptr %flags.i97, align 2
  %buf1.i99 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i94, i32 0, i32 3
  %111 = ptrtoint ptr %buf1.i99 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %buf.i93, ptr %buf1.i99, align 4
  %112 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %1, align 4
  %call.i100 = call i32 @i2c_transfer(ptr noundef %113, ptr noundef nonnull %msg.i94, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i100)
  %cmp.not.i101 = icmp eq i32 %call.i100, 1
  br i1 %cmp.not.i101, label %m88rs2000_writereg.exit92.m88rs2000_writereg.exit109_crit_edge, label %do.body.i104

m88rs2000_writereg.exit92.m88rs2000_writereg.exit109_crit_edge: ; preds = %m88rs2000_writereg.exit92
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit109

do.body.i104:                                     ; preds = %m88rs2000_writereg.exit92
  %114 = load i32, ptr @m88rs2000_debug, align 4
  %and.i102 = and i32 %114, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i102)
  %tobool.not.i103 = icmp eq i32 %and.i102, 0
  br i1 %tobool.not.i103, label %do.body.i104.m88rs2000_writereg.exit109_crit_edge, label %do.end.i107

do.body.i104.m88rs2000_writereg.exit109_crit_edge: ; preds = %do.body.i104
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit109

do.end.i107:                                      ; preds = %do.body.i104
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i105 = zext i8 %84 to i32
  %call7.i106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 216, i32 noundef %conv6.i105, i32 noundef %call.i100) #11
  br label %m88rs2000_writereg.exit109

m88rs2000_writereg.exit109:                       ; preds = %do.end.i107, %do.body.i104.m88rs2000_writereg.exit109_crit_edge, %m88rs2000_writereg.exit92.m88rs2000_writereg.exit109_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i94) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i93) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88rs2000_send_diseqc_msg(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %m) #0 align 64 {
entry:
  %buf.i274 = alloca [2 x i8], align 1
  %msg.i275 = alloca %struct.i2c_msg, align 4
  %buf.i257 = alloca [2 x i8], align 1
  %msg.i258 = alloca %struct.i2c_msg, align 4
  %b0.i236 = alloca [1 x i8], align 1
  %b1.i237 = alloca [1 x i8], align 1
  %msg.i238 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i219 = alloca [2 x i8], align 1
  %msg.i220 = alloca %struct.i2c_msg, align 4
  %b0.i198 = alloca [1 x i8], align 1
  %b1.i199 = alloca [1 x i8], align 1
  %msg.i200 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i177 = alloca [1 x i8], align 1
  %b1.i178 = alloca [1 x i8], align 1
  %msg.i179 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i160 = alloca [2 x i8], align 1
  %msg.i161 = alloca %struct.i2c_msg, align 4
  %b0.i139 = alloca [1 x i8], align 1
  %b1.i140 = alloca [1 x i8], align 1
  %msg.i141 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i121 = alloca [2 x i8], align 1
  %msg.i122 = alloca %struct.i2c_msg, align 4
  %buf.i105 = alloca [2 x i8], align 1
  %msg.i106 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i93 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @m88rs2000_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %3 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -102, ptr %buf.i, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 48, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4
  %config.i = getelementptr inbounds %struct.m88rs2000_state, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  %conv.i = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  store i16 2, ptr %6, align 4
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf.i, ptr %buf1.i, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %do.end3.m88rs2000_writereg.exit_crit_edge, label %do.body.i

do.end3.m88rs2000_writereg.exit_crit_edge:        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit

do.body.i:                                        ; preds = %do.end3
  %17 = load i32, ptr @m88rs2000_debug, align 4
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.m88rs2000_writereg.exit_crit_edge, label %do.end.i

do.body.i.m88rs2000_writereg.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 154, i32 noundef 48, i32 noundef %call.i) #11
  br label %m88rs2000_writereg.exit

m88rs2000_writereg.exit:                          ; preds = %do.end.i, %do.body.i.m88rs2000_writereg.exit_crit_edge, %do.end3.m88rs2000_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %18 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -78, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %19 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i93) #7
  %20 = getelementptr inbounds i8, ptr %msg.i93, i32 4
  %21 = call ptr @memset(ptr %20, i32 255, i32 16)
  %22 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %config.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 4
  %conv.i95 = zext i8 %25 to i16
  %26 = ptrtoint ptr %msg.i93 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i95, ptr %msg.i93, align 4
  %flags.i96 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i93, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i96 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i96, align 2
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %20, align 4
  %buf.i98 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i93, i32 0, i32 3
  %29 = ptrtoint ptr %buf.i98 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %b0.i, ptr %buf.i98, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i93, i32 1
  %30 = load i8, ptr %23, align 4
  %conv5.i = zext i8 %30 to i16
  %31 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i93, i32 1, i32 1
  %32 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i93, i32 1, i32 2
  %33 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i93, i32 1, i32 3
  %34 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %b1.i, ptr %buf8.i, align 4
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %call.i99 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %msg.i93, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i99)
  %cmp.not.i100 = icmp eq i32 %call.i99, 2
  br i1 %cmp.not.i100, label %m88rs2000_writereg.exit.m88rs2000_readreg.exit_crit_edge, label %do.body.i103

m88rs2000_writereg.exit.m88rs2000_readreg.exit_crit_edge: ; preds = %m88rs2000_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit

do.body.i103:                                     ; preds = %m88rs2000_writereg.exit
  %37 = load i32, ptr @m88rs2000_debug, align 4
  %and.i101 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i101)
  %tobool.not.i102 = icmp eq i32 %and.i101, 0
  br i1 %tobool.not.i102, label %do.body.i103.m88rs2000_readreg.exit_crit_edge, label %do.end.i104

do.body.i103.m88rs2000_readreg.exit_crit_edge:    ; preds = %do.body.i103
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit

do.end.i104:                                      ; preds = %do.body.i103
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 178, i32 noundef %call.i99) #11
  br label %m88rs2000_readreg.exit

m88rs2000_readreg.exit:                           ; preds = %do.end.i104, %do.body.i103.m88rs2000_readreg.exit_crit_edge, %m88rs2000_writereg.exit.m88rs2000_readreg.exit_crit_edge
  %38 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i93) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %40 = and i8 %39, 63
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i105) #7
  %41 = getelementptr inbounds [2 x i8], ptr %buf.i105, i32 0, i32 1
  %42 = ptrtoint ptr %buf.i105 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -78, ptr %buf.i105, align 1
  %43 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %40, ptr %41, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i106) #7
  %44 = getelementptr inbounds i8, ptr %msg.i106, i32 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 196607, ptr %44, align 4
  %46 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %config.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %47, align 4
  %conv.i108 = zext i8 %49 to i16
  %50 = ptrtoint ptr %msg.i106 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv.i108, ptr %msg.i106, align 4
  %flags.i109 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i106, i32 0, i32 1
  %51 = ptrtoint ptr %flags.i109 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %flags.i109, align 2
  %buf1.i111 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i106, i32 0, i32 3
  %52 = ptrtoint ptr %buf1.i111 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %buf.i105, ptr %buf1.i111, align 4
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  %call.i112 = call i32 @i2c_transfer(ptr noundef %54, ptr noundef nonnull %msg.i106, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i112)
  %cmp.not.i113 = icmp eq i32 %call.i112, 1
  br i1 %cmp.not.i113, label %m88rs2000_readreg.exit.m88rs2000_writereg.exit120_crit_edge, label %do.body.i116

m88rs2000_readreg.exit.m88rs2000_writereg.exit120_crit_edge: ; preds = %m88rs2000_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit120

do.body.i116:                                     ; preds = %m88rs2000_readreg.exit
  %55 = load i32, ptr @m88rs2000_debug, align 4
  %and.i114 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i114)
  %tobool.not.i115 = icmp eq i32 %and.i114, 0
  br i1 %tobool.not.i115, label %do.body.i116.m88rs2000_writereg.exit120_crit_edge, label %do.end.i118

do.body.i116.m88rs2000_writereg.exit120_crit_edge: ; preds = %do.body.i116
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit120

do.end.i118:                                      ; preds = %do.body.i116
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i = zext i8 %40 to i32
  %call7.i117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 178, i32 noundef %conv6.i, i32 noundef %call.i112) #11
  br label %m88rs2000_writereg.exit120

m88rs2000_writereg.exit120:                       ; preds = %do.end.i118, %do.body.i116.m88rs2000_writereg.exit120_crit_edge, %m88rs2000_readreg.exit.m88rs2000_writereg.exit120_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i106) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i105) #7
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %m, i32 0, i32 1
  %56 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %msg_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp291.not = icmp eq i8 %57, 0
  br i1 %cmp291.not, label %m88rs2000_writereg.exit120.for.end_crit_edge, label %for.body.lr.ph

m88rs2000_writereg.exit120.for.end_crit_edge:     ; preds = %m88rs2000_writereg.exit120
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %m88rs2000_writereg.exit120
  %58 = getelementptr inbounds [2 x i8], ptr %buf.i121, i32 0, i32 1
  %59 = getelementptr inbounds i8, ptr %msg.i122, i32 4
  %flags.i125 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i122, i32 0, i32 1
  %buf1.i127 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i122, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %m88rs2000_writereg.exit138.for.body_crit_edge, %for.body.lr.ph
  %i.0292 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %m88rs2000_writereg.exit138.for.body_crit_edge ]
  %60 = trunc i32 %i.0292 to i8
  %conv11 = add i8 %60, -77
  %arrayidx = getelementptr [6 x i8], ptr %m, i32 0, i32 %i.0292
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i121) #7
  %63 = ptrtoint ptr %buf.i121 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv11, ptr %buf.i121, align 1
  %64 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %62, ptr %58, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i122) #7
  %65 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %59, align 4
  %66 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %config.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %67, align 4
  %conv.i124 = zext i8 %69 to i16
  %70 = ptrtoint ptr %msg.i122 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv.i124, ptr %msg.i122, align 4
  %71 = ptrtoint ptr %flags.i125 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 0, ptr %flags.i125, align 2
  store i16 2, ptr %59, align 4
  %72 = ptrtoint ptr %buf1.i127 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %buf.i121, ptr %buf1.i127, align 4
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 4
  %call.i128 = call i32 @i2c_transfer(ptr noundef %74, ptr noundef nonnull %msg.i122, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i128)
  %cmp.not.i129 = icmp eq i32 %call.i128, 1
  br i1 %cmp.not.i129, label %for.body.m88rs2000_writereg.exit138_crit_edge, label %do.body.i132

for.body.m88rs2000_writereg.exit138_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit138

do.body.i132:                                     ; preds = %for.body
  %75 = load i32, ptr @m88rs2000_debug, align 4
  %and.i130 = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i130)
  %tobool.not.i131 = icmp eq i32 %and.i130, 0
  br i1 %tobool.not.i131, label %do.body.i132.m88rs2000_writereg.exit138_crit_edge, label %do.end.i136

do.body.i132.m88rs2000_writereg.exit138_crit_edge: ; preds = %do.body.i132
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit138

do.end.i136:                                      ; preds = %do.body.i132
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i133 = zext i8 %conv11 to i32
  %conv6.i134 = zext i8 %62 to i32
  %call7.i135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %conv5.i133, i32 noundef %conv6.i134, i32 noundef %call.i128) #11
  br label %m88rs2000_writereg.exit138

m88rs2000_writereg.exit138:                       ; preds = %do.end.i136, %do.body.i132.m88rs2000_writereg.exit138_crit_edge, %for.body.m88rs2000_writereg.exit138_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i122) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i121) #7
  %inc = add nuw nsw i32 %i.0292, 1
  %76 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %msg_len, align 1
  %conv9 = zext i8 %77 to i32
  %cmp = icmp ult i32 %inc, %conv9
  br i1 %cmp, label %m88rs2000_writereg.exit138.for.body_crit_edge, label %m88rs2000_writereg.exit138.for.end_crit_edge

m88rs2000_writereg.exit138.for.end_crit_edge:     ; preds = %m88rs2000_writereg.exit138
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

m88rs2000_writereg.exit138.for.body_crit_edge:    ; preds = %m88rs2000_writereg.exit138
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %m88rs2000_writereg.exit138.for.end_crit_edge, %m88rs2000_writereg.exit120.for.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i139) #7
  %78 = ptrtoint ptr %b0.i139 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -79, ptr %b0.i139, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i140) #7
  %79 = ptrtoint ptr %b1.i140 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %b1.i140, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i141) #7
  %80 = getelementptr inbounds i8, ptr %msg.i141, i32 4
  %81 = call ptr @memset(ptr %80, i32 255, i32 16)
  %82 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %config.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %83, align 4
  %conv.i143 = zext i8 %85 to i16
  %86 = ptrtoint ptr %msg.i141 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv.i143, ptr %msg.i141, align 4
  %flags.i144 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i141, i32 0, i32 1
  %87 = ptrtoint ptr %flags.i144 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 0, ptr %flags.i144, align 2
  %88 = ptrtoint ptr %80 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 1, ptr %80, align 4
  %buf.i146 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i141, i32 0, i32 3
  %89 = ptrtoint ptr %buf.i146 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %b0.i139, ptr %buf.i146, align 4
  %arrayinit.element.i147 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i141, i32 1
  %90 = load i8, ptr %83, align 4
  %conv5.i148 = zext i8 %90 to i16
  %91 = ptrtoint ptr %arrayinit.element.i147 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %conv5.i148, ptr %arrayinit.element.i147, align 4
  %flags6.i149 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i141, i32 1, i32 1
  %92 = ptrtoint ptr %flags6.i149 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 1, ptr %flags6.i149, align 2
  %len7.i150 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i141, i32 1, i32 2
  %93 = ptrtoint ptr %len7.i150 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 1, ptr %len7.i150, align 4
  %buf8.i151 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i141, i32 1, i32 3
  %94 = ptrtoint ptr %buf8.i151 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %b1.i140, ptr %buf8.i151, align 4
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %1, align 4
  %call.i152 = call i32 @i2c_transfer(ptr noundef %96, ptr noundef nonnull %msg.i141, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i152)
  %cmp.not.i153 = icmp eq i32 %call.i152, 2
  br i1 %cmp.not.i153, label %for.end.m88rs2000_readreg.exit159_crit_edge, label %do.body.i156

for.end.m88rs2000_readreg.exit159_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit159

do.body.i156:                                     ; preds = %for.end
  %97 = load i32, ptr @m88rs2000_debug, align 4
  %and.i154 = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i154)
  %tobool.not.i155 = icmp eq i32 %and.i154, 0
  br i1 %tobool.not.i155, label %do.body.i156.m88rs2000_readreg.exit159_crit_edge, label %do.end.i158

do.body.i156.m88rs2000_readreg.exit159_crit_edge: ; preds = %do.body.i156
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit159

do.end.i158:                                      ; preds = %do.body.i156
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 177, i32 noundef %call.i152) #11
  br label %m88rs2000_readreg.exit159

m88rs2000_readreg.exit159:                        ; preds = %do.end.i158, %do.body.i156.m88rs2000_readreg.exit159_crit_edge, %for.end.m88rs2000_readreg.exit159_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i141) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i140) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i139) #7
  %98 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %msg_len, align 1
  %sub = shl i8 %99, 3
  %shl = add i8 %sub, 120
  %or20 = and i8 %shl, 120
  %100 = or i8 %or20, 7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i160) #7
  %101 = getelementptr inbounds [2 x i8], ptr %buf.i160, i32 0, i32 1
  %102 = ptrtoint ptr %buf.i160 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 -79, ptr %buf.i160, align 1
  %103 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %100, ptr %101, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i161) #7
  %104 = getelementptr inbounds i8, ptr %msg.i161, i32 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 196607, ptr %104, align 4
  %106 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %config.i, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %107, align 4
  %conv.i163 = zext i8 %109 to i16
  %110 = ptrtoint ptr %msg.i161 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %conv.i163, ptr %msg.i161, align 4
  %flags.i164 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i161, i32 0, i32 1
  %111 = ptrtoint ptr %flags.i164 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 0, ptr %flags.i164, align 2
  %buf1.i166 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i161, i32 0, i32 3
  %112 = ptrtoint ptr %buf1.i166 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %buf.i160, ptr %buf1.i166, align 4
  %113 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %1, align 4
  %call.i167 = call i32 @i2c_transfer(ptr noundef %114, ptr noundef nonnull %msg.i161, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i167)
  %cmp.not.i168 = icmp eq i32 %call.i167, 1
  br i1 %cmp.not.i168, label %m88rs2000_readreg.exit159.m88rs2000_writereg.exit176_crit_edge, label %do.body.i171

m88rs2000_readreg.exit159.m88rs2000_writereg.exit176_crit_edge: ; preds = %m88rs2000_readreg.exit159
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit176

do.body.i171:                                     ; preds = %m88rs2000_readreg.exit159
  %115 = load i32, ptr @m88rs2000_debug, align 4
  %and.i169 = and i32 %115, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i169)
  %tobool.not.i170 = icmp eq i32 %and.i169, 0
  br i1 %tobool.not.i170, label %do.body.i171.m88rs2000_writereg.exit176_crit_edge, label %do.end.i174

do.body.i171.m88rs2000_writereg.exit176_crit_edge: ; preds = %do.body.i171
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit176

do.end.i174:                                      ; preds = %do.body.i171
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i172 = zext i8 %100 to i32
  %call7.i173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 177, i32 noundef %conv6.i172, i32 noundef %call.i167) #11
  br label %m88rs2000_writereg.exit176

m88rs2000_writereg.exit176:                       ; preds = %do.end.i174, %do.body.i171.m88rs2000_writereg.exit176_crit_edge, %m88rs2000_readreg.exit159.m88rs2000_writereg.exit176_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i161) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i160) #7
  %116 = getelementptr inbounds i8, ptr %msg.i179, i32 4
  %flags.i182 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i179, i32 0, i32 1
  %buf.i184 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i179, i32 0, i32 3
  %arrayinit.element.i185 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i179, i32 1
  %flags6.i187 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i179, i32 1, i32 1
  %len7.i188 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i179, i32 1, i32 2
  %buf8.i189 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i179, i32 1, i32 3
  br label %for.body29

for.body29:                                       ; preds = %if.end36.for.body29_crit_edge, %m88rs2000_writereg.exit176
  %i.1293 = phi i32 [ 0, %m88rs2000_writereg.exit176 ], [ %inc38, %if.end36.for.body29_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i177) #7
  %117 = ptrtoint ptr %b0.i177 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 -79, ptr %b0.i177, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i178) #7
  %118 = ptrtoint ptr %b1.i178 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %b1.i178, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i179) #7
  %119 = call ptr @memset(ptr %116, i32 255, i32 16)
  %120 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %config.i, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %121, align 4
  %conv.i181 = zext i8 %123 to i16
  %124 = ptrtoint ptr %msg.i179 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %conv.i181, ptr %msg.i179, align 4
  %125 = ptrtoint ptr %flags.i182 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 0, ptr %flags.i182, align 2
  %126 = ptrtoint ptr %116 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 1, ptr %116, align 4
  %127 = ptrtoint ptr %buf.i184 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %b0.i177, ptr %buf.i184, align 4
  %128 = load i8, ptr %121, align 4
  %conv5.i186 = zext i8 %128 to i16
  %129 = ptrtoint ptr %arrayinit.element.i185 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %conv5.i186, ptr %arrayinit.element.i185, align 4
  %130 = ptrtoint ptr %flags6.i187 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 1, ptr %flags6.i187, align 2
  %131 = ptrtoint ptr %len7.i188 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 1, ptr %len7.i188, align 4
  %132 = ptrtoint ptr %buf8.i189 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %b1.i178, ptr %buf8.i189, align 4
  %133 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %1, align 4
  %call.i190 = call i32 @i2c_transfer(ptr noundef %134, ptr noundef nonnull %msg.i179, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i190)
  %cmp.not.i191 = icmp eq i32 %call.i190, 2
  br i1 %cmp.not.i191, label %for.body29.m88rs2000_readreg.exit197_crit_edge, label %do.body.i194

for.body29.m88rs2000_readreg.exit197_crit_edge:   ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit197

do.body.i194:                                     ; preds = %for.body29
  %135 = load i32, ptr @m88rs2000_debug, align 4
  %and.i192 = and i32 %135, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i192)
  %tobool.not.i193 = icmp eq i32 %and.i192, 0
  br i1 %tobool.not.i193, label %do.body.i194.m88rs2000_readreg.exit197_crit_edge, label %do.end.i196

do.body.i194.m88rs2000_readreg.exit197_crit_edge: ; preds = %do.body.i194
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit197

do.end.i196:                                      ; preds = %do.body.i194
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i195 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 177, i32 noundef %call.i190) #11
  br label %m88rs2000_readreg.exit197

m88rs2000_readreg.exit197:                        ; preds = %do.end.i196, %do.body.i194.m88rs2000_readreg.exit197_crit_edge, %for.body29.m88rs2000_readreg.exit197_crit_edge
  %136 = ptrtoint ptr %b1.i178 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %b1.i178, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i179) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i178) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i177) #7
  %138 = and i8 %137, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %cmp33 = icmp eq i8 %138, 0
  br i1 %cmp33, label %m88rs2000_readreg.exit197.for.end39_crit_edge, label %if.end36

m88rs2000_readreg.exit197.for.end39_crit_edge:    ; preds = %m88rs2000_readreg.exit197
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end39

if.end36:                                         ; preds = %m88rs2000_readreg.exit197
  call void @msleep(i32 noundef 20) #7
  %inc38 = add nuw nsw i32 %i.1293, 1
  %exitcond.not = icmp eq i32 %inc38, 15
  br i1 %exitcond.not, label %if.end36.for.end39_crit_edge, label %if.end36.for.body29_crit_edge

if.end36.for.body29_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body29

if.end36.for.end39_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end39

for.end39:                                        ; preds = %if.end36.for.end39_crit_edge, %m88rs2000_readreg.exit197.for.end39_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i198) #7
  %139 = ptrtoint ptr %b0.i198 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 -79, ptr %b0.i198, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i199) #7
  %140 = ptrtoint ptr %b1.i199 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %b1.i199, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i200) #7
  %141 = getelementptr inbounds i8, ptr %msg.i200, i32 4
  %142 = call ptr @memset(ptr %141, i32 255, i32 16)
  %143 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %config.i, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %144, align 4
  %conv.i202 = zext i8 %146 to i16
  %147 = ptrtoint ptr %msg.i200 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %conv.i202, ptr %msg.i200, align 4
  %flags.i203 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i200, i32 0, i32 1
  %148 = ptrtoint ptr %flags.i203 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 0, ptr %flags.i203, align 2
  %149 = ptrtoint ptr %141 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 1, ptr %141, align 4
  %buf.i205 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i200, i32 0, i32 3
  %150 = ptrtoint ptr %buf.i205 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %b0.i198, ptr %buf.i205, align 4
  %arrayinit.element.i206 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i200, i32 1
  %151 = load i8, ptr %144, align 4
  %conv5.i207 = zext i8 %151 to i16
  %152 = ptrtoint ptr %arrayinit.element.i206 to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %conv5.i207, ptr %arrayinit.element.i206, align 4
  %flags6.i208 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i200, i32 1, i32 1
  %153 = ptrtoint ptr %flags6.i208 to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 1, ptr %flags6.i208, align 2
  %len7.i209 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i200, i32 1, i32 2
  %154 = ptrtoint ptr %len7.i209 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 1, ptr %len7.i209, align 4
  %buf8.i210 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i200, i32 1, i32 3
  %155 = ptrtoint ptr %buf8.i210 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %b1.i199, ptr %buf8.i210, align 4
  %156 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %1, align 4
  %call.i211 = call i32 @i2c_transfer(ptr noundef %157, ptr noundef nonnull %msg.i200, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i211)
  %cmp.not.i212 = icmp eq i32 %call.i211, 2
  br i1 %cmp.not.i212, label %for.end39.m88rs2000_readreg.exit218_crit_edge, label %do.body.i215

for.end39.m88rs2000_readreg.exit218_crit_edge:    ; preds = %for.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit218

do.body.i215:                                     ; preds = %for.end39
  %158 = load i32, ptr @m88rs2000_debug, align 4
  %and.i213 = and i32 %158, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i213)
  %tobool.not.i214 = icmp eq i32 %and.i213, 0
  br i1 %tobool.not.i214, label %do.body.i215.m88rs2000_readreg.exit218_crit_edge, label %do.end.i217

do.body.i215.m88rs2000_readreg.exit218_crit_edge: ; preds = %do.body.i215
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit218

do.end.i217:                                      ; preds = %do.body.i215
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i216 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 177, i32 noundef %call.i211) #11
  br label %m88rs2000_readreg.exit218

m88rs2000_readreg.exit218:                        ; preds = %do.end.i217, %do.body.i215.m88rs2000_readreg.exit218_crit_edge, %for.end39.m88rs2000_readreg.exit218_crit_edge
  %159 = ptrtoint ptr %b1.i199 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %b1.i199, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i200) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i199) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i198) #7
  %161 = and i8 %160, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %cmp43.not = icmp eq i8 %161, 0
  br i1 %cmp43.not, label %m88rs2000_readreg.exit218.if.end53_crit_edge, label %if.then45

m88rs2000_readreg.exit218.if.end53_crit_edge:     ; preds = %m88rs2000_readreg.exit218
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then45:                                        ; preds = %m88rs2000_readreg.exit218
  %and47 = and i8 %160, 63
  %162 = or i8 %and47, 64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i219) #7
  %163 = getelementptr inbounds [2 x i8], ptr %buf.i219, i32 0, i32 1
  %164 = ptrtoint ptr %buf.i219 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 -79, ptr %buf.i219, align 1
  %165 = ptrtoint ptr %163 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %162, ptr %163, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i220) #7
  %166 = getelementptr inbounds i8, ptr %msg.i220, i32 4
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 196607, ptr %166, align 4
  %168 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %config.i, align 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %169, align 4
  %conv.i222 = zext i8 %171 to i16
  %172 = ptrtoint ptr %msg.i220 to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %conv.i222, ptr %msg.i220, align 4
  %flags.i223 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i220, i32 0, i32 1
  %173 = ptrtoint ptr %flags.i223 to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 0, ptr %flags.i223, align 2
  %buf1.i225 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i220, i32 0, i32 3
  %174 = ptrtoint ptr %buf1.i225 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %buf.i219, ptr %buf1.i225, align 4
  %175 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %1, align 4
  %call.i226 = call i32 @i2c_transfer(ptr noundef %176, ptr noundef nonnull %msg.i220, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i226)
  %cmp.not.i227 = icmp eq i32 %call.i226, 1
  br i1 %cmp.not.i227, label %if.then45.m88rs2000_writereg.exit235_crit_edge, label %do.body.i230

if.then45.m88rs2000_writereg.exit235_crit_edge:   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit235

do.body.i230:                                     ; preds = %if.then45
  %177 = load i32, ptr @m88rs2000_debug, align 4
  %and.i228 = and i32 %177, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i228)
  %tobool.not.i229 = icmp eq i32 %and.i228, 0
  br i1 %tobool.not.i229, label %do.body.i230.m88rs2000_writereg.exit235_crit_edge, label %do.end.i233

do.body.i230.m88rs2000_writereg.exit235_crit_edge: ; preds = %do.body.i230
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit235

do.end.i233:                                      ; preds = %do.body.i230
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i231 = zext i8 %162 to i32
  %call7.i232 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 177, i32 noundef %conv6.i231, i32 noundef %call.i226) #11
  br label %m88rs2000_writereg.exit235

m88rs2000_writereg.exit235:                       ; preds = %do.end.i233, %do.body.i230.m88rs2000_writereg.exit235_crit_edge, %if.then45.m88rs2000_writereg.exit235_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i220) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i219) #7
  br label %if.end53

if.end53:                                         ; preds = %m88rs2000_writereg.exit235, %m88rs2000_readreg.exit218.if.end53_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i236) #7
  %178 = ptrtoint ptr %b0.i236 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 -78, ptr %b0.i236, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i237) #7
  %179 = ptrtoint ptr %b1.i237 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 0, ptr %b1.i237, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i238) #7
  %180 = getelementptr inbounds i8, ptr %msg.i238, i32 4
  %181 = call ptr @memset(ptr %180, i32 255, i32 16)
  %182 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %config.i, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %183, align 4
  %conv.i240 = zext i8 %185 to i16
  %186 = ptrtoint ptr %msg.i238 to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 %conv.i240, ptr %msg.i238, align 4
  %flags.i241 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i238, i32 0, i32 1
  %187 = ptrtoint ptr %flags.i241 to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 0, ptr %flags.i241, align 2
  %188 = ptrtoint ptr %180 to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 1, ptr %180, align 4
  %buf.i243 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i238, i32 0, i32 3
  %189 = ptrtoint ptr %buf.i243 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %b0.i236, ptr %buf.i243, align 4
  %arrayinit.element.i244 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i238, i32 1
  %190 = load i8, ptr %183, align 4
  %conv5.i245 = zext i8 %190 to i16
  %191 = ptrtoint ptr %arrayinit.element.i244 to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %conv5.i245, ptr %arrayinit.element.i244, align 4
  %flags6.i246 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i238, i32 1, i32 1
  %192 = ptrtoint ptr %flags6.i246 to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 1, ptr %flags6.i246, align 2
  %len7.i247 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i238, i32 1, i32 2
  %193 = ptrtoint ptr %len7.i247 to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 1, ptr %len7.i247, align 4
  %buf8.i248 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i238, i32 1, i32 3
  %194 = ptrtoint ptr %buf8.i248 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %b1.i237, ptr %buf8.i248, align 4
  %195 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %1, align 4
  %call.i249 = call i32 @i2c_transfer(ptr noundef %196, ptr noundef nonnull %msg.i238, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i249)
  %cmp.not.i250 = icmp eq i32 %call.i249, 2
  br i1 %cmp.not.i250, label %if.end53.m88rs2000_readreg.exit256_crit_edge, label %do.body.i253

if.end53.m88rs2000_readreg.exit256_crit_edge:     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit256

do.body.i253:                                     ; preds = %if.end53
  %197 = load i32, ptr @m88rs2000_debug, align 4
  %and.i251 = and i32 %197, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i251)
  %tobool.not.i252 = icmp eq i32 %and.i251, 0
  br i1 %tobool.not.i252, label %do.body.i253.m88rs2000_readreg.exit256_crit_edge, label %do.end.i255

do.body.i253.m88rs2000_readreg.exit256_crit_edge: ; preds = %do.body.i253
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit256

do.end.i255:                                      ; preds = %do.body.i253
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i254 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 178, i32 noundef %call.i249) #11
  br label %m88rs2000_readreg.exit256

m88rs2000_readreg.exit256:                        ; preds = %do.end.i255, %do.body.i253.m88rs2000_readreg.exit256_crit_edge, %if.end53.m88rs2000_readreg.exit256_crit_edge
  %198 = ptrtoint ptr %b1.i237 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %b1.i237, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i238) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i237) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i236) #7
  %200 = and i8 %199, 63
  %201 = or i8 %200, -128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i257) #7
  %202 = getelementptr inbounds [2 x i8], ptr %buf.i257, i32 0, i32 1
  %203 = ptrtoint ptr %buf.i257 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 -78, ptr %buf.i257, align 1
  %204 = ptrtoint ptr %202 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %201, ptr %202, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i258) #7
  %205 = getelementptr inbounds i8, ptr %msg.i258, i32 4
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 196607, ptr %205, align 4
  %207 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %config.i, align 4
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %208, align 4
  %conv.i260 = zext i8 %210 to i16
  %211 = ptrtoint ptr %msg.i258 to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 %conv.i260, ptr %msg.i258, align 4
  %flags.i261 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i258, i32 0, i32 1
  %212 = ptrtoint ptr %flags.i261 to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 0, ptr %flags.i261, align 2
  %buf1.i263 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i258, i32 0, i32 3
  %213 = ptrtoint ptr %buf1.i263 to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %buf.i257, ptr %buf1.i263, align 4
  %214 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %1, align 4
  %call.i264 = call i32 @i2c_transfer(ptr noundef %215, ptr noundef nonnull %msg.i258, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i264)
  %cmp.not.i265 = icmp eq i32 %call.i264, 1
  br i1 %cmp.not.i265, label %m88rs2000_readreg.exit256.m88rs2000_writereg.exit273_crit_edge, label %do.body.i268

m88rs2000_readreg.exit256.m88rs2000_writereg.exit273_crit_edge: ; preds = %m88rs2000_readreg.exit256
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit273

do.body.i268:                                     ; preds = %m88rs2000_readreg.exit256
  %216 = load i32, ptr @m88rs2000_debug, align 4
  %and.i266 = and i32 %216, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i266)
  %tobool.not.i267 = icmp eq i32 %and.i266, 0
  br i1 %tobool.not.i267, label %do.body.i268.m88rs2000_writereg.exit273_crit_edge, label %do.end.i271

do.body.i268.m88rs2000_writereg.exit273_crit_edge: ; preds = %do.body.i268
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit273

do.end.i271:                                      ; preds = %do.body.i268
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i269 = zext i8 %201 to i32
  %call7.i270 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 178, i32 noundef %conv6.i269, i32 noundef %call.i264) #11
  br label %m88rs2000_writereg.exit273

m88rs2000_writereg.exit273:                       ; preds = %do.end.i271, %do.body.i268.m88rs2000_writereg.exit273_crit_edge, %m88rs2000_readreg.exit256.m88rs2000_writereg.exit273_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i258) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i257) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i274) #7
  %217 = getelementptr inbounds [2 x i8], ptr %buf.i274, i32 0, i32 1
  %218 = ptrtoint ptr %buf.i274 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 -102, ptr %buf.i274, align 1
  %219 = ptrtoint ptr %217 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 -80, ptr %217, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i275) #7
  %220 = getelementptr inbounds i8, ptr %msg.i275, i32 4
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 196607, ptr %220, align 4
  %222 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %config.i, align 4
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %223, align 4
  %conv.i277 = zext i8 %225 to i16
  %226 = ptrtoint ptr %msg.i275 to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 %conv.i277, ptr %msg.i275, align 4
  %flags.i278 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i275, i32 0, i32 1
  %227 = ptrtoint ptr %flags.i278 to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 0, ptr %flags.i278, align 2
  %buf1.i280 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i275, i32 0, i32 3
  %228 = ptrtoint ptr %buf1.i280 to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %buf.i274, ptr %buf1.i280, align 4
  %229 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %1, align 4
  %call.i281 = call i32 @i2c_transfer(ptr noundef %230, ptr noundef nonnull %msg.i275, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i281)
  %cmp.not.i282 = icmp eq i32 %call.i281, 1
  br i1 %cmp.not.i282, label %m88rs2000_writereg.exit273.m88rs2000_writereg.exit289_crit_edge, label %do.body.i285

m88rs2000_writereg.exit273.m88rs2000_writereg.exit289_crit_edge: ; preds = %m88rs2000_writereg.exit273
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit289

do.body.i285:                                     ; preds = %m88rs2000_writereg.exit273
  %231 = load i32, ptr @m88rs2000_debug, align 4
  %and.i283 = and i32 %231, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i283)
  %tobool.not.i284 = icmp eq i32 %and.i283, 0
  br i1 %tobool.not.i284, label %do.body.i285.m88rs2000_writereg.exit289_crit_edge, label %do.end.i287

do.body.i285.m88rs2000_writereg.exit289_crit_edge: ; preds = %do.body.i285
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit289

do.end.i287:                                      ; preds = %do.body.i285
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i286 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 154, i32 noundef 176, i32 noundef %call.i281) #11
  br label %m88rs2000_writereg.exit289

m88rs2000_writereg.exit289:                       ; preds = %do.end.i287, %do.body.i285.m88rs2000_writereg.exit289_crit_edge, %m88rs2000_writereg.exit273.m88rs2000_writereg.exit289_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i275) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i274) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88rs2000_send_diseqc_burst(ptr nocapture noundef readonly %fe, i32 noundef %burst) #0 align 64 {
entry:
  %buf.i81 = alloca [2 x i8], align 1
  %msg.i82 = alloca %struct.i2c_msg, align 4
  %buf.i64 = alloca [2 x i8], align 1
  %msg.i65 = alloca %struct.i2c_msg, align 4
  %buf.i48 = alloca [2 x i8], align 1
  %msg.i49 = alloca %struct.i2c_msg, align 4
  %b0.i27 = alloca [1 x i8], align 1
  %b1.i28 = alloca [1 x i8], align 1
  %msg.i29 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i15 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @m88rs2000_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %3 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -102, ptr %buf.i, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 48, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 196607, ptr %6, align 4
  %config.i = getelementptr inbounds %struct.m88rs2000_state, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  %conv.i = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf.i, ptr %buf1.i, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %do.end3.m88rs2000_writereg.exit_crit_edge, label %do.body.i

do.end3.m88rs2000_writereg.exit_crit_edge:        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit

do.body.i:                                        ; preds = %do.end3
  %17 = load i32, ptr @m88rs2000_debug, align 4
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.m88rs2000_writereg.exit_crit_edge, label %do.end.i

do.body.i.m88rs2000_writereg.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 154, i32 noundef 48, i32 noundef %call.i) #11
  br label %m88rs2000_writereg.exit

m88rs2000_writereg.exit:                          ; preds = %do.end.i, %do.body.i.m88rs2000_writereg.exit_crit_edge, %do.end3.m88rs2000_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @msleep(i32 noundef 50) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %18 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -79, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %19 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i15) #7
  %20 = getelementptr inbounds i8, ptr %msg.i15, i32 4
  %21 = call ptr @memset(ptr %20, i32 255, i32 16)
  %22 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %config.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 4
  %conv.i17 = zext i8 %25 to i16
  %26 = ptrtoint ptr %msg.i15 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i17, ptr %msg.i15, align 4
  %flags.i18 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i18 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i18, align 2
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %20, align 4
  %buf.i20 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 0, i32 3
  %29 = ptrtoint ptr %buf.i20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %b0.i, ptr %buf.i20, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 1
  %30 = load i8, ptr %23, align 4
  %conv5.i = zext i8 %30 to i16
  %31 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 1, i32 1
  %32 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 1, i32 2
  %33 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 1, i32 3
  %34 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %b1.i, ptr %buf8.i, align 4
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %call.i21 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %msg.i15, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i21)
  %cmp.not.i22 = icmp eq i32 %call.i21, 2
  br i1 %cmp.not.i22, label %m88rs2000_writereg.exit.m88rs2000_readreg.exit_crit_edge, label %do.body.i25

m88rs2000_writereg.exit.m88rs2000_readreg.exit_crit_edge: ; preds = %m88rs2000_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit

do.body.i25:                                      ; preds = %m88rs2000_writereg.exit
  %37 = load i32, ptr @m88rs2000_debug, align 4
  %and.i23 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i23)
  %tobool.not.i24 = icmp eq i32 %and.i23, 0
  br i1 %tobool.not.i24, label %do.body.i25.m88rs2000_readreg.exit_crit_edge, label %do.end.i26

do.body.i25.m88rs2000_readreg.exit_crit_edge:     ; preds = %do.body.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit

do.end.i26:                                       ; preds = %do.body.i25
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 177, i32 noundef %call.i21) #11
  br label %m88rs2000_readreg.exit

m88rs2000_readreg.exit:                           ; preds = %do.end.i26, %do.body.i25.m88rs2000_readreg.exit_crit_edge, %m88rs2000_writereg.exit.m88rs2000_readreg.exit_crit_edge
  %38 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i15) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i27) #7
  %40 = ptrtoint ptr %b0.i27 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -78, ptr %b0.i27, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i28) #7
  %41 = ptrtoint ptr %b1.i28 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %b1.i28, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i29) #7
  %42 = getelementptr inbounds i8, ptr %msg.i29, i32 4
  %43 = call ptr @memset(ptr %42, i32 255, i32 16)
  %44 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %config.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %45, align 4
  %conv.i31 = zext i8 %47 to i16
  %48 = ptrtoint ptr %msg.i29 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv.i31, ptr %msg.i29, align 4
  %flags.i32 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 0, i32 1
  %49 = ptrtoint ptr %flags.i32 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %flags.i32, align 2
  %50 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %42, align 4
  %buf.i34 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 0, i32 3
  %51 = ptrtoint ptr %buf.i34 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %b0.i27, ptr %buf.i34, align 4
  %arrayinit.element.i35 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 1
  %52 = load i8, ptr %45, align 4
  %conv5.i36 = zext i8 %52 to i16
  %53 = ptrtoint ptr %arrayinit.element.i35 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv5.i36, ptr %arrayinit.element.i35, align 4
  %flags6.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 1, i32 1
  %54 = ptrtoint ptr %flags6.i37 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1, ptr %flags6.i37, align 2
  %len7.i38 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 1, i32 2
  %55 = ptrtoint ptr %len7.i38 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 1, ptr %len7.i38, align 4
  %buf8.i39 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 1, i32 3
  %56 = ptrtoint ptr %buf8.i39 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %b1.i28, ptr %buf8.i39, align 4
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %call.i40 = call i32 @i2c_transfer(ptr noundef %58, ptr noundef nonnull %msg.i29, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i40)
  %cmp.not.i41 = icmp eq i32 %call.i40, 2
  br i1 %cmp.not.i41, label %m88rs2000_readreg.exit.m88rs2000_readreg.exit47_crit_edge, label %do.body.i44

m88rs2000_readreg.exit.m88rs2000_readreg.exit47_crit_edge: ; preds = %m88rs2000_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit47

do.body.i44:                                      ; preds = %m88rs2000_readreg.exit
  %59 = load i32, ptr @m88rs2000_debug, align 4
  %and.i42 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i42)
  %tobool.not.i43 = icmp eq i32 %and.i42, 0
  br i1 %tobool.not.i43, label %do.body.i44.m88rs2000_readreg.exit47_crit_edge, label %do.end.i46

do.body.i44.m88rs2000_readreg.exit47_crit_edge:   ; preds = %do.body.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit47

do.end.i46:                                       ; preds = %do.body.i44
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 178, i32 noundef %call.i40) #11
  br label %m88rs2000_readreg.exit47

m88rs2000_readreg.exit47:                         ; preds = %do.end.i46, %do.body.i44.m88rs2000_readreg.exit47_crit_edge, %m88rs2000_readreg.exit.m88rs2000_readreg.exit47_crit_edge
  %60 = ptrtoint ptr %b1.i28 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %b1.i28, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i29) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i28) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i27) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i48) #7
  %62 = getelementptr inbounds [2 x i8], ptr %buf.i48, i32 0, i32 1
  %63 = ptrtoint ptr %buf.i48 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -78, ptr %buf.i48, align 1
  %64 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %61, ptr %62, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i49) #7
  %65 = getelementptr inbounds i8, ptr %msg.i49, i32 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 196607, ptr %65, align 4
  %67 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %config.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %68, align 4
  %conv.i51 = zext i8 %70 to i16
  %71 = ptrtoint ptr %msg.i49 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv.i51, ptr %msg.i49, align 4
  %flags.i52 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i49, i32 0, i32 1
  %72 = ptrtoint ptr %flags.i52 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %flags.i52, align 2
  %buf1.i54 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i49, i32 0, i32 3
  %73 = ptrtoint ptr %buf1.i54 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %buf.i48, ptr %buf1.i54, align 4
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 4
  %call.i55 = call i32 @i2c_transfer(ptr noundef %75, ptr noundef nonnull %msg.i49, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i55)
  %cmp.not.i56 = icmp eq i32 %call.i55, 1
  br i1 %cmp.not.i56, label %m88rs2000_readreg.exit47.m88rs2000_writereg.exit63_crit_edge, label %do.body.i59

m88rs2000_readreg.exit47.m88rs2000_writereg.exit63_crit_edge: ; preds = %m88rs2000_readreg.exit47
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit63

do.body.i59:                                      ; preds = %m88rs2000_readreg.exit47
  %76 = load i32, ptr @m88rs2000_debug, align 4
  %and.i57 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i57)
  %tobool.not.i58 = icmp eq i32 %and.i57, 0
  br i1 %tobool.not.i58, label %do.body.i59.m88rs2000_writereg.exit63_crit_edge, label %do.end.i61

do.body.i59.m88rs2000_writereg.exit63_crit_edge:  ; preds = %do.body.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit63

do.end.i61:                                       ; preds = %do.body.i59
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i = zext i8 %61 to i32
  %call7.i60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 178, i32 noundef %conv6.i, i32 noundef %call.i55) #11
  br label %m88rs2000_writereg.exit63

m88rs2000_writereg.exit63:                        ; preds = %do.end.i61, %do.body.i59.m88rs2000_writereg.exit63_crit_edge, %m88rs2000_readreg.exit47.m88rs2000_writereg.exit63_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i49) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i48) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i64) #7
  %77 = getelementptr inbounds [2 x i8], ptr %buf.i64, i32 0, i32 1
  %78 = ptrtoint ptr %buf.i64 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -79, ptr %buf.i64, align 1
  %79 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %39, ptr %77, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i65) #7
  %80 = getelementptr inbounds i8, ptr %msg.i65, i32 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 196607, ptr %80, align 4
  %82 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %config.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %83, align 4
  %conv.i67 = zext i8 %85 to i16
  %86 = ptrtoint ptr %msg.i65 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv.i67, ptr %msg.i65, align 4
  %flags.i68 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i65, i32 0, i32 1
  %87 = ptrtoint ptr %flags.i68 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 0, ptr %flags.i68, align 2
  %buf1.i70 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i65, i32 0, i32 3
  %88 = ptrtoint ptr %buf1.i70 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %buf.i64, ptr %buf1.i70, align 4
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %1, align 4
  %call.i71 = call i32 @i2c_transfer(ptr noundef %90, ptr noundef nonnull %msg.i65, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i71)
  %cmp.not.i72 = icmp eq i32 %call.i71, 1
  br i1 %cmp.not.i72, label %m88rs2000_writereg.exit63.m88rs2000_writereg.exit80_crit_edge, label %do.body.i75

m88rs2000_writereg.exit63.m88rs2000_writereg.exit80_crit_edge: ; preds = %m88rs2000_writereg.exit63
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit80

do.body.i75:                                      ; preds = %m88rs2000_writereg.exit63
  %91 = load i32, ptr @m88rs2000_debug, align 4
  %and.i73 = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73)
  %tobool.not.i74 = icmp eq i32 %and.i73, 0
  br i1 %tobool.not.i74, label %do.body.i75.m88rs2000_writereg.exit80_crit_edge, label %do.end.i78

do.body.i75.m88rs2000_writereg.exit80_crit_edge:  ; preds = %do.body.i75
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit80

do.end.i78:                                       ; preds = %do.body.i75
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i76 = zext i8 %39 to i32
  %call7.i77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 177, i32 noundef %conv6.i76, i32 noundef %call.i71) #11
  br label %m88rs2000_writereg.exit80

m88rs2000_writereg.exit80:                        ; preds = %do.end.i78, %do.body.i75.m88rs2000_writereg.exit80_crit_edge, %m88rs2000_writereg.exit63.m88rs2000_writereg.exit80_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i65) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i64) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i81) #7
  %92 = getelementptr inbounds [2 x i8], ptr %buf.i81, i32 0, i32 1
  %93 = ptrtoint ptr %buf.i81 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 -102, ptr %buf.i81, align 1
  %94 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -80, ptr %92, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i82) #7
  %95 = getelementptr inbounds i8, ptr %msg.i82, i32 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 196607, ptr %95, align 4
  %97 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %config.i, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %98, align 4
  %conv.i84 = zext i8 %100 to i16
  %101 = ptrtoint ptr %msg.i82 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %conv.i84, ptr %msg.i82, align 4
  %flags.i85 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i82, i32 0, i32 1
  %102 = ptrtoint ptr %flags.i85 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 0, ptr %flags.i85, align 2
  %buf1.i87 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i82, i32 0, i32 3
  %103 = ptrtoint ptr %buf1.i87 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %buf.i81, ptr %buf1.i87, align 4
  %104 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %1, align 4
  %call.i88 = call i32 @i2c_transfer(ptr noundef %105, ptr noundef nonnull %msg.i82, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i88)
  %cmp.not.i89 = icmp eq i32 %call.i88, 1
  br i1 %cmp.not.i89, label %m88rs2000_writereg.exit80.m88rs2000_writereg.exit96_crit_edge, label %do.body.i92

m88rs2000_writereg.exit80.m88rs2000_writereg.exit96_crit_edge: ; preds = %m88rs2000_writereg.exit80
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit96

do.body.i92:                                      ; preds = %m88rs2000_writereg.exit80
  %106 = load i32, ptr @m88rs2000_debug, align 4
  %and.i90 = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i90)
  %tobool.not.i91 = icmp eq i32 %and.i90, 0
  br i1 %tobool.not.i91, label %do.body.i92.m88rs2000_writereg.exit96_crit_edge, label %do.end.i94

do.body.i92.m88rs2000_writereg.exit96_crit_edge:  ; preds = %do.body.i92
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit96

do.end.i94:                                       ; preds = %do.body.i92
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 154, i32 noundef 176, i32 noundef %call.i88) #11
  br label %m88rs2000_writereg.exit96

m88rs2000_writereg.exit96:                        ; preds = %do.end.i94, %do.body.i92.m88rs2000_writereg.exit96_crit_edge, %m88rs2000_writereg.exit80.m88rs2000_writereg.exit96_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i82) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i81) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88rs2000_set_tone(ptr nocapture noundef readonly %fe, i32 noundef %tone) #0 align 64 {
entry:
  %buf.i91 = alloca [2 x i8], align 1
  %msg.i92 = alloca %struct.i2c_msg, align 4
  %buf.i74 = alloca [2 x i8], align 1
  %msg.i75 = alloca %struct.i2c_msg, align 4
  %buf.i58 = alloca [2 x i8], align 1
  %msg.i59 = alloca %struct.i2c_msg, align 4
  %b0.i37 = alloca [1 x i8], align 1
  %b1.i38 = alloca [1 x i8], align 1
  %msg.i39 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i25 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -102, ptr %buf.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 48, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196607, ptr %5, align 4
  %config.i = getelementptr inbounds %struct.m88rs2000_state, ptr %1, i32 0, i32 1
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
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %entry.m88rs2000_writereg.exit_crit_edge, label %do.body.i

entry.m88rs2000_writereg.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit

do.body.i:                                        ; preds = %entry
  %16 = load i32, ptr @m88rs2000_debug, align 4
  %and.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.m88rs2000_writereg.exit_crit_edge, label %do.end.i

do.body.i.m88rs2000_writereg.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 154, i32 noundef 48, i32 noundef %call.i) #11
  br label %m88rs2000_writereg.exit

m88rs2000_writereg.exit:                          ; preds = %do.end.i, %do.body.i.m88rs2000_writereg.exit_crit_edge, %entry.m88rs2000_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %17 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -79, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %18 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i25) #7
  %19 = getelementptr inbounds i8, ptr %msg.i25, i32 4
  %20 = call ptr @memset(ptr %19, i32 255, i32 16)
  %21 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %config.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 4
  %conv.i27 = zext i8 %24 to i16
  %25 = ptrtoint ptr %msg.i25 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i27, ptr %msg.i25, align 4
  %flags.i28 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i25, i32 0, i32 1
  %26 = ptrtoint ptr %flags.i28 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %flags.i28, align 2
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %19, align 4
  %buf.i30 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i25, i32 0, i32 3
  %28 = ptrtoint ptr %buf.i30 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %b0.i, ptr %buf.i30, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i25, i32 1
  %29 = load i8, ptr %22, align 4
  %conv5.i = zext i8 %29 to i16
  %30 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i25, i32 1, i32 1
  %31 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i25, i32 1, i32 2
  %32 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i25, i32 1, i32 3
  %33 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %b1.i, ptr %buf8.i, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %call.i31 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i25, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i31)
  %cmp.not.i32 = icmp eq i32 %call.i31, 2
  br i1 %cmp.not.i32, label %m88rs2000_writereg.exit.m88rs2000_readreg.exit_crit_edge, label %do.body.i35

m88rs2000_writereg.exit.m88rs2000_readreg.exit_crit_edge: ; preds = %m88rs2000_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit

do.body.i35:                                      ; preds = %m88rs2000_writereg.exit
  %36 = load i32, ptr @m88rs2000_debug, align 4
  %and.i33 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i33)
  %tobool.not.i34 = icmp eq i32 %and.i33, 0
  br i1 %tobool.not.i34, label %do.body.i35.m88rs2000_readreg.exit_crit_edge, label %do.end.i36

do.body.i35.m88rs2000_readreg.exit_crit_edge:     ; preds = %do.body.i35
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit

do.end.i36:                                       ; preds = %do.body.i35
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 177, i32 noundef %call.i31) #11
  br label %m88rs2000_readreg.exit

m88rs2000_readreg.exit:                           ; preds = %do.end.i36, %do.body.i35.m88rs2000_readreg.exit_crit_edge, %m88rs2000_writereg.exit.m88rs2000_readreg.exit_crit_edge
  %37 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i25) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i37) #7
  %39 = ptrtoint ptr %b0.i37 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -78, ptr %b0.i37, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i38) #7
  %40 = ptrtoint ptr %b1.i38 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %b1.i38, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i39) #7
  %41 = getelementptr inbounds i8, ptr %msg.i39, i32 4
  %42 = call ptr @memset(ptr %41, i32 255, i32 16)
  %43 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %config.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %44, align 4
  %conv.i41 = zext i8 %46 to i16
  %47 = ptrtoint ptr %msg.i39 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i41, ptr %msg.i39, align 4
  %flags.i42 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39, i32 0, i32 1
  %48 = ptrtoint ptr %flags.i42 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %flags.i42, align 2
  %49 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %41, align 4
  %buf.i44 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39, i32 0, i32 3
  %50 = ptrtoint ptr %buf.i44 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %b0.i37, ptr %buf.i44, align 4
  %arrayinit.element.i45 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39, i32 1
  %51 = load i8, ptr %44, align 4
  %conv5.i46 = zext i8 %51 to i16
  %52 = ptrtoint ptr %arrayinit.element.i45 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv5.i46, ptr %arrayinit.element.i45, align 4
  %flags6.i47 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39, i32 1, i32 1
  %53 = ptrtoint ptr %flags6.i47 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 1, ptr %flags6.i47, align 2
  %len7.i48 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39, i32 1, i32 2
  %54 = ptrtoint ptr %len7.i48 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1, ptr %len7.i48, align 4
  %buf8.i49 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39, i32 1, i32 3
  %55 = ptrtoint ptr %buf8.i49 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %b1.i38, ptr %buf8.i49, align 4
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %call.i50 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %msg.i39, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i50)
  %cmp.not.i51 = icmp eq i32 %call.i50, 2
  br i1 %cmp.not.i51, label %m88rs2000_readreg.exit.m88rs2000_readreg.exit57_crit_edge, label %do.body.i54

m88rs2000_readreg.exit.m88rs2000_readreg.exit57_crit_edge: ; preds = %m88rs2000_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit57

do.body.i54:                                      ; preds = %m88rs2000_readreg.exit
  %58 = load i32, ptr @m88rs2000_debug, align 4
  %and.i52 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i52)
  %tobool.not.i53 = icmp eq i32 %and.i52, 0
  br i1 %tobool.not.i53, label %do.body.i54.m88rs2000_readreg.exit57_crit_edge, label %do.end.i56

do.body.i54.m88rs2000_readreg.exit57_crit_edge:   ; preds = %do.body.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit57

do.end.i56:                                       ; preds = %do.body.i54
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 178, i32 noundef %call.i50) #11
  br label %m88rs2000_readreg.exit57

m88rs2000_readreg.exit57:                         ; preds = %do.end.i56, %do.body.i54.m88rs2000_readreg.exit57_crit_edge, %m88rs2000_readreg.exit.m88rs2000_readreg.exit57_crit_edge
  %59 = ptrtoint ptr %b1.i38 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %b1.i38, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i39) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i38) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i37) #7
  %61 = and i8 %60, 63
  %62 = zext i32 %tone to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values)
  switch i32 %tone, label %m88rs2000_readreg.exit57.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
  ]

m88rs2000_readreg.exit57.sw.epilog_crit_edge:     ; preds = %m88rs2000_readreg.exit57
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %m88rs2000_readreg.exit57
  call void @__sanitizer_cov_trace_pc() #9
  %63 = and i8 %38, -72
  %64 = or i8 %63, 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %m88rs2000_readreg.exit57
  call void @__sanitizer_cov_trace_pc() #9
  %65 = or i8 %61, -128
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb, %m88rs2000_readreg.exit57.sw.epilog_crit_edge
  %reg0.0 = phi i8 [ %38, %m88rs2000_readreg.exit57.sw.epilog_crit_edge ], [ %38, %sw.bb9 ], [ %64, %sw.bb ]
  %reg1.0 = phi i8 [ %61, %m88rs2000_readreg.exit57.sw.epilog_crit_edge ], [ %65, %sw.bb9 ], [ %61, %sw.bb ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i58) #7
  %66 = getelementptr inbounds [2 x i8], ptr %buf.i58, i32 0, i32 1
  %67 = ptrtoint ptr %buf.i58 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -78, ptr %buf.i58, align 1
  %68 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %reg1.0, ptr %66, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i59) #7
  %69 = getelementptr inbounds i8, ptr %msg.i59, i32 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 196607, ptr %69, align 4
  %71 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %config.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %72, align 4
  %conv.i61 = zext i8 %74 to i16
  %75 = ptrtoint ptr %msg.i59 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv.i61, ptr %msg.i59, align 4
  %flags.i62 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i59, i32 0, i32 1
  %76 = ptrtoint ptr %flags.i62 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %flags.i62, align 2
  %buf1.i64 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i59, i32 0, i32 3
  %77 = ptrtoint ptr %buf1.i64 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %buf.i58, ptr %buf1.i64, align 4
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %call.i65 = call i32 @i2c_transfer(ptr noundef %79, ptr noundef nonnull %msg.i59, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i65)
  %cmp.not.i66 = icmp eq i32 %call.i65, 1
  br i1 %cmp.not.i66, label %sw.epilog.m88rs2000_writereg.exit73_crit_edge, label %do.body.i69

sw.epilog.m88rs2000_writereg.exit73_crit_edge:    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit73

do.body.i69:                                      ; preds = %sw.epilog
  %80 = load i32, ptr @m88rs2000_debug, align 4
  %and.i67 = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i67)
  %tobool.not.i68 = icmp eq i32 %and.i67, 0
  br i1 %tobool.not.i68, label %do.body.i69.m88rs2000_writereg.exit73_crit_edge, label %do.end.i71

do.body.i69.m88rs2000_writereg.exit73_crit_edge:  ; preds = %do.body.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit73

do.end.i71:                                       ; preds = %do.body.i69
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i = zext i8 %reg1.0 to i32
  %call7.i70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 178, i32 noundef %conv6.i, i32 noundef %call.i65) #11
  br label %m88rs2000_writereg.exit73

m88rs2000_writereg.exit73:                        ; preds = %do.end.i71, %do.body.i69.m88rs2000_writereg.exit73_crit_edge, %sw.epilog.m88rs2000_writereg.exit73_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i59) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i58) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i74) #7
  %81 = getelementptr inbounds [2 x i8], ptr %buf.i74, i32 0, i32 1
  %82 = ptrtoint ptr %buf.i74 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 -79, ptr %buf.i74, align 1
  %83 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %reg0.0, ptr %81, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i75) #7
  %84 = getelementptr inbounds i8, ptr %msg.i75, i32 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 196607, ptr %84, align 4
  %86 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %config.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %87, align 4
  %conv.i77 = zext i8 %89 to i16
  %90 = ptrtoint ptr %msg.i75 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %conv.i77, ptr %msg.i75, align 4
  %flags.i78 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i75, i32 0, i32 1
  %91 = ptrtoint ptr %flags.i78 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 0, ptr %flags.i78, align 2
  %buf1.i80 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i75, i32 0, i32 3
  %92 = ptrtoint ptr %buf1.i80 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %buf.i74, ptr %buf1.i80, align 4
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 4
  %call.i81 = call i32 @i2c_transfer(ptr noundef %94, ptr noundef nonnull %msg.i75, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i81)
  %cmp.not.i82 = icmp eq i32 %call.i81, 1
  br i1 %cmp.not.i82, label %m88rs2000_writereg.exit73.m88rs2000_writereg.exit90_crit_edge, label %do.body.i85

m88rs2000_writereg.exit73.m88rs2000_writereg.exit90_crit_edge: ; preds = %m88rs2000_writereg.exit73
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit90

do.body.i85:                                      ; preds = %m88rs2000_writereg.exit73
  %95 = load i32, ptr @m88rs2000_debug, align 4
  %and.i83 = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i83)
  %tobool.not.i84 = icmp eq i32 %and.i83, 0
  br i1 %tobool.not.i84, label %do.body.i85.m88rs2000_writereg.exit90_crit_edge, label %do.end.i88

do.body.i85.m88rs2000_writereg.exit90_crit_edge:  ; preds = %do.body.i85
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit90

do.end.i88:                                       ; preds = %do.body.i85
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i86 = zext i8 %reg0.0 to i32
  %call7.i87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 177, i32 noundef %conv6.i86, i32 noundef %call.i81) #11
  br label %m88rs2000_writereg.exit90

m88rs2000_writereg.exit90:                        ; preds = %do.end.i88, %do.body.i85.m88rs2000_writereg.exit90_crit_edge, %m88rs2000_writereg.exit73.m88rs2000_writereg.exit90_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i75) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i74) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i91) #7
  %96 = getelementptr inbounds [2 x i8], ptr %buf.i91, i32 0, i32 1
  %97 = ptrtoint ptr %buf.i91 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 -102, ptr %buf.i91, align 1
  %98 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 -80, ptr %96, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i92) #7
  %99 = getelementptr inbounds i8, ptr %msg.i92, i32 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 196607, ptr %99, align 4
  %101 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %config.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %102, align 4
  %conv.i94 = zext i8 %104 to i16
  %105 = ptrtoint ptr %msg.i92 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv.i94, ptr %msg.i92, align 4
  %flags.i95 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i92, i32 0, i32 1
  %106 = ptrtoint ptr %flags.i95 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 0, ptr %flags.i95, align 2
  %buf1.i97 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i92, i32 0, i32 3
  %107 = ptrtoint ptr %buf1.i97 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %buf.i91, ptr %buf1.i97, align 4
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %1, align 4
  %call.i98 = call i32 @i2c_transfer(ptr noundef %109, ptr noundef nonnull %msg.i92, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i98)
  %cmp.not.i99 = icmp eq i32 %call.i98, 1
  br i1 %cmp.not.i99, label %m88rs2000_writereg.exit90.m88rs2000_writereg.exit106_crit_edge, label %do.body.i102

m88rs2000_writereg.exit90.m88rs2000_writereg.exit106_crit_edge: ; preds = %m88rs2000_writereg.exit90
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit106

do.body.i102:                                     ; preds = %m88rs2000_writereg.exit90
  %110 = load i32, ptr @m88rs2000_debug, align 4
  %and.i100 = and i32 %110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i100)
  %tobool.not.i101 = icmp eq i32 %and.i100, 0
  br i1 %tobool.not.i101, label %do.body.i102.m88rs2000_writereg.exit106_crit_edge, label %do.end.i104

do.body.i102.m88rs2000_writereg.exit106_crit_edge: ; preds = %do.body.i102
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit106

do.end.i104:                                      ; preds = %do.body.i102
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 154, i32 noundef 176, i32 noundef %call.i98) #11
  br label %m88rs2000_writereg.exit106

m88rs2000_writereg.exit106:                       ; preds = %do.end.i104, %do.body.i102.m88rs2000_writereg.exit106_crit_edge, %m88rs2000_writereg.exit90.m88rs2000_writereg.exit106_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i92) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i91) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88rs2000_set_voltage(ptr nocapture noundef readonly %fe, i32 noundef %volt) #0 align 64 {
entry:
  %buf.i17 = alloca [2 x i8], align 1
  %msg.i18 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
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
  store i8 -78, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.m88rs2000_state, ptr %1, i32 0, i32 1
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
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.m88rs2000_readreg.exit_crit_edge, label %do.body.i

entry.m88rs2000_readreg.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit

do.body.i:                                        ; preds = %entry
  %21 = load i32, ptr @m88rs2000_debug, align 4
  %and.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.m88rs2000_readreg.exit_crit_edge, label %do.end.i

do.body.i.m88rs2000_readreg.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 178, i32 noundef %call.i) #11
  br label %m88rs2000_readreg.exit

m88rs2000_readreg.exit:                           ; preds = %do.end.i, %do.body.i.m88rs2000_readreg.exit_crit_edge, %entry.m88rs2000_readreg.exit_crit_edge
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %24 = or i8 %23, 3
  %25 = zext i32 %volt to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %volt, label %m88rs2000_readreg.exit.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb4
  ]

m88rs2000_readreg.exit.sw.epilog_crit_edge:       ; preds = %m88rs2000_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %m88rs2000_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %26 = and i8 %23, -4
  br label %sw.epilog

sw.bb4:                                           ; preds = %m88rs2000_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %27 = and i8 %23, -4
  %28 = or i8 %27, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb, %m88rs2000_readreg.exit.sw.epilog_crit_edge
  %data.0 = phi i8 [ %24, %m88rs2000_readreg.exit.sw.epilog_crit_edge ], [ %28, %sw.bb4 ], [ %26, %sw.bb ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i17) #7
  %29 = getelementptr inbounds [2 x i8], ptr %buf.i17, i32 0, i32 1
  %30 = ptrtoint ptr %buf.i17 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -78, ptr %buf.i17, align 1
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %data.0, ptr %29, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i18) #7
  %32 = getelementptr inbounds i8, ptr %msg.i18, i32 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 196607, ptr %32, align 4
  %34 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %config.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 4
  %conv.i20 = zext i8 %37 to i16
  %38 = ptrtoint ptr %msg.i18 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.i20, ptr %msg.i18, align 4
  %flags.i21 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18, i32 0, i32 1
  %39 = ptrtoint ptr %flags.i21 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %flags.i21, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18, i32 0, i32 3
  %40 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %buf.i17, ptr %buf1.i, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %call.i23 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg.i18, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i23)
  %cmp.not.i24 = icmp eq i32 %call.i23, 1
  br i1 %cmp.not.i24, label %sw.epilog.m88rs2000_writereg.exit_crit_edge, label %do.body.i27

sw.epilog.m88rs2000_writereg.exit_crit_edge:      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit

do.body.i27:                                      ; preds = %sw.epilog
  %43 = load i32, ptr @m88rs2000_debug, align 4
  %and.i25 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25)
  %tobool.not.i26 = icmp eq i32 %and.i25, 0
  br i1 %tobool.not.i26, label %do.body.i27.m88rs2000_writereg.exit_crit_edge, label %do.end.i28

do.body.i27.m88rs2000_writereg.exit_crit_edge:    ; preds = %do.body.i27
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit

do.end.i28:                                       ; preds = %do.body.i27
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i = zext i8 %data.0 to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 178, i32 noundef %conv6.i, i32 noundef %call.i23) #11
  br label %m88rs2000_writereg.exit

m88rs2000_writereg.exit:                          ; preds = %do.end.i28, %do.body.i27.m88rs2000_writereg.exit_crit_edge, %sw.epilog.m88rs2000_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i18) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i17) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88rs2000_i2c_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #0 align 64 {
entry:
  %buf.i3 = alloca [2 x i8], align 1
  %msg.i4 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -127, ptr %buf.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -124, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196607, ptr %5, align 4
  %config.i = getelementptr inbounds %struct.m88rs2000_state, ptr %1, i32 0, i32 1
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
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.then.m88rs2000_writereg.exit_crit_edge, label %do.body.i

if.then.m88rs2000_writereg.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit

do.body.i:                                        ; preds = %if.then
  %16 = load i32, ptr @m88rs2000_debug, align 4
  %and.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.m88rs2000_writereg.exit_crit_edge, label %do.end.i

do.body.i.m88rs2000_writereg.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 129, i32 noundef 132, i32 noundef %call.i) #11
  br label %m88rs2000_writereg.exit

m88rs2000_writereg.exit:                          ; preds = %do.end.i, %do.body.i.m88rs2000_writereg.exit_crit_edge, %if.then.m88rs2000_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i3) #7
  %17 = getelementptr inbounds [2 x i8], ptr %buf.i3, i32 0, i32 1
  %18 = ptrtoint ptr %buf.i3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -127, ptr %buf.i3, align 1
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -127, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4) #7
  %20 = getelementptr inbounds i8, ptr %msg.i4, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 196607, ptr %20, align 4
  %config.i5 = getelementptr inbounds %struct.m88rs2000_state, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %config.i5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %config.i5, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 4
  %conv.i6 = zext i8 %25 to i16
  %26 = ptrtoint ptr %msg.i4 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i6, ptr %msg.i4, align 4
  %flags.i7 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i7 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i7, align 2
  %buf1.i9 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4, i32 0, i32 3
  %28 = ptrtoint ptr %buf1.i9 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %buf.i3, ptr %buf1.i9, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %call.i10 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %msg.i4, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i10)
  %cmp.not.i11 = icmp eq i32 %call.i10, 1
  br i1 %cmp.not.i11, label %if.else.m88rs2000_writereg.exit18_crit_edge, label %do.body.i14

if.else.m88rs2000_writereg.exit18_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit18

do.body.i14:                                      ; preds = %if.else
  %31 = load i32, ptr @m88rs2000_debug, align 4
  %and.i12 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12)
  %tobool.not.i13 = icmp eq i32 %and.i12, 0
  br i1 %tobool.not.i13, label %do.body.i14.m88rs2000_writereg.exit18_crit_edge, label %do.end.i16

do.body.i14.m88rs2000_writereg.exit18_crit_edge:  ; preds = %do.body.i14
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit18

do.end.i16:                                       ; preds = %do.body.i14
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 129, i32 noundef 129, i32 noundef %call.i10) #11
  br label %m88rs2000_writereg.exit18

m88rs2000_writereg.exit18:                        ; preds = %do.end.i16, %do.body.i14.m88rs2000_writereg.exit18_crit_edge, %if.else.m88rs2000_writereg.exit18_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i3) #7
  br label %if.end

if.end:                                           ; preds = %m88rs2000_writereg.exit18, %m88rs2000_writereg.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %32(i32 noundef 2147480) #7
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @m88rs2000_tab_set(ptr nocapture noundef readonly %state, ptr noundef readonly %tab) unnamed_addr #0 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %tab, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %0 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %config.i = getelementptr inbounds %struct.m88rs2000_state, ptr %state, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %for.cond.preheader
  %i.0115 = phi i8 [ 0, %for.cond.preheader ], [ %i.0115.be, %for.body.backedge ]
  %conv = zext i8 %i.0115 to i32
  %arrayidx = getelementptr %struct.inittab, ptr %tab, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %3, label %for.body.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 16, label %sw.bb8
    i8 -1, label %sw.bb58
    i8 0, label %for.body.for.inc_crit_edge
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %for.body
  %reg = getelementptr %struct.inittab, ptr %tab, i32 %conv, i32 1
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg, align 1
  %val = getelementptr %struct.inittab, ptr %tab, i32 %conv, i32 2
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %6, ptr %buf.i, align 1
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %8, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %1, align 4
  %12 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %config.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 4
  %conv.i = zext i8 %15 to i16
  %16 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %msg.i, align 4
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %flags.i, align 2
  store i16 2, ptr %1, align 4
  %18 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %buf.i, ptr %buf1.i, align 4
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %state, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %sw.epilog, label %do.body.i

do.body.i:                                        ; preds = %sw.bb
  %21 = load i32, ptr @m88rs2000_debug, align 4
  %and.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.sw.epilog.thread109_crit_edge, label %do.end.i

do.body.i.sw.epilog.thread109_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread109

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i = zext i8 %6 to i32
  %conv6.i = zext i8 %8 to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %conv5.i, i32 noundef %conv6.i, i32 noundef %call.i) #11
  br label %sw.epilog.thread109

sw.bb8:                                           ; preds = %for.body
  %reg11 = getelementptr %struct.inittab, ptr %tab, i32 %conv, i32 1
  %22 = ptrtoint ptr %reg11 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %reg11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp13.not = icmp eq i8 %23, 0
  br i1 %cmp13.not, label %sw.bb8.for.inc_crit_edge, label %if.then15

sw.bb8.for.inc_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then15:                                        ; preds = %sw.bb8
  %conv12 = zext i8 %23 to i32
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then15
  %__ms.0114 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %conv12, %if.then15 ]
  %dec = add nsw i32 %__ms.0114, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 214748000) #7
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.for.inc_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.for.inc_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb58:                                          ; preds = %for.body
  %reg61 = getelementptr %struct.inittab, ptr %tab, i32 %conv, i32 1
  %25 = ptrtoint ptr %reg61 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %reg61, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %26)
  %cmp63 = icmp eq i8 %26, -86
  br i1 %cmp63, label %land.lhs.true65, label %sw.bb58.for.inc_crit_edge

sw.bb58.for.inc_crit_edge:                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true65:                                  ; preds = %sw.bb58
  %val68 = getelementptr %struct.inittab, ptr %tab, i32 %conv, i32 2
  %27 = ptrtoint ptr %val68 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %val68, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %28)
  %cmp70 = icmp eq i8 %28, -1
  %inc = add i8 %i.0115, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %inc)
  %cmp1.not = icmp eq i8 %inc, -1
  %or.cond116 = select i1 %cmp70, i1 true, i1 %cmp1.not
  br i1 %or.cond116, label %land.lhs.true65.cleanup_crit_edge, label %land.lhs.true65.for.body.backedge_crit_edge

land.lhs.true65.for.body.backedge_crit_edge:      ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.backedge

land.lhs.true65.cleanup_crit_edge:                ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog.thread109:                              ; preds = %do.end.i, %do.body.i.sw.epilog.thread109_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %sw.bb58.for.inc_crit_edge, %while.body.for.inc_crit_edge, %sw.bb8.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc.old = add i8 %i.0115, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %inc.old)
  %cmp1.not.old = icmp eq i8 %inc.old, -1
  br i1 %cmp1.not.old, label %for.inc.cleanup_crit_edge, label %for.inc.for.body.backedge_crit_edge

for.inc.for.body.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.backedge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.backedge:                                ; preds = %for.inc.for.body.backedge_crit_edge, %land.lhs.true65.for.body.backedge_crit_edge
  %i.0115.be = phi i8 [ %inc.old, %for.inc.for.body.backedge_crit_edge ], [ %inc, %land.lhs.true65.for.body.backedge_crit_edge ]
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %sw.epilog.thread109, %land.lhs.true65.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -19, %sw.epilog.thread109 ], [ 0, %for.inc.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ 0, %land.lhs.true65.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @m88rs2000_readreg(ptr nocapture noundef readonly %state, i8 noundef zeroext %reg) unnamed_addr #0 align 64 {
entry:
  %b0 = alloca [1 x i8], align 1
  %b1 = alloca [1 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0) #7
  %0 = ptrtoint ptr %b0 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reg, ptr %b0, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1) #7
  %1 = ptrtoint ptr %b1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %b1, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #7
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %config = getelementptr inbounds %struct.m88rs2000_state, ptr %state, i32 0, i32 1
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4
  %conv = zext i8 %7 to i16
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %b0, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %12 = load i8, ptr %5, align 4
  %conv5 = zext i8 %12 to i16
  %13 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv5, ptr %arrayinit.element, align 4
  %flags6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %14 = ptrtoint ptr %flags6 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags6, align 2
  %len7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %15 = ptrtoint ptr %len7 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %len7, align 4
  %buf8 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %16 = ptrtoint ptr %buf8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %b1, ptr %buf8, align 4
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state, align 4
  %call = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %entry.if.end18_crit_edge, label %do.body

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

do.body:                                          ; preds = %entry
  %19 = load i32, ptr @m88rs2000_debug, align 4
  %and = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.if.end18_crit_edge, label %do.end

do.body.if.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv14 = zext i8 %reg to i32
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %conv14, i32 noundef %call) #11
  br label %if.end18

if.end18:                                         ; preds = %do.end, %do.body.if.end18_crit_edge, %entry.if.end18_crit_edge
  %20 = ptrtoint ptr %b1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %b1, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0) #7
  ret i8 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @m88rs2000_get_fec(ptr nocapture noundef readonly %state) unnamed_addr #0 align 64 {
entry:
  %buf.i27 = alloca [2 x i8], align 1
  %msg.i28 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i15 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %0 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -102, ptr %buf.i, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 48, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 196607, ptr %3, align 4
  %config.i = getelementptr inbounds %struct.m88rs2000_state, ptr %state, i32 0, i32 1
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
  %call.i = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %entry.m88rs2000_writereg.exit_crit_edge, label %do.body.i

entry.m88rs2000_writereg.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit

do.body.i:                                        ; preds = %entry
  %14 = load i32, ptr @m88rs2000_debug, align 4
  %and.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.m88rs2000_writereg.exit_crit_edge, label %do.end.i

do.body.i.m88rs2000_writereg.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 154, i32 noundef 48, i32 noundef %call.i) #11
  br label %m88rs2000_writereg.exit

m88rs2000_writereg.exit:                          ; preds = %do.end.i, %do.body.i.m88rs2000_writereg.exit_crit_edge, %entry.m88rs2000_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %15 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 118, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %16 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i15) #7
  %17 = getelementptr inbounds i8, ptr %msg.i15, i32 4
  %18 = call ptr @memset(ptr %17, i32 255, i32 16)
  %19 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %config.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 4
  %conv.i17 = zext i8 %22 to i16
  %23 = ptrtoint ptr %msg.i15 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i17, ptr %msg.i15, align 4
  %flags.i18 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 0, i32 1
  %24 = ptrtoint ptr %flags.i18 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %flags.i18, align 2
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1, ptr %17, align 4
  %buf.i20 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 0, i32 3
  %26 = ptrtoint ptr %buf.i20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %b0.i, ptr %buf.i20, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 1
  %27 = load i8, ptr %20, align 4
  %conv5.i = zext i8 %27 to i16
  %28 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 1, i32 1
  %29 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 1, i32 2
  %30 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 1, i32 3
  %31 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %b1.i, ptr %buf8.i, align 4
  %32 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %state, align 4
  %call.i21 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %msg.i15, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i21)
  %cmp.not.i22 = icmp eq i32 %call.i21, 2
  br i1 %cmp.not.i22, label %m88rs2000_writereg.exit.m88rs2000_readreg.exit_crit_edge, label %do.body.i25

m88rs2000_writereg.exit.m88rs2000_readreg.exit_crit_edge: ; preds = %m88rs2000_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit

do.body.i25:                                      ; preds = %m88rs2000_writereg.exit
  %34 = load i32, ptr @m88rs2000_debug, align 4
  %and.i23 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i23)
  %tobool.not.i24 = icmp eq i32 %and.i23, 0
  br i1 %tobool.not.i24, label %do.body.i25.m88rs2000_readreg.exit_crit_edge, label %do.end.i26

do.body.i25.m88rs2000_readreg.exit_crit_edge:     ; preds = %do.body.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit

do.end.i26:                                       ; preds = %do.body.i25
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 118, i32 noundef %call.i21) #11
  br label %m88rs2000_readreg.exit

m88rs2000_readreg.exit:                           ; preds = %do.end.i26, %do.body.i25.m88rs2000_readreg.exit_crit_edge, %m88rs2000_writereg.exit.m88rs2000_readreg.exit_crit_edge
  %35 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i15) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i27) #7
  %37 = getelementptr inbounds [2 x i8], ptr %buf.i27, i32 0, i32 1
  %38 = ptrtoint ptr %buf.i27 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -102, ptr %buf.i27, align 1
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -80, ptr %37, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i28) #7
  %40 = getelementptr inbounds i8, ptr %msg.i28, i32 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 196607, ptr %40, align 4
  %42 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %config.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 4
  %conv.i30 = zext i8 %45 to i16
  %46 = ptrtoint ptr %msg.i28 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv.i30, ptr %msg.i28, align 4
  %flags.i31 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i28, i32 0, i32 1
  %47 = ptrtoint ptr %flags.i31 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %flags.i31, align 2
  %buf1.i33 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i28, i32 0, i32 3
  %48 = ptrtoint ptr %buf1.i33 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %buf.i27, ptr %buf1.i33, align 4
  %49 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %state, align 4
  %call.i34 = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %msg.i28, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i34)
  %cmp.not.i35 = icmp eq i32 %call.i34, 1
  br i1 %cmp.not.i35, label %m88rs2000_readreg.exit.m88rs2000_writereg.exit42_crit_edge, label %do.body.i38

m88rs2000_readreg.exit.m88rs2000_writereg.exit42_crit_edge: ; preds = %m88rs2000_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit42

do.body.i38:                                      ; preds = %m88rs2000_readreg.exit
  %51 = load i32, ptr @m88rs2000_debug, align 4
  %and.i36 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36)
  %tobool.not.i37 = icmp eq i32 %and.i36, 0
  br i1 %tobool.not.i37, label %do.body.i38.m88rs2000_writereg.exit42_crit_edge, label %do.end.i40

do.body.i38.m88rs2000_writereg.exit42_crit_edge:  ; preds = %do.body.i38
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_writereg.exit42

do.end.i40:                                       ; preds = %do.body.i38
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 154, i32 noundef 176, i32 noundef %call.i34) #11
  br label %m88rs2000_writereg.exit42

m88rs2000_writereg.exit42:                        ; preds = %do.end.i40, %do.body.i38.m88rs2000_writereg.exit42_crit_edge, %m88rs2000_readreg.exit.m88rs2000_writereg.exit42_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i28) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i27) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %36)
  %52 = icmp ult i8 %36, -96
  br i1 %52, label %switch.lookup, label %m88rs2000_writereg.exit42.cleanup_crit_edge

m88rs2000_writereg.exit42.cleanup_crit_edge:      ; preds = %m88rs2000_writereg.exit42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %m88rs2000_writereg.exit42
  call void @__sanitizer_cov_trace_pc() #9
  %53 = lshr i8 %36, 5
  %conv6 = zext i8 %53 to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.m88rs2000_get_fec, i32 0, i32 %conv6
  %54 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %54)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %m88rs2000_writereg.exit42.cleanup_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ 9, %m88rs2000_writereg.exit42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @m88rs2000_get_mclk(ptr nocapture noundef readonly %fe) unnamed_addr #0 align 64 {
entry:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
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
  store i8 -122, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.m88rs2000_state, ptr %1, i32 0, i32 1
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
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.m88rs2000_readreg.exit_crit_edge, label %do.body.i

entry.m88rs2000_readreg.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit

do.body.i:                                        ; preds = %entry
  %21 = load i32, ptr @m88rs2000_debug, align 4
  %and.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.m88rs2000_readreg.exit_crit_edge, label %do.end.i

do.body.i.m88rs2000_readreg.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m88rs2000_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 134, i32 noundef %call.i) #11
  br label %m88rs2000_readreg.exit

m88rs2000_readreg.exit:                           ; preds = %do.end.i, %do.body.i.m88rs2000_readreg.exit_crit_edge, %entry.m88rs2000_readreg.exit_crit_edge
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %23, label %if.end [
    i8 0, label %m88rs2000_readreg.exit.cleanup_crit_edge
    i8 -1, label %m88rs2000_readreg.exit.cleanup_crit_edge15
  ]

m88rs2000_readreg.exit.cleanup_crit_edge15:       ; preds = %m88rs2000_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

m88rs2000_readreg.exit.cleanup_crit_edge:         ; preds = %m88rs2000_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %m88rs2000_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %25 = lshr i8 %23, 1
  %narrow = add nuw i8 %25, 1
  %conv6 = zext i8 %narrow to i32
  %mul = mul nuw nsw i32 %conv6, 27000
  %add7 = add nuw nsw i32 %mul, 14
  %div8 = udiv i32 %add7, 28
  br label %cleanup

cleanup:                                          ; preds = %if.end, %m88rs2000_readreg.exit.cleanup_crit_edge, %m88rs2000_readreg.exit.cleanup_crit_edge15
  %retval.0 = phi i32 [ %div8, %if.end ], [ 0, %m88rs2000_readreg.exit.cleanup_crit_edge ], [ 0, %m88rs2000_readreg.exit.cleanup_crit_edge15 ]
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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !17, !18, !19, !20, !22, !23, !25, !27, !28, !29, !30, !31, !33, !34, !35, !36, !38, !40, !42, !43, !44, !45, !47, !49, !50, !51, !52, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/m88rs2000.c", i32 39, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/m88rs2000.c", i32 40, i32 1}
!5 = !{ptr @__ksymtab_m88rs2000_attach, !6, !"__ksymtab_m88rs2000_attach", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/m88rs2000.c", i32 811, i32 1}
!7 = !{ptr @__UNIQUE_ID_description292, !8, !"__UNIQUE_ID_description292", i1 false, i1 false}
!8 = !{!"../drivers/media/dvb-frontends/m88rs2000.c", i32 813, i32 1}
!9 = !{ptr @__UNIQUE_ID_author293, !10, !"__UNIQUE_ID_author293", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/m88rs2000.c", i32 814, i32 1}
!11 = !{ptr @__UNIQUE_ID_file294, !12, !"__UNIQUE_ID_file294", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/m88rs2000.c", i32 815, i32 1}
!13 = !{ptr @__UNIQUE_ID_license295, !12, !"__UNIQUE_ID_license295", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_version296, !15, !"__UNIQUE_ID_version296", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/m88rs2000.c", i32 816, i32 1}
!16 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @__modver_attr, !15, !"__modver_attr", i1 false, i1 false}
!20 = !{ptr @m88rs2000_debug, !21, !"m88rs2000_debug", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/m88rs2000.c", i32 37, i32 12}
!22 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!23 = !{ptr @m88rs2000_ops, !24, !"m88rs2000_ops", i1 false, i1 false}
!24 = !{!"../drivers/media/dvb-frontends/m88rs2000.c", i32 747, i32 38}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/dvb-frontends/m88rs2000.c", i32 436, i32 2}
!27 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @m88rs2000_init._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @m88rs2000_init._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/dvb-frontends/m88rs2000.c", i32 66, i32 3}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @m88rs2000_writereg._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @m88rs2000_writereg._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @m88rs2000_setup, !37, !"m88rs2000_setup", i1 false, i1 false}
!37 = !{!"../drivers/media/dvb-frontends/m88rs2000.c", i32 289, i32 23}
!38 = !{ptr @m88rs2000_shutdown, !39, !"m88rs2000_shutdown", i1 false, i1 false}
!39 = !{!"../drivers/media/dvb-frontends/m88rs2000.c", i32 307, i32 23}
!40 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/dvb-frontends/m88rs2000.c", i32 610, i32 3}
!42 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @m88rs2000_set_frontend._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @m88rs2000_set_frontend._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @fe_reset, !46, !"fe_reset", i1 false, i1 false}
!46 = !{!"../drivers/media/dvb-frontends/m88rs2000.c", i32 317, i32 23}
!47 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/dvb-frontends/m88rs2000.c", i32 189, i32 2}
!49 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @m88rs2000_set_symbolrate._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @m88rs2000_set_symbolrate._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @fe_trigger, !53, !"fe_trigger", i1 false, i1 false}
!53 = !{!"../drivers/media/dvb-frontends/m88rs2000.c", i32 355, i32 23}
!54 = !{ptr @.str.12, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/dvb-frontends/m88rs2000.c", i32 95, i32 3}
!56 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @m88rs2000_readreg._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @m88rs2000_readreg._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.14, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/dvb-frontends/m88rs2000.c", i32 200, i32 2}
!61 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @m88rs2000_send_diseqc_msg._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @m88rs2000_send_diseqc_msg._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.16, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/dvb-frontends/m88rs2000.c", i32 242, i32 2}
!66 = !{ptr @m88rs2000_send_diseqc_burst._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @m88rs2000_send_diseqc_burst._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"auto-init"}
!78 = !{i64 2148215432, i64 2148215712, i64 2148216046, i64 2148216380}
