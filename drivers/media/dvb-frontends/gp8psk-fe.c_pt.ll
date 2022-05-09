; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/gp8psk-fe.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/gp8psk-fe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+gp8psk_fe_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_gp8psk_fe_attach\09\09\09\09"
module asm "\09.long\09__crc_gp8psk_fe_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gp8psk_fe_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22gp8psk_fe_attach\22\09\09\09\09\09"
module asm "__kstrtabns_gp8psk_fe_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.gp8psk_fe_ops = type { ptr, ptr, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.gp8psk_fe_state = type { %struct.dvb_frontend, ptr, ptr, i8, i8, i16, i32, i32 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }

@__param_str_debug = internal constant [16 x i8] c"gp8psk_fe.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [29 x i8] c"gp8psk_fe.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [58 x i8] c"gp8psk_fe.parm=debug:Turn on/off debugging (default:off).\00", section ".modinfo", align 1
@gp8psk_fe_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013gp8psk_fe: Error! gp8psk-fe ops not defined.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gp8psk_fe_attach\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/dvb-frontends/gp8psk-fe.c\00", [56 x i8] zeroinitializer }, align 32
@gp8psk_fe_attach._entry_ptr = internal global ptr @gp8psk_fe_attach._entry, section ".printk_index", align 4
@gp8psk_fe_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Genpix DVB-S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 800000000, i32 -2044967296, i32 100000, i32 0, i32 1000000, i32 45000000, i32 500, i32 134221487 }, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr null, ptr @gp8psk_fe_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gp8psk_fe_set_frontend, ptr @gp8psk_fe_get_tune_settings, ptr null, ptr @gp8psk_fe_read_status, ptr @gp8psk_fe_read_ber, ptr @gp8psk_fe_read_signal_strength, ptr @gp8psk_fe_read_snr, ptr @gp8psk_fe_read_unc_blocks, ptr null, ptr @gp8psk_fe_send_diseqc_msg, ptr null, ptr @gp8psk_fe_send_diseqc_burst, ptr @gp8psk_fe_set_tone, ptr @gp8psk_fe_set_voltage, ptr @gp8psk_fe_enable_high_lnb_voltage, ptr @gp8psk_fe_send_legacy_dish_cmd, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@gp8psk_fe_attach._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016gp8psk_fe: Frontend %sattached\0A\00", [62 x i8] zeroinitializer }, align 32
@gp8psk_fe_attach._entry_ptr.5 = internal global ptr @gp8psk_fe_attach._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"revision 1 \00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__kstrtab_gp8psk_fe_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_gp8psk_fe_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_gp8psk_fe_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gp8psk_fe_attach to i32), ptr @__kstrtab_gp8psk_fe_attach, ptr @__kstrtabns_gp8psk_fe_attach }, section "___ksymtab_gpl+gp8psk_fe_attach", align 4
@__UNIQUE_ID_author292 = internal constant [52 x i8] c"gp8psk_fe.author=Alan Nisota <alannisota@gamil.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [55 x i8] c"gp8psk_fe.description=Frontend Driver for Genpix DVB-S\00", section ".modinfo", align 1
@__UNIQUE_ID_version294 = internal constant [22 x i8] c"gp8psk_fe.version=1.1\00", section ".modinfo", align 1
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gp8psk_fe\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.9, ptr @.str.10 }, section "__modver", align 4
@__UNIQUE_ID_file295 = internal constant [53 x i8] c"gp8psk_fe.file=drivers/media/dvb-frontends/gp8psk-fe\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [22 x i8] c"gp8psk_fe.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gp8psk_fe_set_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017gp8psk_fe: %s: %s()\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gp8psk_fe_set_frontend\00", [41 x i8] zeroinitializer }, align 32
@gp8psk_fe_set_frontend._entry_ptr = internal global ptr @gp8psk_fe_set_frontend._entry, section ".printk_index", align 4
@gp8psk_fe_set_frontend._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017gp8psk_fe: %s: %s: unsupported modulation selected (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@gp8psk_fe_set_frontend._entry_ptr.15 = internal global ptr @gp8psk_fe_set_frontend._entry.13, section ".printk_index", align 4
@gp8psk_fe_set_frontend._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017gp8psk_fe: %s: %s: DVB-S2 delivery system selected\0A\00", [42 x i8] zeroinitializer }, align 32
@gp8psk_fe_set_frontend._entry_ptr.18 = internal global ptr @gp8psk_fe_set_frontend._entry.16, section ".printk_index", align 4
@gp8psk_fe_set_frontend._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.2, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017gp8psk_fe: %s: %s: Turbo-FEC delivery system selected\0A\00", [39 x i8] zeroinitializer }, align 32
@gp8psk_fe_set_frontend._entry_ptr.21 = internal global ptr @gp8psk_fe_set_frontend._entry.19, section ".printk_index", align 4
@gp8psk_fe_set_frontend._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.12, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017gp8psk_fe: %s: %s: unsupported delivery system selected (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@gp8psk_fe_set_frontend._entry_ptr.24 = internal global ptr @gp8psk_fe_set_frontend._entry.22, section ".printk_index", align 4
@gp8psk_fe_set_frontend._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@gp8psk_fe_set_frontend._entry_ptr.26 = internal global ptr @gp8psk_fe_set_frontend._entry.25, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@gp8psk_fe_send_diseqc_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017gp8psk_fe: %s: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gp8psk_fe_send_diseqc_msg\00", [38 x i8] zeroinitializer }, align 32
@gp8psk_fe_send_diseqc_msg._entry_ptr = internal global ptr @gp8psk_fe_send_diseqc_msg._entry, section ".printk_index", align 4
@gp8psk_fe_send_diseqc_burst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.29, ptr @.str.2, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gp8psk_fe_send_diseqc_burst\00", [36 x i8] zeroinitializer }, align 32
@gp8psk_fe_send_diseqc_burst._entry_ptr = internal global ptr @gp8psk_fe_send_diseqc_burst._entry, section ".printk_index", align 4
@switch.table.gp8psk_fe_set_frontend = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\00\01\02\05\03\05\04\05\05", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 6, i64 17]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 9]
@__sancov_gen_cov_switch_values.31 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 5, i64 8, i64 10]
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 18, i32 12 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 331, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [14 x i8] c"gp8psk_fe_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 351, i32 38 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 345, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 396, i32 1 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 137, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 151, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 158, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 161, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 165, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 222, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 243, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [43 x i8] c"../drivers/media/dvb-frontends/gp8psk-fe.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 258, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [36 x i8] c"switch.table.gp8psk_fe_set_frontend\00", align 1
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__UNIQUE_ID_version294, ptr @__ksymtab_gp8psk_fe_attach, ptr @__modver_attr, ptr @__param_debug, ptr @gp8psk_fe_attach._entry, ptr @gp8psk_fe_attach._entry.3, ptr @gp8psk_fe_attach._entry_ptr, ptr @gp8psk_fe_attach._entry_ptr.5, ptr @gp8psk_fe_send_diseqc_burst._entry, ptr @gp8psk_fe_send_diseqc_burst._entry_ptr, ptr @gp8psk_fe_send_diseqc_msg._entry, ptr @gp8psk_fe_send_diseqc_msg._entry_ptr, ptr @gp8psk_fe_set_frontend._entry, ptr @gp8psk_fe_set_frontend._entry.13, ptr @gp8psk_fe_set_frontend._entry.16, ptr @gp8psk_fe_set_frontend._entry.19, ptr @gp8psk_fe_set_frontend._entry.22, ptr @gp8psk_fe_set_frontend._entry.25, ptr @gp8psk_fe_set_frontend._entry_ptr, ptr @gp8psk_fe_set_frontend._entry_ptr.15, ptr @gp8psk_fe_set_frontend._entry_ptr.18, ptr @gp8psk_fe_set_frontend._entry_ptr.21, ptr @gp8psk_fe_set_frontend._entry_ptr.24, ptr @gp8psk_fe_set_frontend._entry_ptr.26, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @gp8psk_fe_ops, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @switch.table.gp8psk_fe_set_frontend], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_fe_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_fe_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_fe_attach._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_fe_set_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_fe_set_frontend._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_fe_set_frontend._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_fe_set_frontend._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_fe_set_frontend._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_fe_set_frontend._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_fe_send_diseqc_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_fe_send_diseqc_burst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gp8psk_fe_set_frontend to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gp8psk_fe_attach(ptr noundef %ops, ptr noundef %priv, i1 noundef zeroext %is_rev1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %is_rev1 to i8
  %tobool.not = icmp eq ptr %ops, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false2

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %out = getelementptr inbounds %struct.gp8psk_fe_ops, ptr %ops, i32 0, i32 1
  %2 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %out, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.lhs.false2.do.end_crit_edge, label %lor.lhs.false4

lor.lhs.false2.do.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %reload = getelementptr inbounds %struct.gp8psk_fe_ops, ptr %ops, i32 0, i32 2
  %4 = ptrtoint ptr %reload to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reload, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %lor.lhs.false4.do.end_crit_edge, label %if.end

lor.lhs.false4.do.end_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false4.do.end_crit_edge, %lor.lhs.false2.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1060) #10
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ops10 = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 1
  %7 = call ptr @memcpy(ptr %ops10, ptr @gp8psk_fe_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  %ops12 = getelementptr inbounds %struct.gp8psk_fe_state, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %ops12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ops, ptr %ops12, align 4
  %priv13 = getelementptr inbounds %struct.gp8psk_fe_state, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %priv13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %priv, ptr %priv13, align 8
  %is_rev115 = getelementptr inbounds %struct.gp8psk_fe_state, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %is_rev115 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %is_rev115, align 8
  %cond = select i1 %is_rev1, ptr @.str.6, ptr @.str.7
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %cond) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ %call7.i.i, %if.end9 ], [ null, %do.end ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gp8psk_fe_release(ptr nocapture noundef readonly %fe) #0 align 64 {
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
define internal i32 @gp8psk_fe_set_frontend(ptr nocapture noundef %fe) #0 align 64 {
entry:
  %status.i = alloca i8, align 1
  %cmd = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cmd) #6
  %2 = getelementptr inbounds [10 x i8], ptr %cmd, i32 0, i32 1
  %3 = getelementptr inbounds [10 x i8], ptr %cmd, i32 0, i32 2
  %4 = getelementptr inbounds [10 x i8], ptr %cmd, i32 0, i32 3
  %5 = getelementptr inbounds [10 x i8], ptr %cmd, i32 0, i32 4
  %6 = getelementptr inbounds [10 x i8], ptr %cmd, i32 0, i32 5
  %7 = getelementptr inbounds [10 x i8], ptr %cmd, i32 0, i32 6
  %8 = getelementptr inbounds [10 x i8], ptr %cmd, i32 0, i32 7
  %9 = getelementptr inbounds [10 x i8], ptr %cmd, i32 0, i32 8
  %10 = getelementptr inbounds [10 x i8], ptr %cmd, i32 0, i32 9
  %11 = call ptr @memset(ptr %cmd, i32 255, i32 10)
  %12 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dtv_property_cache, align 4
  %mul = mul i32 %13, 1000
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.12) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %conv = trunc i32 %mul to i8
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %5, align 1
  %shr = lshr i32 %mul, 8
  %conv5 = trunc i32 %shr to i8
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv5, ptr %6, align 1
  %shr7 = lshr i32 %mul, 16
  %conv9 = trunc i32 %shr7 to i8
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv9, ptr %7, align 1
  %shr11 = lshr i32 %mul, 24
  %conv13 = trunc i32 %shr11 to i8
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv13, ptr %8, align 1
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %19 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %delivery_system, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %20)
  %cmp = icmp eq i32 %20, 5
  br i1 %cmp, label %land.lhs.true, label %do.end3.if.end20_crit_edge

do.end3.if.end20_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

land.lhs.true:                                    ; preds = %do.end3
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %21 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %modulation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %22)
  %cmp16 = icmp eq i32 %22, 9
  br i1 %cmp16, label %if.end20.thread, label %if.end20thread-pre-split

if.end20.thread:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %delivery_system to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 17, ptr %delivery_system, align 4
  br label %do.body52

if.end20thread-pre-split:                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr = load i32, ptr %delivery_system, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end20thread-pre-split, %do.end3.if.end20_crit_edge
  %25 = phi i32 [ %.pr, %if.end20thread-pre-split ], [ %20, %do.end3.if.end20_crit_edge ]
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %25, label %do.body63 [
    i32 5, label %sw.bb
    i32 6, label %do.body40
    i32 17, label %if.end20.do.body52_crit_edge
  ]

if.end20.do.body52_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body52

sw.bb:                                            ; preds = %if.end20
  %modulation22 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %27 = ptrtoint ptr %modulation22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %modulation22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp23.not = icmp eq i32 %28, 0
  br i1 %cmp23.not, label %if.end38, label %do.body26

do.body26:                                        ; preds = %sw.bb
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool27.not = icmp eq i32 %29, 0
  br i1 %tobool27.not, label %do.body26.cleanup_crit_edge, label %do.end31

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end31:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.12, i32 noundef %28) #9
  br label %cleanup

if.end38:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %fec_inner = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 5
  %30 = ptrtoint ptr %fec_inner to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 9, ptr %fec_inner, align 4
  br label %sw.epilog

do.body40:                                        ; preds = %if.end20
  %31 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool41.not = icmp eq i32 %31, 0
  br i1 %tobool41.not, label %do.body40.sw.epilog_crit_edge, label %do.end45

do.body40.sw.epilog_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end45:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.12) #9
  br label %sw.epilog

do.body52:                                        ; preds = %if.end20.do.body52_crit_edge, %if.end20.thread
  %32 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool53.not = icmp eq i32 %32, 0
  br i1 %tobool53.not, label %do.body52.sw.epilog_crit_edge, label %do.end57

do.body52.sw.epilog_crit_edge:                    ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end57:                                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #8
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.12) #9
  br label %sw.epilog

do.body63:                                        ; preds = %if.end20
  %33 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool64.not = icmp eq i32 %33, 0
  br i1 %tobool64.not, label %do.body63.cleanup_crit_edge, label %do.end68

do.body63.cleanup_crit_edge:                      ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end68:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #8
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.12, i32 noundef %25) #9
  br label %cleanup

sw.epilog:                                        ; preds = %do.end57, %do.body52.sw.epilog_crit_edge, %do.end45, %do.body40.sw.epilog_crit_edge, %if.end38
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %34 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %symbol_rate, align 4
  %conv76 = trunc i32 %35 to i8
  %36 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv76, ptr %cmd, align 1
  %shr79 = lshr i32 %35, 8
  %conv81 = trunc i32 %shr79 to i8
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv81, ptr %2, align 1
  %shr84 = lshr i32 %35, 16
  %conv86 = trunc i32 %shr84 to i8
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv86, ptr %3, align 1
  %shr89 = lshr i32 %35, 24
  %conv91 = trunc i32 %shr89 to i8
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv91, ptr %4, align 1
  %modulation93 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %40 = ptrtoint ptr %modulation93 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %modulation93, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %41, label %do.body146 [
    i32 0, label %sw.bb94
    i32 9, label %sw.bb126
    i32 1, label %sw.bb142
  ]

sw.bb94:                                          ; preds = %sw.epilog
  %is_rev1 = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 3
  %43 = ptrtoint ptr %is_rev1 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %is_rev1, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool95.not = icmp eq i8 %44, 0
  br i1 %tobool95.not, label %sw.bb94.if.end102_crit_edge, label %if.then96

sw.bb94.if.end102_crit_edge:                      ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

if.then96:                                        ; preds = %sw.bb94
  %45 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i) #6
  %47 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -1, ptr %status.i, align 1, !annotation !80
  %ops.i = getelementptr inbounds %struct.gp8psk_fe_state, ptr %46, i32 0, i32 2
  %48 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %priv.i = getelementptr inbounds %struct.gp8psk_fe_state, ptr %46, i32 0, i32 1
  %52 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %priv.i, align 4
  %call.i = call i32 %51(ptr noundef %53, i8 noundef zeroext -128, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %status.i, i32 noundef 1) #6
  %54 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %status.i, align 1
  %56 = and i8 %55, 64
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool98.not = icmp eq i8 %56, 0
  br i1 %tobool98.not, label %if.then96.if.end102_crit_edge, label %if.then99

if.then96.if.end102_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

if.then99:                                        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #8
  %ops = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 2
  %57 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops, align 4
  %reload = getelementptr inbounds %struct.gp8psk_fe_ops, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %reload to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reload, align 4
  %priv = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 1
  %61 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %priv, align 4
  %call100 = call i32 %60(ptr noundef %62) #6
  br label %if.end102

if.end102:                                        ; preds = %if.then99, %if.then96.if.end102_crit_edge, %sw.bb94.if.end102_crit_edge
  %fec_inner103 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 5
  %63 = ptrtoint ptr %fec_inner103 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fec_inner103, align 4
  %switch.tableidx = add i32 %64, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %65 = icmp ult i32 %switch.tableidx, 9
  br i1 %65, label %switch.lookup, label %if.end102.sw.epilog118_crit_edge

if.end102.sw.epilog118_crit_edge:                 ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog118

switch.lookup:                                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [9 x i8], ptr @switch.table.gp8psk_fe_set_frontend, i32 0, i32 %switch.tableidx
  %66 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %66)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sw.epilog118

sw.epilog118:                                     ; preds = %switch.lookup, %if.end102.sw.epilog118_crit_edge
  %.sink = phi i8 [ %switch.load, %switch.lookup ], [ 5, %if.end102.sw.epilog118_crit_edge ]
  %67 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %.sink, ptr %10, align 1
  %68 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %delivery_system, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %69)
  %cmp120 = icmp eq i32 %69, 17
  br i1 %cmp120, label %if.then122, label %if.else

if.then122:                                       ; preds = %sw.epilog118
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %9, align 1
  br label %sw.epilog158

if.else:                                          ; preds = %sw.epilog118
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %9, align 1
  br label %sw.epilog158

sw.bb126:                                         ; preds = %sw.epilog
  %72 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 2, ptr %9, align 1
  %fec_inner128 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 5
  %73 = ptrtoint ptr %fec_inner128 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %fec_inner128, align 4
  %75 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %74, label %sw.default139 [
    i32 2, label %sw.bb129
    i32 3, label %sw.bb131
    i32 10, label %sw.bb133
    i32 5, label %sw.bb135
    i32 8, label %sw.bb137
  ]

sw.bb129:                                         ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %10, align 1
  br label %sw.epilog158

sw.bb131:                                         ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %10, align 1
  br label %sw.epilog158

sw.bb133:                                         ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 2, ptr %10, align 1
  br label %sw.epilog158

sw.bb135:                                         ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_pc() #8
  %79 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 3, ptr %10, align 1
  br label %sw.epilog158

sw.bb137:                                         ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 4, ptr %10, align 1
  br label %sw.epilog158

sw.default139:                                    ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %10, align 1
  br label %sw.epilog158

sw.bb142:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 3, ptr %9, align 1
  %83 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %10, align 1
  br label %sw.epilog158

do.body146:                                       ; preds = %sw.epilog
  %84 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool147.not = icmp eq i32 %84, 0
  br i1 %tobool147.not, label %do.body146.cleanup_crit_edge, label %do.end151

do.body146.cleanup_crit_edge:                     ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end151:                                        ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #8
  %call154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.12, i32 noundef %41) #9
  br label %cleanup

sw.epilog158:                                     ; preds = %sw.bb142, %sw.default139, %sw.bb137, %sw.bb135, %sw.bb133, %sw.bb131, %sw.bb129, %if.else, %if.then122
  %is_rev1159 = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 3
  %85 = ptrtoint ptr %is_rev1159 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %is_rev1159, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool160.not = icmp eq i8 %86, 0
  br i1 %tobool160.not, label %sw.epilog158.if.end163_crit_edge, label %if.then161

sw.epilog158.if.end163_crit_edge:                 ; preds = %sw.epilog158
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end163

if.then161:                                       ; preds = %sw.epilog158
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %demodulator_priv, align 4
  %ops.i202 = getelementptr inbounds %struct.gp8psk_fe_state, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %ops.i202 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ops.i202, align 4
  %out.i = getelementptr inbounds %struct.gp8psk_fe_ops, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %out.i, align 4
  %priv.i203 = getelementptr inbounds %struct.gp8psk_fe_state, ptr %88, i32 0, i32 1
  %93 = ptrtoint ptr %priv.i203 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %priv.i203, align 4
  %call.i204 = call i32 %92(ptr noundef %94, i8 noundef zeroext -127, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #6
  br label %if.end163

if.end163:                                        ; preds = %if.then161, %sw.epilog158.if.end163_crit_edge
  %ops164 = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 2
  %95 = ptrtoint ptr %ops164 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ops164, align 4
  %out = getelementptr inbounds %struct.gp8psk_fe_ops, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %out, align 4
  %priv165 = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 1
  %99 = ptrtoint ptr %priv165 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %priv165, align 4
  %call166 = call i32 %98(ptr noundef %100, i8 noundef zeroext -122, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %cmd, i32 noundef 10) #6
  %lock = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 4
  %101 = ptrtoint ptr %lock to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %lock, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %102 = load volatile i32, ptr @jiffies, align 128
  %next_status_check = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 6
  %103 = ptrtoint ptr %next_status_check to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %next_status_check, align 4
  %status_check_interval = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 7
  %104 = ptrtoint ptr %status_check_interval to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 200, ptr %status_check_interval, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end163, %do.end151, %do.body146.cleanup_crit_edge, %do.end68, %do.body63.cleanup_crit_edge, %do.end31, %do.body26.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end163 ], [ -95, %do.end31 ], [ -95, %do.body26.cleanup_crit_edge ], [ -95, %do.end68 ], [ -95, %do.body63.cleanup_crit_edge ], [ -95, %do.end151 ], [ -95, %do.body146.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cmd) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @gp8psk_fe_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %tune) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tune to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 800, ptr %tune, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp8psk_fe_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %status) #0 align 64 {
entry:
  %buf.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #6
  %next_status_check.i = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 6
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 6)
  %3 = ptrtoint ptr %next_status_check.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %next_status_check.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %4, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.gp8psk_fe_update_status.exit_crit_edge

entry.gp8psk_fe_update_status.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %gp8psk_fe_update_status.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 1
  %ops.i = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %priv.i = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv.i, align 4
  %lock.i = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 4
  %call.i = tail call i32 %10(ptr noundef %12, i8 noundef zeroext -112, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %lock.i, i32 noundef 1) #6
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %17 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv.i, align 4
  %call4.i = call i32 %16(ptr noundef %18, i8 noundef zeroext -121, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf.i, i32 noundef 6) #6
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %6, align 1
  %conv.i = zext i8 %20 to i16
  %shl.i = shl nuw i16 %conv.i, 8
  %21 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %buf.i, align 1
  %conv6.i = zext i8 %22 to i16
  %or.i = or i16 %shl.i, %conv6.i
  %snr.i = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %snr.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %or.i, ptr %snr.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %status_check_interval.i = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %status_check_interval.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status_check_interval.i, align 4
  %mul.i = mul i32 %26, 100
  %div.i = udiv i32 %mul.i, 1000
  %add.i = add i32 %div.i, %24
  %27 = ptrtoint ptr %next_status_check.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add.i, ptr %next_status_check.i, align 4
  br label %gp8psk_fe_update_status.exit

gp8psk_fe_update_status.exit:                     ; preds = %if.then.i, %entry.gp8psk_fe_update_status.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #6
  %lock = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %lock to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %lock, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not = icmp eq i8 %29, 0
  %. = select i1 %tobool.not, i32 0, i32 31
  %30 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %., ptr %status, align 4
  %and = and i32 %., 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool1.not, i32 100, i32 1000
  %31 = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 7
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %spec.select, ptr %31, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @gp8psk_fe_read_ber(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %ber) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ber, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp8psk_fe_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
  %buf.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #6
  %next_status_check.i = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 6
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 6)
  %3 = ptrtoint ptr %next_status_check.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %next_status_check.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %4, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.gp8psk_fe_update_status.exit_crit_edge

entry.gp8psk_fe_update_status.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %gp8psk_fe_update_status.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 1
  %ops.i = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %priv.i = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv.i, align 4
  %lock.i = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 4
  %call.i = tail call i32 %10(ptr noundef %12, i8 noundef zeroext -112, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %lock.i, i32 noundef 1) #6
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %17 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv.i, align 4
  %call4.i = call i32 %16(ptr noundef %18, i8 noundef zeroext -121, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf.i, i32 noundef 6) #6
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %6, align 1
  %conv.i = zext i8 %20 to i16
  %shl.i = shl nuw i16 %conv.i, 8
  %21 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %buf.i, align 1
  %conv6.i = zext i8 %22 to i16
  %or.i = or i16 %shl.i, %conv6.i
  %snr.i = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %snr.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %or.i, ptr %snr.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %status_check_interval.i = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %status_check_interval.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status_check_interval.i, align 4
  %mul.i = mul i32 %26, 100
  %div.i = udiv i32 %mul.i, 1000
  %add.i = add i32 %div.i, %24
  %27 = ptrtoint ptr %next_status_check.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add.i, ptr %next_status_check.i, align 4
  br label %gp8psk_fe_update_status.exit

gp8psk_fe_update_status.exit:                     ; preds = %if.then.i, %entry.gp8psk_fe_update_status.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #6
  %snr = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %snr to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %snr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3840, i16 %29)
  %cmp = icmp ugt i16 %29, 3840
  %add = mul i16 %29, 17
  %storemerge = select i1 %cmp, i16 -1, i16 %add
  %30 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %storemerge, ptr %strength, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp8psk_fe_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
  %buf.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #6
  %next_status_check.i = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 6
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 6)
  %3 = ptrtoint ptr %next_status_check.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %next_status_check.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %4, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.gp8psk_fe_update_status.exit_crit_edge

entry.gp8psk_fe_update_status.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %gp8psk_fe_update_status.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 1
  %ops.i = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %priv.i = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv.i, align 4
  %lock.i = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 4
  %call.i = tail call i32 %10(ptr noundef %12, i8 noundef zeroext -112, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %lock.i, i32 noundef 1) #6
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %17 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv.i, align 4
  %call4.i = call i32 %16(ptr noundef %18, i8 noundef zeroext -121, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf.i, i32 noundef 6) #6
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %6, align 1
  %conv.i = zext i8 %20 to i16
  %shl.i = shl nuw i16 %conv.i, 8
  %21 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %buf.i, align 1
  %conv6.i = zext i8 %22 to i16
  %or.i = or i16 %shl.i, %conv6.i
  %snr.i = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %snr.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %or.i, ptr %snr.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %status_check_interval.i = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %status_check_interval.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status_check_interval.i, align 4
  %mul.i = mul i32 %26, 100
  %div.i = udiv i32 %mul.i, 1000
  %add.i = add i32 %div.i, %24
  %27 = ptrtoint ptr %next_status_check.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add.i, ptr %next_status_check.i, align 4
  br label %gp8psk_fe_update_status.exit

gp8psk_fe_update_status.exit:                     ; preds = %if.then.i, %entry.gp8psk_fe_update_status.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #6
  %snr1 = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %snr1 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %snr1, align 2
  %30 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @gp8psk_fe_read_unc_blocks(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %unc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %unc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %unc, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp8psk_fe_send_diseqc_msg(ptr nocapture noundef readonly %fe, ptr noundef %m) #0 align 64 {
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.28) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %ops = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %out = getelementptr inbounds %struct.gp8psk_fe_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %out, align 4
  %priv = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %9 = ptrtoint ptr %m to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %m, align 1
  %conv = zext i8 %10 to i16
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %m, i32 0, i32 1
  %11 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %msg_len, align 1
  %conv5 = zext i8 %12 to i32
  %call6 = tail call i32 %6(ptr noundef %8, i8 noundef zeroext -115, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef %m, i32 noundef %conv5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  %. = select i1 %tobool7.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp8psk_fe_send_diseqc_burst(ptr nocapture noundef readonly %fe, i32 noundef %burst) #0 align 64 {
entry:
  %cmd = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd) #6
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.29) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %burst)
  %cmp = icmp ne i32 %burst, 0
  %conv = zext i1 %cmp to i8
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %cmd, align 1
  %ops = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %out = getelementptr inbounds %struct.gp8psk_fe_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %out, align 4
  %priv = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  %conv4 = zext i1 %cmp to i16
  %call5 = call i32 %7(ptr noundef %9, i8 noundef zeroext -115, i16 noundef zeroext %conv4, i16 noundef zeroext 0, ptr noundef nonnull %cmd, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %. = select i1 %tobool6.not, i32 0, i32 -22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd) #6
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp8psk_fe_set_tone(ptr nocapture noundef readonly %fe, i32 noundef %tone) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %ops = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %out = getelementptr inbounds %struct.gp8psk_fe_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %out, align 4
  %priv = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tone)
  %cmp = icmp eq i32 %tone, 0
  %conv1 = zext i1 %cmp to i16
  %call = tail call i32 %5(ptr noundef %7, i8 noundef zeroext -116, i16 noundef zeroext %conv1, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp8psk_fe_set_voltage(ptr nocapture noundef readonly %fe, i32 noundef %voltage) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %ops = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %out = getelementptr inbounds %struct.gp8psk_fe_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %out, align 4
  %priv = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %voltage)
  %cmp = icmp eq i32 %voltage, 1
  %conv1 = zext i1 %cmp to i16
  %call = tail call i32 %5(ptr noundef %7, i8 noundef zeroext -117, i16 noundef zeroext %conv1, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp8psk_fe_enable_high_lnb_voltage(ptr nocapture noundef readonly %fe, i32 noundef %onoff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %ops = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %out = getelementptr inbounds %struct.gp8psk_fe_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %out, align 4
  %priv = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  %conv = trunc i32 %onoff to i16
  %call = tail call i32 %5(ptr noundef %7, i8 noundef zeroext -108, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp8psk_fe_send_legacy_dish_cmd(ptr nocapture noundef readonly %fe, i32 noundef %sw_cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = trunc i32 %sw_cmd to i8
  %conv = and i8 %2, 127
  %ops = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %out = getelementptr inbounds %struct.gp8psk_fe_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %out, align 4
  %priv = getelementptr inbounds %struct.gp8psk_fe_state, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %conv1 = zext i8 %conv to i16
  %call = tail call i32 %6(ptr noundef %8, i8 noundef zeroext -113, i16 noundef zeroext %conv1, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %out3 = getelementptr inbounds %struct.gp8psk_fe_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %out3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %out3, align 4
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %15 = trunc i32 %sw_cmd to i16
  %16 = lshr i16 %15, 7
  %17 = and i16 %16, 1
  %call9 = tail call i32 %12(ptr noundef %14, i8 noundef zeroext -117, i16 noundef zeroext %17, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  %. = select i1 %tobool10.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !15, !16, !17, !19, !21, !23, !25, !26, !27, !28, !29, !31, !32, !34, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !63, !64, !65, !66, !68, !69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/gp8psk-fe.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/gp8psk-fe.c", i32 20, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/gp8psk-fe.c", i32 331, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @gp8psk_fe_attach._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @gp8psk_fe_attach._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/gp8psk-fe.c", i32 345, i32 2}
!13 = !{ptr @gp8psk_fe_attach._entry.3, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @gp8psk_fe_attach._entry_ptr.5, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__ksymtab_gp8psk_fe_attach, !18, !"__ksymtab_gp8psk_fe_attach", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-frontends/gp8psk-fe.c", i32 349, i32 1}
!19 = !{ptr @__UNIQUE_ID_author292, !20, !"__UNIQUE_ID_author292", i1 false, i1 false}
!20 = !{!"../drivers/media/dvb-frontends/gp8psk-fe.c", i32 394, i32 1}
!21 = !{ptr @__UNIQUE_ID_description293, !22, !"__UNIQUE_ID_description293", i1 false, i1 false}
!22 = !{!"../drivers/media/dvb-frontends/gp8psk-fe.c", i32 395, i32 1}
!23 = !{ptr @__UNIQUE_ID_version294, !24, !"__UNIQUE_ID_version294", i1 false, i1 false}
!24 = !{!"../drivers/media/dvb-frontends/gp8psk-fe.c", i32 396, i32 1}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__modver_attr, !24, !"__modver_attr", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_file295, !30, !"__UNIQUE_ID_file295", i1 false, i1 false}
!30 = !{!"../drivers/media/dvb-frontends/gp8psk-fe.c", i32 397, i32 1}
!31 = !{ptr @__UNIQUE_ID_license296, !30, !"__UNIQUE_ID_license296", i1 false, i1 false}
!32 = !{ptr @debug, !33, !"debug", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/gp8psk-fe.c", i32 18, i32 12}
!34 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!35 = !{ptr @gp8psk_fe_ops, !36, !"gp8psk_fe_ops", i1 false, i1 false}
!36 = !{!"../drivers/media/dvb-frontends/gp8psk-fe.c", i32 351, i32 38}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/dvb-frontends/gp8psk-fe.c", i32 137, i32 2}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @gp8psk_fe_set_frontend._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @gp8psk_fe_set_frontend._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/gp8psk-fe.c", i32 151, i32 4}
!44 = !{ptr @gp8psk_fe_set_frontend._entry.13, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @gp8psk_fe_set_frontend._entry_ptr.15, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-frontends/gp8psk-fe.c", i32 158, i32 3}
!48 = !{ptr @gp8psk_fe_set_frontend._entry.16, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @gp8psk_fe_set_frontend._entry_ptr.18, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/dvb-frontends/gp8psk-fe.c", i32 161, i32 3}
!52 = !{ptr @gp8psk_fe_set_frontend._entry.19, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @gp8psk_fe_set_frontend._entry_ptr.21, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/dvb-frontends/gp8psk-fe.c", i32 165, i32 3}
!56 = !{ptr @gp8psk_fe_set_frontend._entry.22, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @gp8psk_fe_set_frontend._entry_ptr.24, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @gp8psk_fe_set_frontend._entry.25, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../drivers/media/dvb-frontends/gp8psk-fe.c", i32 222, i32 3}
!60 = !{ptr @gp8psk_fe_set_frontend._entry_ptr.26, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/dvb-frontends/gp8psk-fe.c", i32 243, i32 2}
!63 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @gp8psk_fe_send_diseqc_msg._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @gp8psk_fe_send_diseqc_msg._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/dvb-frontends/gp8psk-fe.c", i32 258, i32 2}
!68 = !{ptr @gp8psk_fe_send_diseqc_burst._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @gp8psk_fe_send_diseqc_burst._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i8 0, i8 2}
!80 = !{!"auto-init"}
