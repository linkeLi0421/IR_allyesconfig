; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mxl111sf_demod_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_mxl111sf_demod_attach\09\09\09\09"
module asm "\09.long\09__crc_mxl111sf_demod_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mxl111sf_demod_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22mxl111sf_demod_attach\22\09\09\09\09\09"
module asm "__kstrtabns_mxl111sf_demod_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
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
%struct.mxl111sf_reg_ctrl_info = type { i8, i8, i8 }
%struct.mxl111sf_demod_state = type { ptr, ptr, %struct.dvb_frontend }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.124], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.124 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.125 }>
%union.anon.125 = type { i64 }
%struct.mxl111sf_demod_config = type { ptr, ptr, ptr }

@__param_str_debug = internal constant [21 x i8] c"mxl111sf_demod.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@mxl111sf_demod_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @mxl111sf_demod_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype386 = internal constant [34 x i8] c"mxl111sf_demod.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug387 = internal constant [66 x i8] c"mxl111sf_demod.parm=debug:set debugging level (1=info (or-able)).\00", section ".modinfo", align 1
@mxl111sf_demod_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\017%s: ()\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mxl111sf_demod_attach\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c\00", [50 x i8] zeroinitializer }, align 32
@mxl111sf_demod_attach._entry_ptr = internal global ptr @mxl111sf_demod_attach._entry, section ".printk_index", align 4
@mxl111sf_demod_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"MaxLinear MxL111SF DVB-T demodulator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 177000000, i32 858000000, i32 166666, i32 0, i32 0, i32 0, i32 0, i32 1075523246 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @mxl111sf_demod_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxl111sf_demod_set_frontend, ptr @mxl111sf_demod_get_tune_settings, ptr @mxl111sf_demod_get_frontend, ptr @mxl111sf_demod_read_status, ptr @mxl111sf_demod_read_ber, ptr @mxl111sf_demod_read_signal_strength, ptr @mxl111sf_demod_read_snr, ptr @mxl111sf_demod_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__kstrtab_mxl111sf_demod_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_mxl111sf_demod_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_mxl111sf_demod_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mxl111sf_demod_attach to i32), ptr @__kstrtab_mxl111sf_demod_attach, ptr @__kstrtabns_mxl111sf_demod_attach }, section "___ksymtab_gpl+mxl111sf_demod_attach", align 4
@__UNIQUE_ID_description394 = internal constant [71 x i8] c"mxl111sf_demod.description=MaxLinear MxL111SF DVB-T demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author395 = internal constant [59 x i8] c"mxl111sf_demod.author=Michael Krufky <mkrufky@linuxtv.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file396 = internal constant [64 x i8] c"mxl111sf_demod.file=drivers/media/usb/dvb-usb-v2/mxl111sf-demod\00", section ".modinfo", align 1
@__UNIQUE_ID_license397 = internal constant [27 x i8] c"mxl111sf_demod.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version398 = internal constant [27 x i8] c"mxl111sf_demod.version=0.1\00", section ".modinfo", align 1
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mxl111sf_demod\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.4, ptr @.str.5 }, section "__modver", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mxl111sf_demod_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxl111sf_demod_release\00", [41 x i8] zeroinitializer }, align 32
@mxl111sf_demod_release._entry_ptr = internal global ptr @mxl111sf_demod_release._entry, section ".printk_index", align 4
@__const.mxl111sf_demod_set_frontend.phy_pll_patch = private unnamed_addr constant [7 x %struct.mxl111sf_reg_ctrl_info] [%struct.mxl111sf_reg_ctrl_info { i8 0, i8 -1, i8 1 }, %struct.mxl111sf_reg_ctrl_info { i8 64, i8 -1, i8 5 }, %struct.mxl111sf_reg_ctrl_info { i8 64, i8 -1, i8 1 }, %struct.mxl111sf_reg_ctrl_info { i8 65, i8 -1, i8 -54 }, %struct.mxl111sf_reg_ctrl_info { i8 65, i8 -1, i8 -64 }, %struct.mxl111sf_reg_ctrl_info { i8 0, i8 -1, i8 0 }, %struct.mxl111sf_reg_ctrl_info zeroinitializer], align 1
@mxl111sf_demod_set_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.7, ptr @.str.2, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxl111sf_demod_set_frontend\00", [36 x i8] zeroinitializer }, align 32
@mxl111sf_demod_set_frontend._entry_ptr = internal global ptr @mxl111sf_demod_set_frontend._entry, section ".printk_index", align 4
@mxl111sf_demod_set_frontend._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: error %d on line %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mxl111sf_demod_set_frontend._entry_ptr.10 = internal global ptr @mxl111sf_demod_set_frontend._entry.8, section ".printk_index", align 4
@mxl111sf_demod_set_frontend._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_demod_set_frontend._entry_ptr.12 = internal global ptr @mxl111sf_demod_set_frontend._entry.11, section ".printk_index", align 4
@mxl111sf_demod_set_frontend._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_demod_set_frontend._entry_ptr.14 = internal global ptr @mxl111sf_demod_set_frontend._entry.13, section ".printk_index", align 4
@mxl111sf_demod_get_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.15, ptr @.str.2, i32 507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxl111sf_demod_get_frontend\00", [36 x i8] zeroinitializer }, align 32
@mxl111sf_demod_get_frontend._entry_ptr = internal global ptr @mxl111sf_demod_get_frontend._entry, section ".printk_index", align 4
@mxl1x1sf_demod_get_tps_code_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.16, ptr @.str.2, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mxl1x1sf_demod_get_tps_code_rate\00", [63 x i8] zeroinitializer }, align 32
@mxl1x1sf_demod_get_tps_code_rate._entry_ptr = internal global ptr @mxl1x1sf_demod_get_tps_code_rate._entry, section ".printk_index", align 4
@mxl1x1sf_demod_get_tps_modulation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.17, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mxl1x1sf_demod_get_tps_modulation\00", [62 x i8] zeroinitializer }, align 32
@mxl1x1sf_demod_get_tps_modulation._entry_ptr = internal global ptr @mxl1x1sf_demod_get_tps_modulation._entry, section ".printk_index", align 4
@mxl1x1sf_demod_get_tps_guard_fft_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.18, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"mxl1x1sf_demod_get_tps_guard_fft_mode\00", [58 x i8] zeroinitializer }, align 32
@mxl1x1sf_demod_get_tps_guard_fft_mode._entry_ptr = internal global ptr @mxl1x1sf_demod_get_tps_guard_fft_mode._entry, section ".printk_index", align 4
@mxl1x1sf_demod_get_tps_guard_interval._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.19, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"mxl1x1sf_demod_get_tps_guard_interval\00", [58 x i8] zeroinitializer }, align 32
@mxl1x1sf_demod_get_tps_guard_interval._entry_ptr = internal global ptr @mxl1x1sf_demod_get_tps_guard_interval._entry, section ".printk_index", align 4
@mxl1x1sf_demod_get_tps_hierarchy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.20, ptr @.str.2, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mxl1x1sf_demod_get_tps_hierarchy\00", [63 x i8] zeroinitializer }, align 32
@mxl1x1sf_demod_get_tps_hierarchy._entry_ptr = internal global ptr @mxl1x1sf_demod_get_tps_hierarchy._entry, section ".printk_index", align 4
@mxl111sf_demod_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.21, ptr @.str.2, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mxl111sf_demod_read_status\00", [37 x i8] zeroinitializer }, align 32
@mxl111sf_demod_read_status._entry_ptr = internal global ptr @mxl111sf_demod_read_status._entry, section ".printk_index", align 4
@mxl111sf_demod_read_status._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.21, ptr @.str.2, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_demod_read_status._entry_ptr.23 = internal global ptr @mxl111sf_demod_read_status._entry.22, section ".printk_index", align 4
@mxl111sf_demod_read_status._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.21, ptr @.str.2, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_demod_read_status._entry_ptr.25 = internal global ptr @mxl111sf_demod_read_status._entry.24, section ".printk_index", align 4
@mxl111sf_demod_read_status._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.21, ptr @.str.2, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_demod_read_status._entry_ptr.27 = internal global ptr @mxl111sf_demod_read_status._entry.26, section ".printk_index", align 4
@mxl1x1sf_demod_get_rs_lock_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.28, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mxl1x1sf_demod_get_rs_lock_status\00", [62 x i8] zeroinitializer }, align 32
@mxl1x1sf_demod_get_rs_lock_status._entry_ptr = internal global ptr @mxl1x1sf_demod_get_rs_lock_status._entry, section ".printk_index", align 4
@mxl1x1sf_demod_get_tps_lock_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.29, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mxl1x1sf_demod_get_tps_lock_status\00", [61 x i8] zeroinitializer }, align 32
@mxl1x1sf_demod_get_tps_lock_status._entry_ptr = internal global ptr @mxl1x1sf_demod_get_tps_lock_status._entry, section ".printk_index", align 4
@mxl1x1sf_demod_get_sync_lock_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.30, ptr @.str.2, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mxl1x1sf_demod_get_sync_lock_status\00", [60 x i8] zeroinitializer }, align 32
@mxl1x1sf_demod_get_sync_lock_status._entry_ptr = internal global ptr @mxl1x1sf_demod_get_sync_lock_status._entry, section ".printk_index", align 4
@mxl1x1sf_demod_get_fec_lock_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.31, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mxl1x1sf_demod_get_fec_lock_status\00", [61 x i8] zeroinitializer }, align 32
@mxl1x1sf_demod_get_fec_lock_status._entry_ptr = internal global ptr @mxl1x1sf_demod_get_fec_lock_status._entry, section ".printk_index", align 4
@mxl111sf_demod_read_ber._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.32, ptr @.str.2, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxl111sf_demod_read_ber\00", [40 x i8] zeroinitializer }, align 32
@mxl111sf_demod_read_ber._entry_ptr = internal global ptr @mxl111sf_demod_read_ber._entry, section ".printk_index", align 4
@mxl111sf_demod_read_ber._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.32, ptr @.str.2, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_demod_read_ber._entry_ptr.34 = internal global ptr @mxl111sf_demod_read_ber._entry.33, section ".printk_index", align 4
@mxl111sf_demod_read_ber._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.32, ptr @.str.2, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_demod_read_ber._entry_ptr.36 = internal global ptr @mxl111sf_demod_read_ber._entry.35, section ".printk_index", align 4
@mxl111sf_demod_calc_snr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.37, ptr @.str.2, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxl111sf_demod_calc_snr\00", [40 x i8] zeroinitializer }, align 32
@mxl111sf_demod_calc_snr._entry_ptr = internal global ptr @mxl111sf_demod_calc_snr._entry, section ".printk_index", align 4
@mxl111sf_demod_calc_snr._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.37, ptr @.str.2, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_demod_calc_snr._entry_ptr.39 = internal global ptr @mxl111sf_demod_calc_snr._entry.38, section ".printk_index", align 4
@mxl111sf_demod_read_snr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.40, ptr @.str.2, i32 422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxl111sf_demod_read_snr\00", [40 x i8] zeroinitializer }, align 32
@mxl111sf_demod_read_snr._entry_ptr = internal global ptr @mxl111sf_demod_read_snr._entry, section ".printk_index", align 4
@mxl111sf_demod_read_ucblocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.41, ptr @.str.2, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mxl111sf_demod_read_ucblocks\00", [35 x i8] zeroinitializer }, align 32
@mxl111sf_demod_read_ucblocks._entry_ptr = internal global ptr @mxl111sf_demod_read_ucblocks._entry, section ".printk_index", align 4
@mxl111sf_demod_read_ucblocks._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.41, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_demod_read_ucblocks._entry_ptr.43 = internal global ptr @mxl111sf_demod_read_ucblocks._entry.42, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.44 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.47 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.49 = private unnamed_addr constant [21 x i8] c"mxl111sf_demod_debug\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 12, i32 12 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 578, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [19 x i8] c"mxl111sf_demod_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 544, i32 38 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 598, i32 1 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 539, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 289, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 293, i32 7 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 298, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 301, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 507, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 67, i32 6 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 98, i32 6 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 123, i32 6 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 148, i32 6 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 176, i32 6 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 439, i32 6 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 442, i32 6 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 445, i32 6 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 448, i32 6 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 219, i32 6 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 232, i32 6 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 206, i32 6 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 245, i32 6 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 383, i32 6 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 386, i32 6 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 389, i32 6 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 406, i32 6 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 409, i32 6 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 422, i32 6 }
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 337, i32 6 }
@___asan_gen_.208 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.209 = private constant [49 x i8] c"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 344, i32 6 }
@llvm.compiler.used = appending global [92 x ptr] [ptr @__UNIQUE_ID_author395, ptr @__UNIQUE_ID_debug387, ptr @__UNIQUE_ID_debugtype386, ptr @__UNIQUE_ID_description394, ptr @__UNIQUE_ID_file396, ptr @__UNIQUE_ID_license397, ptr @__UNIQUE_ID_version398, ptr @__ksymtab_mxl111sf_demod_attach, ptr @__modver_attr, ptr @__param_debug, ptr @mxl111sf_demod_attach._entry, ptr @mxl111sf_demod_attach._entry_ptr, ptr @mxl111sf_demod_calc_snr._entry, ptr @mxl111sf_demod_calc_snr._entry.38, ptr @mxl111sf_demod_calc_snr._entry_ptr, ptr @mxl111sf_demod_calc_snr._entry_ptr.39, ptr @mxl111sf_demod_get_frontend._entry, ptr @mxl111sf_demod_get_frontend._entry_ptr, ptr @mxl111sf_demod_read_ber._entry, ptr @mxl111sf_demod_read_ber._entry.33, ptr @mxl111sf_demod_read_ber._entry.35, ptr @mxl111sf_demod_read_ber._entry_ptr, ptr @mxl111sf_demod_read_ber._entry_ptr.34, ptr @mxl111sf_demod_read_ber._entry_ptr.36, ptr @mxl111sf_demod_read_snr._entry, ptr @mxl111sf_demod_read_snr._entry_ptr, ptr @mxl111sf_demod_read_status._entry, ptr @mxl111sf_demod_read_status._entry.22, ptr @mxl111sf_demod_read_status._entry.24, ptr @mxl111sf_demod_read_status._entry.26, ptr @mxl111sf_demod_read_status._entry_ptr, ptr @mxl111sf_demod_read_status._entry_ptr.23, ptr @mxl111sf_demod_read_status._entry_ptr.25, ptr @mxl111sf_demod_read_status._entry_ptr.27, ptr @mxl111sf_demod_read_ucblocks._entry, ptr @mxl111sf_demod_read_ucblocks._entry.42, ptr @mxl111sf_demod_read_ucblocks._entry_ptr, ptr @mxl111sf_demod_read_ucblocks._entry_ptr.43, ptr @mxl111sf_demod_release._entry, ptr @mxl111sf_demod_release._entry_ptr, ptr @mxl111sf_demod_set_frontend._entry, ptr @mxl111sf_demod_set_frontend._entry.11, ptr @mxl111sf_demod_set_frontend._entry.13, ptr @mxl111sf_demod_set_frontend._entry.8, ptr @mxl111sf_demod_set_frontend._entry_ptr, ptr @mxl111sf_demod_set_frontend._entry_ptr.10, ptr @mxl111sf_demod_set_frontend._entry_ptr.12, ptr @mxl111sf_demod_set_frontend._entry_ptr.14, ptr @mxl1x1sf_demod_get_fec_lock_status._entry, ptr @mxl1x1sf_demod_get_fec_lock_status._entry_ptr, ptr @mxl1x1sf_demod_get_rs_lock_status._entry, ptr @mxl1x1sf_demod_get_rs_lock_status._entry_ptr, ptr @mxl1x1sf_demod_get_sync_lock_status._entry, ptr @mxl1x1sf_demod_get_sync_lock_status._entry_ptr, ptr @mxl1x1sf_demod_get_tps_code_rate._entry, ptr @mxl1x1sf_demod_get_tps_code_rate._entry_ptr, ptr @mxl1x1sf_demod_get_tps_guard_fft_mode._entry, ptr @mxl1x1sf_demod_get_tps_guard_fft_mode._entry_ptr, ptr @mxl1x1sf_demod_get_tps_guard_interval._entry, ptr @mxl1x1sf_demod_get_tps_guard_interval._entry_ptr, ptr @mxl1x1sf_demod_get_tps_hierarchy._entry, ptr @mxl1x1sf_demod_get_tps_hierarchy._entry_ptr, ptr @mxl1x1sf_demod_get_tps_lock_status._entry, ptr @mxl1x1sf_demod_get_tps_lock_status._entry_ptr, ptr @mxl1x1sf_demod_get_tps_modulation._entry, ptr @mxl1x1sf_demod_get_tps_modulation._entry_ptr, ptr @mxl111sf_demod_debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mxl111sf_demod_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.37, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_demod_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_demod_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_demod_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_demod_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_demod_set_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_demod_set_frontend._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_demod_set_frontend._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_demod_set_frontend._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_demod_get_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl1x1sf_demod_get_tps_code_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl1x1sf_demod_get_tps_modulation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl1x1sf_demod_get_tps_guard_fft_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl1x1sf_demod_get_tps_guard_interval._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl1x1sf_demod_get_tps_hierarchy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_demod_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_demod_read_status._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_demod_read_status._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_demod_read_status._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl1x1sf_demod_get_rs_lock_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl1x1sf_demod_get_tps_lock_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl1x1sf_demod_get_sync_lock_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl1x1sf_demod_get_fec_lock_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_demod_read_ber._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_demod_read_ber._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_demod_read_ber._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_demod_calc_snr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_demod_calc_snr._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_demod_read_snr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_demod_read_ucblocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_demod_read_ucblocks._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mxl111sf_demod_attach(ptr noundef %mxl_state, ptr noundef %cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @mxl111sf_demod_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1048) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mxl_state, ptr %call7.i.i, align 8
  %cfg5 = getelementptr inbounds %struct.mxl111sf_demod_state, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %cfg5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cfg, ptr %cfg5, align 4
  %fe = getelementptr inbounds %struct.mxl111sf_demod_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.mxl111sf_demod_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %4 = call ptr @memcpy(ptr %ops, ptr @mxl111sf_demod_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.mxl111sf_demod_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %fe, %if.end3 ], [ null, %if.end.cleanup_crit_edge ]
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
define internal void @mxl111sf_demod_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @mxl111sf_demod_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %1) #6
  %3 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %demodulator_priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_demod_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  %phy_pll_patch = alloca [7 x %struct.mxl111sf_reg_ctrl_info], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %phy_pll_patch) #6
  %2 = call ptr @memcpy(ptr %phy_pll_patch, ptr @__const.mxl111sf_demod_set_frontend.phy_pll_patch, i32 21)
  %3 = load i32, ptr @mxl111sf_demod_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %4 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_params, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.if.end19_crit_edge, label %if.then2

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then2:                                         ; preds = %if.end
  %call6 = tail call i32 %5(ptr noundef %fe) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end11, label %if.end18.critedge

do.end11:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef %call6, i32 noundef 293) #9
  br label %fail

if.end18.critedge:                                ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 50) #6
  br label %if.end19

if.end19:                                         ; preds = %if.end18.critedge, %if.end.if.end19_crit_edge
  %cfg.i = getelementptr inbounds %struct.mxl111sf_demod_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 4
  %program_regs.i = getelementptr inbounds %struct.mxl111sf_demod_config, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %program_regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %program_regs.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end19.do.end28_crit_edge, label %mxl111sf_demod_program_regs.exit

if.end19.do.end28_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28

mxl111sf_demod_program_regs.exit:                 ; preds = %if.end19
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call.i = call i32 %9(ptr noundef %11, ptr noundef nonnull %phy_pll_patch) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp22 = icmp slt i32 %call.i, 0
  br i1 %cmp22, label %mxl111sf_demod_program_regs.exit.do.end28_crit_edge, label %mxl111sf_demod_program_regs.exit.if.end31_crit_edge

mxl111sf_demod_program_regs.exit.if.end31_crit_edge: ; preds = %mxl111sf_demod_program_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

mxl111sf_demod_program_regs.exit.do.end28_crit_edge: ; preds = %mxl111sf_demod_program_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28

do.end28:                                         ; preds = %mxl111sf_demod_program_regs.exit.do.end28_crit_edge, %if.end19.do.end28_crit_edge
  %cond.i61 = phi i32 [ %call.i, %mxl111sf_demod_program_regs.exit.do.end28_crit_edge ], [ -22, %if.end19.do.end28_crit_edge ]
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef %cond.i61, i32 noundef 298) #9
  br label %if.end31

if.end31:                                         ; preds = %do.end28, %mxl111sf_demod_program_regs.exit.if.end31_crit_edge
  call void @msleep(i32 noundef 50) #6
  %12 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i, align 4
  %write_reg.i.i = getelementptr inbounds %struct.mxl111sf_demod_config, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_reg.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end31.do.end41_crit_edge, label %mxl1x1sf_demod_reset_irq_status.exit

if.end31.do.end41_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end41

mxl1x1sf_demod_reset_irq_status.exit:             ; preds = %if.end31
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call.i.i = call i32 %15(ptr noundef %17, i8 noundef zeroext 14, i8 noundef zeroext -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp35 = icmp slt i32 %call.i.i, 0
  br i1 %cmp35, label %mxl1x1sf_demod_reset_irq_status.exit.do.end41_crit_edge, label %mxl1x1sf_demod_reset_irq_status.exit.if.end44_crit_edge

mxl1x1sf_demod_reset_irq_status.exit.if.end44_crit_edge: ; preds = %mxl1x1sf_demod_reset_irq_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

mxl1x1sf_demod_reset_irq_status.exit.do.end41_crit_edge: ; preds = %mxl1x1sf_demod_reset_irq_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end41

do.end41:                                         ; preds = %mxl1x1sf_demod_reset_irq_status.exit.do.end41_crit_edge, %if.end31.do.end41_crit_edge
  %cond.i.i65 = phi i32 [ %call.i.i, %mxl1x1sf_demod_reset_irq_status.exit.do.end41_crit_edge ], [ -22, %if.end31.do.end41_crit_edge ]
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef %cond.i.i65, i32 noundef 301) #9
  br label %if.end44

if.end44:                                         ; preds = %do.end41, %mxl1x1sf_demod_reset_irq_status.exit.if.end44_crit_edge
  %cond.i.i64 = phi i32 [ %cond.i.i65, %do.end41 ], [ %call.i.i, %mxl1x1sf_demod_reset_irq_status.exit.if.end44_crit_edge ]
  call void @msleep(i32 noundef 100) #6
  br label %fail

fail:                                             ; preds = %if.end44, %do.end11
  %ret.0 = phi i32 [ %cond.i.i64, %if.end44 ], [ %call6, %do.end11 ]
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %phy_pll_patch) #6
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mxl111sf_demod_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %tune) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tune to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1000, ptr %tune, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_demod_get_frontend(ptr noundef %fe, ptr noundef %p) #0 align 64 {
entry:
  %val.i98 = alloca i8, align 1
  %val.i84 = alloca i8, align 1
  %val.i71 = alloca i8, align 1
  %val.i59 = alloca i8, align 1
  %val.i42 = alloca i8, align 1
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @mxl111sf_demod_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %get_bandwidth = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 10
  %3 = ptrtoint ptr %get_bandwidth to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_bandwidth, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %bandwidth_hz = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 7
  %call6 = tail call i32 %4(ptr noundef %fe, ptr noundef %bandwidth_hz) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.end.if.end7_crit_edge
  %get_frequency = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 9
  %5 = ptrtoint ptr %get_frequency to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_frequency, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %if.end7.if.end16_crit_edge, label %if.then11

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = tail call i32 %6(ptr noundef %fe, ptr noundef %p) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end7.if.end16_crit_edge
  %code_rate_HP = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #6
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %val.i, align 1, !annotation !139
  %cfg.i.i = getelementptr inbounds %struct.mxl111sf_demod_state, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end16.do.end.i_crit_edge, label %mxl111sf_demod_read_reg.exit.i

if.end16.do.end.i_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

mxl111sf_demod_read_reg.exit.i:                   ; preds = %if.end16
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call.i.i = call i32 %11(ptr noundef %13, i8 noundef zeroext 41, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %mxl111sf_demod_read_reg.exit.i.do.end.i_crit_edge, label %if.end5.critedge.i

mxl111sf_demod_read_reg.exit.i.do.end.i_crit_edge: ; preds = %mxl111sf_demod_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %mxl111sf_demod_read_reg.exit.i.do.end.i_crit_edge, %if.end16.do.end.i_crit_edge
  %cond.i3.i = phi i32 [ %call.i.i, %mxl111sf_demod_read_reg.exit.i.do.end.i_crit_edge ], [ -22, %if.end16.do.end.i_crit_edge ]
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.16, i32 noundef %cond.i3.i, i32 noundef 67) #9
  br label %mxl1x1sf_demod_get_tps_code_rate.exit

if.end5.critedge.i:                               ; preds = %mxl111sf_demod_read_reg.exit.i
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %val.i, align 1
  %16 = and i8 %15, 7
  %and.i = zext i8 %16 to i32
  %17 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %if.end5.critedge.i.mxl1x1sf_demod_get_tps_code_rate.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb7.i
    i32 2, label %sw.bb8.i
    i32 3, label %sw.bb9.i
    i32 4, label %sw.bb10.i
  ]

if.end5.critedge.i.mxl1x1sf_demod_get_tps_code_rate.exit_crit_edge: ; preds = %if.end5.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxl1x1sf_demod_get_tps_code_rate.exit

sw.bb.i:                                          ; preds = %if.end5.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %code_rate_HP to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %code_rate_HP, align 4
  br label %mxl1x1sf_demod_get_tps_code_rate.exit

sw.bb7.i:                                         ; preds = %if.end5.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %code_rate_HP to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %code_rate_HP, align 4
  br label %mxl1x1sf_demod_get_tps_code_rate.exit

sw.bb8.i:                                         ; preds = %if.end5.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %code_rate_HP to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3, ptr %code_rate_HP, align 4
  br label %mxl1x1sf_demod_get_tps_code_rate.exit

sw.bb9.i:                                         ; preds = %if.end5.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %code_rate_HP to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 5, ptr %code_rate_HP, align 4
  br label %mxl1x1sf_demod_get_tps_code_rate.exit

sw.bb10.i:                                        ; preds = %if.end5.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %code_rate_HP to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 7, ptr %code_rate_HP, align 4
  br label %mxl1x1sf_demod_get_tps_code_rate.exit

mxl1x1sf_demod_get_tps_code_rate.exit:            ; preds = %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb.i, %if.end5.critedge.i.mxl1x1sf_demod_get_tps_code_rate.exit_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  %code_rate_LP = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i42) #6
  %23 = ptrtoint ptr %val.i42 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %val.i42, align 1, !annotation !139
  %24 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cfg.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool.not.i.i44 = icmp eq ptr %27, null
  br i1 %tobool.not.i.i44, label %mxl1x1sf_demod_get_tps_code_rate.exit.do.end.i50_crit_edge, label %mxl111sf_demod_read_reg.exit.i47

mxl1x1sf_demod_get_tps_code_rate.exit.do.end.i50_crit_edge: ; preds = %mxl1x1sf_demod_get_tps_code_rate.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i50

mxl111sf_demod_read_reg.exit.i47:                 ; preds = %mxl1x1sf_demod_get_tps_code_rate.exit
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %call.i.i45 = call i32 %27(ptr noundef %29, i8 noundef zeroext 41, ptr noundef nonnull %val.i42) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i45)
  %cmp.i46 = icmp slt i32 %call.i.i45, 0
  br i1 %cmp.i46, label %mxl111sf_demod_read_reg.exit.i47.do.end.i50_crit_edge, label %if.end5.critedge.i52

mxl111sf_demod_read_reg.exit.i47.do.end.i50_crit_edge: ; preds = %mxl111sf_demod_read_reg.exit.i47
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i50

do.end.i50:                                       ; preds = %mxl111sf_demod_read_reg.exit.i47.do.end.i50_crit_edge, %mxl1x1sf_demod_get_tps_code_rate.exit.do.end.i50_crit_edge
  %cond.i3.i48 = phi i32 [ %call.i.i45, %mxl111sf_demod_read_reg.exit.i47.do.end.i50_crit_edge ], [ -22, %mxl1x1sf_demod_get_tps_code_rate.exit.do.end.i50_crit_edge ]
  %call1.i49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.16, i32 noundef %cond.i3.i48, i32 noundef 67) #9
  br label %mxl1x1sf_demod_get_tps_code_rate.exit58

if.end5.critedge.i52:                             ; preds = %mxl111sf_demod_read_reg.exit.i47
  %30 = ptrtoint ptr %val.i42 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %val.i42, align 1
  %32 = and i8 %31, 7
  %and.i51 = zext i8 %32 to i32
  %33 = zext i32 %and.i51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %and.i51, label %if.end5.critedge.i52.mxl1x1sf_demod_get_tps_code_rate.exit58_crit_edge [
    i32 0, label %sw.bb.i53
    i32 1, label %sw.bb7.i54
    i32 2, label %sw.bb8.i55
    i32 3, label %sw.bb9.i56
    i32 4, label %sw.bb10.i57
  ]

if.end5.critedge.i52.mxl1x1sf_demod_get_tps_code_rate.exit58_crit_edge: ; preds = %if.end5.critedge.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxl1x1sf_demod_get_tps_code_rate.exit58

sw.bb.i53:                                        ; preds = %if.end5.critedge.i52
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %code_rate_LP to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %code_rate_LP, align 4
  br label %mxl1x1sf_demod_get_tps_code_rate.exit58

sw.bb7.i54:                                       ; preds = %if.end5.critedge.i52
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %code_rate_LP to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %code_rate_LP, align 4
  br label %mxl1x1sf_demod_get_tps_code_rate.exit58

sw.bb8.i55:                                       ; preds = %if.end5.critedge.i52
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %code_rate_LP to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 3, ptr %code_rate_LP, align 4
  br label %mxl1x1sf_demod_get_tps_code_rate.exit58

sw.bb9.i56:                                       ; preds = %if.end5.critedge.i52
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %code_rate_LP to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 5, ptr %code_rate_LP, align 4
  br label %mxl1x1sf_demod_get_tps_code_rate.exit58

sw.bb10.i57:                                      ; preds = %if.end5.critedge.i52
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %code_rate_LP to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 7, ptr %code_rate_LP, align 4
  br label %mxl1x1sf_demod_get_tps_code_rate.exit58

mxl1x1sf_demod_get_tps_code_rate.exit58:          ; preds = %sw.bb10.i57, %sw.bb9.i56, %sw.bb8.i55, %sw.bb7.i54, %sw.bb.i53, %if.end5.critedge.i52.mxl1x1sf_demod_get_tps_code_rate.exit58_crit_edge, %do.end.i50
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i42) #6
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i59) #6
  %39 = ptrtoint ptr %val.i59 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -1, ptr %val.i59, align 1, !annotation !139
  %40 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cfg.i.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %tobool.not.i.i61 = icmp eq ptr %43, null
  br i1 %tobool.not.i.i61, label %mxl1x1sf_demod_get_tps_code_rate.exit58.do.end.i66_crit_edge, label %mxl111sf_demod_read_reg.exit.i64

mxl1x1sf_demod_get_tps_code_rate.exit58.do.end.i66_crit_edge: ; preds = %mxl1x1sf_demod_get_tps_code_rate.exit58
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i66

mxl111sf_demod_read_reg.exit.i64:                 ; preds = %mxl1x1sf_demod_get_tps_code_rate.exit58
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %call.i.i62 = call i32 %43(ptr noundef %45, i8 noundef zeroext 42, ptr noundef nonnull %val.i59) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i62)
  %cmp.i63 = icmp slt i32 %call.i.i62, 0
  br i1 %cmp.i63, label %mxl111sf_demod_read_reg.exit.i64.do.end.i66_crit_edge, label %if.end5.critedge.i67

mxl111sf_demod_read_reg.exit.i64.do.end.i66_crit_edge: ; preds = %mxl111sf_demod_read_reg.exit.i64
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i66

do.end.i66:                                       ; preds = %mxl111sf_demod_read_reg.exit.i64.do.end.i66_crit_edge, %mxl1x1sf_demod_get_tps_code_rate.exit58.do.end.i66_crit_edge
  %cond.i16.i = phi i32 [ %call.i.i62, %mxl111sf_demod_read_reg.exit.i64.do.end.i66_crit_edge ], [ -22, %mxl1x1sf_demod_get_tps_code_rate.exit58.do.end.i66_crit_edge ]
  %call1.i65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.17, i32 noundef %cond.i16.i, i32 noundef 98) #9
  br label %mxl1x1sf_demod_get_tps_modulation.exit

if.end5.critedge.i67:                             ; preds = %mxl111sf_demod_read_reg.exit.i64
  %46 = ptrtoint ptr %val.i59 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %val.i59, align 1
  %48 = lshr i8 %47, 4
  %49 = and i8 %48, 3
  %50 = zext i8 %49 to i32
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %50, label %if.end5.critedge.i67.mxl1x1sf_demod_get_tps_modulation.exit_crit_edge [
    i32 0, label %sw.bb.i68
    i32 1, label %sw.bb7.i69
    i32 2, label %sw.bb8.i70
  ]

if.end5.critedge.i67.mxl1x1sf_demod_get_tps_modulation.exit_crit_edge: ; preds = %if.end5.critedge.i67
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxl1x1sf_demod_get_tps_modulation.exit

sw.bb.i68:                                        ; preds = %if.end5.critedge.i67
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %modulation to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %modulation, align 4
  br label %mxl1x1sf_demod_get_tps_modulation.exit

sw.bb7.i69:                                       ; preds = %if.end5.critedge.i67
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %modulation to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %modulation, align 4
  br label %mxl1x1sf_demod_get_tps_modulation.exit

sw.bb8.i70:                                       ; preds = %if.end5.critedge.i67
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %modulation to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 3, ptr %modulation, align 4
  br label %mxl1x1sf_demod_get_tps_modulation.exit

mxl1x1sf_demod_get_tps_modulation.exit:           ; preds = %sw.bb8.i70, %sw.bb7.i69, %sw.bb.i68, %if.end5.critedge.i67.mxl1x1sf_demod_get_tps_modulation.exit_crit_edge, %do.end.i66
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i59) #6
  %transmission_mode = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i71) #6
  %55 = ptrtoint ptr %val.i71 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -1, ptr %val.i71, align 1, !annotation !139
  %56 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cfg.i.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %tobool.not.i.i73 = icmp eq ptr %59, null
  br i1 %tobool.not.i.i73, label %mxl1x1sf_demod_get_tps_modulation.exit.do.end.i79_crit_edge, label %mxl111sf_demod_read_reg.exit.i76

mxl1x1sf_demod_get_tps_modulation.exit.do.end.i79_crit_edge: ; preds = %mxl1x1sf_demod_get_tps_modulation.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i79

mxl111sf_demod_read_reg.exit.i76:                 ; preds = %mxl1x1sf_demod_get_tps_modulation.exit
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %call.i.i74 = call i32 %59(ptr noundef %61, i8 noundef zeroext 42, ptr noundef nonnull %val.i71) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i74)
  %cmp.i75 = icmp slt i32 %call.i.i74, 0
  br i1 %cmp.i75, label %mxl111sf_demod_read_reg.exit.i76.do.end.i79_crit_edge, label %if.end5.critedge.i80

mxl111sf_demod_read_reg.exit.i76.do.end.i79_crit_edge: ; preds = %mxl111sf_demod_read_reg.exit.i76
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i79

do.end.i79:                                       ; preds = %mxl111sf_demod_read_reg.exit.i76.do.end.i79_crit_edge, %mxl1x1sf_demod_get_tps_modulation.exit.do.end.i79_crit_edge
  %cond.i3.i77 = phi i32 [ %call.i.i74, %mxl111sf_demod_read_reg.exit.i76.do.end.i79_crit_edge ], [ -22, %mxl1x1sf_demod_get_tps_modulation.exit.do.end.i79_crit_edge ]
  %call1.i78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.18, i32 noundef %cond.i3.i77, i32 noundef 123) #9
  br label %mxl1x1sf_demod_get_tps_guard_fft_mode.exit

if.end5.critedge.i80:                             ; preds = %mxl111sf_demod_read_reg.exit.i76
  %62 = ptrtoint ptr %val.i71 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %val.i71, align 1
  %64 = lshr i8 %63, 2
  %65 = and i8 %64, 3
  %66 = zext i8 %65 to i32
  %67 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %66, label %if.end5.critedge.i80.mxl1x1sf_demod_get_tps_guard_fft_mode.exit_crit_edge [
    i32 0, label %sw.bb.i81
    i32 1, label %sw.bb7.i82
    i32 2, label %sw.bb8.i83
  ]

if.end5.critedge.i80.mxl1x1sf_demod_get_tps_guard_fft_mode.exit_crit_edge: ; preds = %if.end5.critedge.i80
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxl1x1sf_demod_get_tps_guard_fft_mode.exit

sw.bb.i81:                                        ; preds = %if.end5.critedge.i80
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %transmission_mode, align 4
  br label %mxl1x1sf_demod_get_tps_guard_fft_mode.exit

sw.bb7.i82:                                       ; preds = %if.end5.critedge.i80
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %transmission_mode, align 4
  br label %mxl1x1sf_demod_get_tps_guard_fft_mode.exit

sw.bb8.i83:                                       ; preds = %if.end5.critedge.i80
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 3, ptr %transmission_mode, align 4
  br label %mxl1x1sf_demod_get_tps_guard_fft_mode.exit

mxl1x1sf_demod_get_tps_guard_fft_mode.exit:       ; preds = %sw.bb8.i83, %sw.bb7.i82, %sw.bb.i81, %if.end5.critedge.i80.mxl1x1sf_demod_get_tps_guard_fft_mode.exit_crit_edge, %do.end.i79
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i71) #6
  %guard_interval = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i84) #6
  %71 = ptrtoint ptr %val.i84 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -1, ptr %val.i84, align 1, !annotation !139
  %72 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cfg.i.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %tobool.not.i.i86 = icmp eq ptr %75, null
  br i1 %tobool.not.i.i86, label %mxl1x1sf_demod_get_tps_guard_fft_mode.exit.do.end.i92_crit_edge, label %mxl111sf_demod_read_reg.exit.i89

mxl1x1sf_demod_get_tps_guard_fft_mode.exit.do.end.i92_crit_edge: ; preds = %mxl1x1sf_demod_get_tps_guard_fft_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i92

mxl111sf_demod_read_reg.exit.i89:                 ; preds = %mxl1x1sf_demod_get_tps_guard_fft_mode.exit
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 4
  %call.i.i87 = call i32 %75(ptr noundef %77, i8 noundef zeroext 41, ptr noundef nonnull %val.i84) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i87)
  %cmp.i88 = icmp slt i32 %call.i.i87, 0
  br i1 %cmp.i88, label %mxl111sf_demod_read_reg.exit.i89.do.end.i92_crit_edge, label %if.end5.critedge.i93

mxl111sf_demod_read_reg.exit.i89.do.end.i92_crit_edge: ; preds = %mxl111sf_demod_read_reg.exit.i89
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i92

do.end.i92:                                       ; preds = %mxl111sf_demod_read_reg.exit.i89.do.end.i92_crit_edge, %mxl1x1sf_demod_get_tps_guard_fft_mode.exit.do.end.i92_crit_edge
  %cond.i3.i90 = phi i32 [ %call.i.i87, %mxl111sf_demod_read_reg.exit.i89.do.end.i92_crit_edge ], [ -22, %mxl1x1sf_demod_get_tps_guard_fft_mode.exit.do.end.i92_crit_edge ]
  %call1.i91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.19, i32 noundef %cond.i3.i90, i32 noundef 148) #9
  br label %mxl1x1sf_demod_get_tps_guard_interval.exit

if.end5.critedge.i93:                             ; preds = %mxl111sf_demod_read_reg.exit.i89
  %78 = ptrtoint ptr %val.i84 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %val.i84, align 1
  %80 = lshr i8 %79, 4
  %81 = and i8 %80, 3
  %82 = zext i8 %81 to i32
  %83 = zext i32 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %82, label %if.end5.unreachabledefault.i [
    i32 0, label %sw.bb.i94
    i32 1, label %sw.bb7.i95
    i32 2, label %sw.bb8.i96
    i32 3, label %sw.bb9.i97
  ]

sw.bb.i94:                                        ; preds = %if.end5.critedge.i93
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %guard_interval to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %guard_interval, align 4
  br label %mxl1x1sf_demod_get_tps_guard_interval.exit

sw.bb7.i95:                                       ; preds = %if.end5.critedge.i93
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %guard_interval to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %guard_interval, align 4
  br label %mxl1x1sf_demod_get_tps_guard_interval.exit

sw.bb8.i96:                                       ; preds = %if.end5.critedge.i93
  call void @__sanitizer_cov_trace_pc() #8
  %86 = ptrtoint ptr %guard_interval to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 2, ptr %guard_interval, align 4
  br label %mxl1x1sf_demod_get_tps_guard_interval.exit

sw.bb9.i97:                                       ; preds = %if.end5.critedge.i93
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %guard_interval to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 3, ptr %guard_interval, align 4
  br label %mxl1x1sf_demod_get_tps_guard_interval.exit

if.end5.unreachabledefault.i:                     ; preds = %if.end5.critedge.i93
  unreachable

mxl1x1sf_demod_get_tps_guard_interval.exit:       ; preds = %sw.bb9.i97, %sw.bb8.i96, %sw.bb7.i95, %sw.bb.i94, %do.end.i92
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i84) #6
  %hierarchy = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i98) #6
  %88 = ptrtoint ptr %val.i98 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 -1, ptr %val.i98, align 1, !annotation !139
  %89 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cfg.i.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %tobool.not.i.i100 = icmp eq ptr %92, null
  br i1 %tobool.not.i.i100, label %mxl1x1sf_demod_get_tps_guard_interval.exit.do.end.i106_crit_edge, label %mxl111sf_demod_read_reg.exit.i103

mxl1x1sf_demod_get_tps_guard_interval.exit.do.end.i106_crit_edge: ; preds = %mxl1x1sf_demod_get_tps_guard_interval.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i106

mxl111sf_demod_read_reg.exit.i103:                ; preds = %mxl1x1sf_demod_get_tps_guard_interval.exit
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 4
  %call.i.i101 = call i32 %92(ptr noundef %94, i8 noundef zeroext 41, ptr noundef nonnull %val.i98) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i101)
  %cmp.i102 = icmp slt i32 %call.i.i101, 0
  br i1 %cmp.i102, label %mxl111sf_demod_read_reg.exit.i103.do.end.i106_crit_edge, label %if.end5.critedge.i107

mxl111sf_demod_read_reg.exit.i103.do.end.i106_crit_edge: ; preds = %mxl111sf_demod_read_reg.exit.i103
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i106

do.end.i106:                                      ; preds = %mxl111sf_demod_read_reg.exit.i103.do.end.i106_crit_edge, %mxl1x1sf_demod_get_tps_guard_interval.exit.do.end.i106_crit_edge
  %cond.i3.i104 = phi i32 [ %call.i.i101, %mxl111sf_demod_read_reg.exit.i103.do.end.i106_crit_edge ], [ -22, %mxl1x1sf_demod_get_tps_guard_interval.exit.do.end.i106_crit_edge ]
  %call1.i105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.20, i32 noundef %cond.i3.i104, i32 noundef 176) #9
  br label %mxl1x1sf_demod_get_tps_hierarchy.exit

if.end5.critedge.i107:                            ; preds = %mxl111sf_demod_read_reg.exit.i103
  %95 = ptrtoint ptr %val.i98 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %val.i98, align 1
  %97 = and i8 %96, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %trunc.not.i = icmp eq i8 %97, 0
  br i1 %trunc.not.i, label %sw.bb.i108, label %sw.bb7.i109

sw.bb.i108:                                       ; preds = %if.end5.critedge.i107
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %hierarchy to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %hierarchy, align 4
  br label %mxl1x1sf_demod_get_tps_hierarchy.exit

sw.bb7.i109:                                      ; preds = %if.end5.critedge.i107
  call void @__sanitizer_cov_trace_pc() #8
  %99 = ptrtoint ptr %hierarchy to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %hierarchy, align 4
  br label %mxl1x1sf_demod_get_tps_hierarchy.exit

mxl1x1sf_demod_get_tps_hierarchy.exit:            ; preds = %sw.bb7.i109, %sw.bb.i108, %do.end.i106
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i98) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_demod_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %val.i121 = alloca i8, align 1
  %val.i110 = alloca i8, align 1
  %val.i99 = alloca i8, align 1
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %status, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #6
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %val.i, align 1
  %cfg.i.i = getelementptr inbounds %struct.mxl111sf_demod_state, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %entry.do.end_crit_edge, label %mxl111sf_demod_read_reg.exit.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

mxl111sf_demod_read_reg.exit.i:                   ; preds = %entry
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call.i.i = call i32 %7(ptr noundef %9, i8 noundef zeroext 40, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %mxl111sf_demod_read_reg.exit.i.do.end_crit_edge, label %if.end5.critedge

mxl111sf_demod_read_reg.exit.i.do.end_crit_edge:  ; preds = %mxl111sf_demod_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %mxl111sf_demod_read_reg.exit.i.do.end_crit_edge, %entry.do.end_crit_edge
  %cond.i12.i = phi i32 [ %call.i.i, %mxl111sf_demod_read_reg.exit.i.do.end_crit_edge ], [ -22, %entry.do.end_crit_edge ]
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.28, i32 noundef %cond.i12.i, i32 noundef 219) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.21, i32 noundef %cond.i12.i, i32 noundef 439) #9
  br label %fail

if.end5.critedge:                                 ; preds = %mxl111sf_demod_read_reg.exit.i
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i99) #6
  %12 = ptrtoint ptr %val.i99 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %val.i99, align 1
  %13 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfg.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %tobool.not.i.i101 = icmp eq ptr %16, null
  br i1 %tobool.not.i.i101, label %if.end5.critedge.do.end14_crit_edge, label %mxl111sf_demod_read_reg.exit.i104

if.end5.critedge.do.end14_crit_edge:              ; preds = %if.end5.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

mxl111sf_demod_read_reg.exit.i104:                ; preds = %if.end5.critedge
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call.i.i102 = call i32 %16(ptr noundef %18, i8 noundef zeroext 42, ptr noundef nonnull %val.i99) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i102)
  %cmp.i103 = icmp slt i32 %call.i.i102, 0
  br i1 %cmp.i103, label %mxl111sf_demod_read_reg.exit.i104.do.end14_crit_edge, label %if.end21.critedge

mxl111sf_demod_read_reg.exit.i104.do.end14_crit_edge: ; preds = %mxl111sf_demod_read_reg.exit.i104
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.end14:                                         ; preds = %mxl111sf_demod_read_reg.exit.i104.do.end14_crit_edge, %if.end5.critedge.do.end14_crit_edge
  %cond.i12.i105 = phi i32 [ %call.i.i102, %mxl111sf_demod_read_reg.exit.i104.do.end14_crit_edge ], [ -22, %if.end5.critedge.do.end14_crit_edge ]
  %call1.i106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.29, i32 noundef %cond.i12.i105, i32 noundef 232) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i99) #6
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.21, i32 noundef %cond.i12.i105, i32 noundef 442) #9
  br label %fail

if.end21.critedge:                                ; preds = %mxl111sf_demod_read_reg.exit.i104
  %19 = ptrtoint ptr %val.i99 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %val.i99, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i99) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i110) #6
  %21 = ptrtoint ptr %val.i110 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %val.i110, align 1
  %22 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cfg.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %tobool.not.i.i112 = icmp eq ptr %25, null
  br i1 %tobool.not.i.i112, label %if.end21.critedge.do.end30_crit_edge, label %mxl111sf_demod_read_reg.exit.i115

if.end21.critedge.do.end30_crit_edge:             ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30

mxl111sf_demod_read_reg.exit.i115:                ; preds = %if.end21.critedge
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %call.i.i113 = call i32 %25(ptr noundef %27, i8 noundef zeroext 40, ptr noundef nonnull %val.i110) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i113)
  %cmp.i114 = icmp slt i32 %call.i.i113, 0
  br i1 %cmp.i114, label %mxl111sf_demod_read_reg.exit.i115.do.end30_crit_edge, label %if.end37.critedge

mxl111sf_demod_read_reg.exit.i115.do.end30_crit_edge: ; preds = %mxl111sf_demod_read_reg.exit.i115
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30

do.end30:                                         ; preds = %mxl111sf_demod_read_reg.exit.i115.do.end30_crit_edge, %if.end21.critedge.do.end30_crit_edge
  %cond.i12.i116 = phi i32 [ %call.i.i113, %mxl111sf_demod_read_reg.exit.i115.do.end30_crit_edge ], [ -22, %if.end21.critedge.do.end30_crit_edge ]
  %call1.i117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.30, i32 noundef %cond.i12.i116, i32 noundef 206) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i110) #6
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.21, i32 noundef %cond.i12.i116, i32 noundef 445) #9
  br label %fail

if.end37.critedge:                                ; preds = %mxl111sf_demod_read_reg.exit.i115
  %28 = ptrtoint ptr %val.i110 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %val.i110, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i110) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i121) #6
  %30 = ptrtoint ptr %val.i121 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %val.i121, align 1
  %31 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfg.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %tobool.not.i.i123 = icmp eq ptr %34, null
  br i1 %tobool.not.i.i123, label %if.end37.critedge.do.end46_crit_edge, label %mxl111sf_demod_read_reg.exit.i126

if.end37.critedge.do.end46_crit_edge:             ; preds = %if.end37.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end46

mxl111sf_demod_read_reg.exit.i126:                ; preds = %if.end37.critedge
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %call.i.i124 = call i32 %34(ptr noundef %36, i8 noundef zeroext 36, ptr noundef nonnull %val.i121) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i124)
  %cmp.i125 = icmp slt i32 %call.i.i124, 0
  br i1 %cmp.i125, label %mxl111sf_demod_read_reg.exit.i126.do.end46_crit_edge, label %if.end53.critedge

mxl111sf_demod_read_reg.exit.i126.do.end46_crit_edge: ; preds = %mxl111sf_demod_read_reg.exit.i126
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end46

do.end46:                                         ; preds = %mxl111sf_demod_read_reg.exit.i126.do.end46_crit_edge, %if.end37.critedge.do.end46_crit_edge
  %cond.i12.i127 = phi i32 [ %call.i.i124, %mxl111sf_demod_read_reg.exit.i126.do.end46_crit_edge ], [ -22, %if.end37.critedge.do.end46_crit_edge ]
  %call1.i128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.31, i32 noundef %cond.i12.i127, i32 noundef 245) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i121) #6
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.21, i32 noundef %cond.i12.i127, i32 noundef 448) #9
  br label %fail

if.end53.critedge:                                ; preds = %mxl111sf_demod_read_reg.exit.i126
  %37 = ptrtoint ptr %val.i121 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %val.i121, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i121) #6
  %39 = and i8 %11, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool54.not = icmp eq i8 %39, 0
  br i1 %tobool54.not, label %if.end53.critedge.if.end56_crit_edge, label %if.then55

if.end53.critedge.if.end56_crit_edge:             ; preds = %if.end53.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then55:                                        ; preds = %if.end53.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %status, align 4
  %or = or i32 %41, 1
  store i32 %or, ptr %status, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end53.critedge.if.end56_crit_edge
  %42 = and i8 %20, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool57.not = icmp eq i8 %42, 0
  br i1 %tobool57.not, label %if.end56.if.end60_crit_edge, label %if.then58

if.end56.if.end60_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then58:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %status, align 4
  %or59 = or i32 %44, 2
  store i32 %or59, ptr %status, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end56.if.end60_crit_edge
  %45 = and i8 %29, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool61.not = icmp eq i8 %45, 0
  br i1 %tobool61.not, label %if.end60.if.end64_crit_edge, label %if.then62

if.end60.if.end64_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %status, align 4
  %or63 = or i32 %47, 8
  store i32 %or63, ptr %status, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end60.if.end64_crit_edge
  %48 = and i8 %38, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool65.not = icmp eq i8 %48, 0
  br i1 %tobool65.not, label %if.end64.if.end68_crit_edge, label %if.then66

if.end64.if.end68_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.then66:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %status, align 4
  %or67 = or i32 %50, 4
  store i32 %or67, ptr %status, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.end64.if.end68_crit_edge
  %brmerge = select i1 %tobool54.not, i1 true, i1 %tobool57.not
  %brmerge151 = select i1 %brmerge, i1 true, i1 %tobool61.not
  br i1 %brmerge151, label %if.end68.fail_crit_edge, label %if.then73

if.end68.fail_crit_edge:                          ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.then73:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %status, align 4
  %or74 = or i32 %52, 16
  store i32 %or74, ptr %status, align 4
  br label %fail

fail:                                             ; preds = %if.then73, %if.end68.fail_crit_edge, %do.end46, %do.end30, %do.end14, %do.end
  %ret.0 = phi i32 [ %call.i.i124, %if.then73 ], [ %call.i.i124, %if.end68.fail_crit_edge ], [ %cond.i12.i, %do.end ], [ %cond.i12.i105, %do.end14 ], [ %cond.i12.i116, %do.end30 ], [ %cond.i12.i127, %do.end46 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_demod_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  %val1 = alloca i8, align 1
  %val2 = alloca i8, align 1
  %val3 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val1) #6
  %2 = ptrtoint ptr %val1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val1, align 1, !annotation !139
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val2) #6
  %3 = ptrtoint ptr %val2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %val2, align 1, !annotation !139
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val3) #6
  %4 = ptrtoint ptr %val3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %val3, align 1, !annotation !139
  %5 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ber, align 4
  %cfg.i = getelementptr inbounds %struct.mxl111sf_demod_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %mxl111sf_demod_read_reg.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

mxl111sf_demod_read_reg.exit:                     ; preds = %entry
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call.i = call i32 %9(ptr noundef %11, i8 noundef zeroext 44, ptr noundef nonnull %val1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %mxl111sf_demod_read_reg.exit.do.end_crit_edge, label %if.end5.critedge

mxl111sf_demod_read_reg.exit.do.end_crit_edge:    ; preds = %mxl111sf_demod_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %mxl111sf_demod_read_reg.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %cond.i66 = phi i32 [ %call.i, %mxl111sf_demod_read_reg.exit.do.end_crit_edge ], [ -22, %entry.do.end_crit_edge ]
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.32, i32 noundef %cond.i66, i32 noundef 383) #9
  br label %fail

if.end5.critedge:                                 ; preds = %mxl111sf_demod_read_reg.exit
  %12 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool.not.i53 = icmp eq ptr %15, null
  br i1 %tobool.not.i53, label %if.end5.critedge.do.end14_crit_edge, label %mxl111sf_demod_read_reg.exit57

if.end5.critedge.do.end14_crit_edge:              ; preds = %if.end5.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

mxl111sf_demod_read_reg.exit57:                   ; preds = %if.end5.critedge
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call.i54 = call i32 %15(ptr noundef %17, i8 noundef zeroext 45, ptr noundef nonnull %val2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %cmp8 = icmp slt i32 %call.i54, 0
  br i1 %cmp8, label %mxl111sf_demod_read_reg.exit57.do.end14_crit_edge, label %if.end21.critedge

mxl111sf_demod_read_reg.exit57.do.end14_crit_edge: ; preds = %mxl111sf_demod_read_reg.exit57
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.end14:                                         ; preds = %mxl111sf_demod_read_reg.exit57.do.end14_crit_edge, %if.end5.critedge.do.end14_crit_edge
  %cond.i5669 = phi i32 [ %call.i54, %mxl111sf_demod_read_reg.exit57.do.end14_crit_edge ], [ -22, %if.end5.critedge.do.end14_crit_edge ]
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.32, i32 noundef %cond.i5669, i32 noundef 386) #9
  br label %fail

if.end21.critedge:                                ; preds = %mxl111sf_demod_read_reg.exit57
  %18 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfg.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %tobool.not.i59 = icmp eq ptr %21, null
  br i1 %tobool.not.i59, label %if.end21.critedge.do.end30_crit_edge, label %mxl111sf_demod_read_reg.exit63

if.end21.critedge.do.end30_crit_edge:             ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30

mxl111sf_demod_read_reg.exit63:                   ; preds = %if.end21.critedge
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call.i60 = call i32 %21(ptr noundef %23, i8 noundef zeroext 17, ptr noundef nonnull %val3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp24 = icmp slt i32 %call.i60, 0
  br i1 %cmp24, label %mxl111sf_demod_read_reg.exit63.do.end30_crit_edge, label %if.end37.critedge

mxl111sf_demod_read_reg.exit63.do.end30_crit_edge: ; preds = %mxl111sf_demod_read_reg.exit63
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30

do.end30:                                         ; preds = %mxl111sf_demod_read_reg.exit63.do.end30_crit_edge, %if.end21.critedge.do.end30_crit_edge
  %cond.i6272 = phi i32 [ %call.i60, %mxl111sf_demod_read_reg.exit63.do.end30_crit_edge ], [ -22, %if.end21.critedge.do.end30_crit_edge ]
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.32, i32 noundef %cond.i6272, i32 noundef 389) #9
  br label %fail

if.end37.critedge:                                ; preds = %mxl111sf_demod_read_reg.exit63
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %ber, align 4
  br label %fail

fail:                                             ; preds = %if.end37.critedge, %do.end30, %do.end14, %do.end
  %ret.0 = phi i32 [ %call.i60, %if.end37.critedge ], [ %cond.i66, %do.end ], [ %cond.i5669, %do.end14 ], [ %cond.i6272, %do.end30 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val3) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val2) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val1) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_demod_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %signal_strength) #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  %val1.i = alloca i8, align 1
  %val2.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val1.i) #6
  %2 = ptrtoint ptr %val1.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val1.i, align 1, !annotation !139
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val2.i) #6
  %3 = ptrtoint ptr %val2.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %val2.i, align 1, !annotation !139
  %cfg.i.i = getelementptr inbounds %struct.mxl111sf_demod_state, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %entry.do.end.i_crit_edge, label %mxl111sf_demod_read_reg.exit.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

mxl111sf_demod_read_reg.exit.i:                   ; preds = %entry
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call.i.i = call i32 %7(ptr noundef %9, i8 noundef zeroext 39, ptr noundef nonnull %val1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %mxl111sf_demod_read_reg.exit.i.do.end.i_crit_edge, label %if.end5.critedge.i

mxl111sf_demod_read_reg.exit.i.do.end.i_crit_edge: ; preds = %mxl111sf_demod_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %mxl111sf_demod_read_reg.exit.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %cond.i39.i = phi i32 [ %call.i.i, %mxl111sf_demod_read_reg.exit.i.do.end.i_crit_edge ], [ -22, %entry.do.end.i_crit_edge ]
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.37, i32 noundef %cond.i39.i, i32 noundef 406) #9
  br label %mxl111sf_demod_calc_snr.exit.thread

if.end5.critedge.i:                               ; preds = %mxl111sf_demod_read_reg.exit.i
  %10 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool.not.i32.i = icmp eq ptr %13, null
  br i1 %tobool.not.i32.i, label %if.end5.critedge.i.do.end14.i_crit_edge, label %mxl111sf_demod_read_reg.exit36.i

if.end5.critedge.i.do.end14.i_crit_edge:          ; preds = %if.end5.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14.i

mxl111sf_demod_read_reg.exit36.i:                 ; preds = %if.end5.critedge.i
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call.i33.i = call i32 %13(ptr noundef %15, i8 noundef zeroext 40, ptr noundef nonnull %val2.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.i)
  %cmp8.i = icmp slt i32 %call.i33.i, 0
  br i1 %cmp8.i, label %mxl111sf_demod_read_reg.exit36.i.do.end14.i_crit_edge, label %if.end

mxl111sf_demod_read_reg.exit36.i.do.end14.i_crit_edge: ; preds = %mxl111sf_demod_read_reg.exit36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14.i

do.end14.i:                                       ; preds = %mxl111sf_demod_read_reg.exit36.i.do.end14.i_crit_edge, %if.end5.critedge.i.do.end14.i_crit_edge
  %cond.i3542.i = phi i32 [ %call.i33.i, %mxl111sf_demod_read_reg.exit36.i.do.end14.i_crit_edge ], [ -22, %if.end5.critedge.i.do.end14.i_crit_edge ]
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.37, i32 noundef %cond.i3542.i, i32 noundef 409) #9
  br label %mxl111sf_demod_calc_snr.exit.thread

mxl111sf_demod_calc_snr.exit.thread:              ; preds = %do.end14.i, %do.end.i
  %ret.0.i.ph = phi i32 [ %cond.i3542.i, %do.end14.i ], [ %cond.i39.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val2.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val1.i) #6
  br label %cleanup

if.end:                                           ; preds = %mxl111sf_demod_read_reg.exit36.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val2.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val1.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #6
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %val.i, align 1, !annotation !139
  %17 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %tobool.not.i.i74 = icmp eq ptr %20, null
  br i1 %tobool.not.i.i74, label %if.end.mxl1x1sf_demod_get_tps_modulation.exit_crit_edge, label %mxl111sf_demod_read_reg.exit.i77

if.end.mxl1x1sf_demod_get_tps_modulation.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxl1x1sf_demod_get_tps_modulation.exit

mxl111sf_demod_read_reg.exit.i77:                 ; preds = %if.end
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i.i75 = call i32 %20(ptr noundef %22, i8 noundef zeroext 42, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i75)
  %cmp.i76 = icmp slt i32 %call.i.i75, 0
  br i1 %cmp.i76, label %mxl111sf_demod_read_reg.exit.i77.mxl1x1sf_demod_get_tps_modulation.exit_crit_edge, label %if.end5.critedge.i80

mxl111sf_demod_read_reg.exit.i77.mxl1x1sf_demod_get_tps_modulation.exit_crit_edge: ; preds = %mxl111sf_demod_read_reg.exit.i77
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxl1x1sf_demod_get_tps_modulation.exit

if.end5.critedge.i80:                             ; preds = %mxl111sf_demod_read_reg.exit.i77
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %val.i, align 1
  %25 = lshr i8 %24, 4
  %26 = and i8 %25, 3
  %27 = zext i8 %26 to i32
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %27, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb17
    i32 2, label %sw.bb37
  ]

mxl1x1sf_demod_get_tps_modulation.exit:           ; preds = %mxl111sf_demod_read_reg.exit.i77.mxl1x1sf_demod_get_tps_modulation.exit_crit_edge, %if.end.mxl1x1sf_demod_get_tps_modulation.exit_crit_edge
  %cond.i16.i = phi i32 [ %call.i.i75, %mxl111sf_demod_read_reg.exit.i77.mxl1x1sf_demod_get_tps_modulation.exit_crit_edge ], [ -22, %if.end.mxl1x1sf_demod_get_tps_modulation.exit_crit_edge ]
  %call1.i78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.17, i32 noundef %cond.i16.i, i32 noundef 98) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end5.critedge.i80
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  %29 = ptrtoint ptr %signal_strength to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %signal_strength, align 2
  br label %cleanup

sw.bb17:                                          ; preds = %if.end5.critedge.i80
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  %30 = ptrtoint ptr %signal_strength to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %signal_strength, align 2
  br label %cleanup

sw.bb37:                                          ; preds = %if.end5.critedge.i80
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  %31 = ptrtoint ptr %signal_strength to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %signal_strength, align 2
  br label %cleanup

sw.default:                                       ; preds = %if.end5.critedge.i80
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  %32 = ptrtoint ptr %signal_strength to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %signal_strength, align 2
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb37, %sw.bb17, %sw.bb, %mxl1x1sf_demod_get_tps_modulation.exit, %mxl111sf_demod_calc_snr.exit.thread
  %retval.0 = phi i32 [ -22, %sw.default ], [ %cond.i16.i, %mxl1x1sf_demod_get_tps_modulation.exit ], [ 0, %sw.bb37 ], [ 0, %sw.bb17 ], [ 0, %sw.bb ], [ %ret.0.i.ph, %mxl111sf_demod_calc_snr.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_demod_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef %snr) #0 align 64 {
entry:
  %val1.i = alloca i8, align 1
  %val2.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val1.i) #6
  %2 = ptrtoint ptr %val1.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val1.i, align 1, !annotation !139
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val2.i) #6
  %3 = ptrtoint ptr %val2.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %val2.i, align 1, !annotation !139
  %4 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %snr, align 2
  %cfg.i.i = getelementptr inbounds %struct.mxl111sf_demod_state, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cfg.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %entry.do.end.i_crit_edge, label %mxl111sf_demod_read_reg.exit.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

mxl111sf_demod_read_reg.exit.i:                   ; preds = %entry
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call.i.i = call i32 %8(ptr noundef %10, i8 noundef zeroext 39, ptr noundef nonnull %val1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %mxl111sf_demod_read_reg.exit.i.do.end.i_crit_edge, label %if.end5.critedge.i

mxl111sf_demod_read_reg.exit.i.do.end.i_crit_edge: ; preds = %mxl111sf_demod_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %mxl111sf_demod_read_reg.exit.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %cond.i39.i = phi i32 [ %call.i.i, %mxl111sf_demod_read_reg.exit.i.do.end.i_crit_edge ], [ -22, %entry.do.end.i_crit_edge ]
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.37, i32 noundef %cond.i39.i, i32 noundef 406) #9
  br label %do.end

if.end5.critedge.i:                               ; preds = %mxl111sf_demod_read_reg.exit.i
  %11 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfg.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tobool.not.i32.i = icmp eq ptr %14, null
  br i1 %tobool.not.i32.i, label %if.end5.critedge.i.do.end14.i_crit_edge, label %mxl111sf_demod_read_reg.exit36.i

if.end5.critedge.i.do.end14.i_crit_edge:          ; preds = %if.end5.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14.i

mxl111sf_demod_read_reg.exit36.i:                 ; preds = %if.end5.critedge.i
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call.i33.i = call i32 %14(ptr noundef %16, i8 noundef zeroext 40, ptr noundef nonnull %val2.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.i)
  %cmp8.i = icmp slt i32 %call.i33.i, 0
  br i1 %cmp8.i, label %mxl111sf_demod_read_reg.exit36.i.do.end14.i_crit_edge, label %if.end5.critedge

mxl111sf_demod_read_reg.exit36.i.do.end14.i_crit_edge: ; preds = %mxl111sf_demod_read_reg.exit36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14.i

do.end14.i:                                       ; preds = %mxl111sf_demod_read_reg.exit36.i.do.end14.i_crit_edge, %if.end5.critedge.i.do.end14.i_crit_edge
  %cond.i3542.i = phi i32 [ %call.i33.i, %mxl111sf_demod_read_reg.exit36.i.do.end14.i_crit_edge ], [ -22, %if.end5.critedge.i.do.end14.i_crit_edge ]
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.37, i32 noundef %cond.i3542.i, i32 noundef 409) #9
  br label %do.end

do.end:                                           ; preds = %do.end14.i, %do.end.i
  %ret.0.i.ph = phi i32 [ %cond.i3542.i, %do.end14.i ], [ %cond.i39.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val2.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val1.i) #6
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.40, i32 noundef %ret.0.i.ph, i32 noundef 422) #9
  br label %fail

if.end5.critedge:                                 ; preds = %mxl111sf_demod_read_reg.exit36.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val2.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val1.i) #6
  %17 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %snr, align 2
  br label %fail

fail:                                             ; preds = %if.end5.critedge, %do.end
  %ret.0.i15 = phi i32 [ %ret.0.i.ph, %do.end ], [ %call.i33.i, %if.end5.critedge ]
  ret i32 %ret.0.i15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_demod_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !139
  %3 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %ucblocks, align 4
  %cfg.i = getelementptr inbounds %struct.mxl111sf_demod_state, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %mxl111sf_demod_read_reg.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

mxl111sf_demod_read_reg.exit:                     ; preds = %entry
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call.i = call i32 %7(ptr noundef %9, i8 noundef zeroext 46, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %mxl111sf_demod_read_reg.exit.do.end_crit_edge, label %if.end5.critedge

mxl111sf_demod_read_reg.exit.do.end_crit_edge:    ; preds = %mxl111sf_demod_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %mxl111sf_demod_read_reg.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %cond.i47 = phi i32 [ %call.i, %mxl111sf_demod_read_reg.exit.do.end_crit_edge ], [ -22, %entry.do.end_crit_edge ]
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.41, i32 noundef %cond.i47, i32 noundef 337) #9
  br label %fail

if.end5.critedge:                                 ; preds = %mxl111sf_demod_read_reg.exit
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %val, align 1
  %conv6 = zext i8 %11 to i32
  %12 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool.not.i40 = icmp eq ptr %15, null
  br i1 %tobool.not.i40, label %if.end5.critedge.do.end15_crit_edge, label %mxl111sf_demod_read_reg.exit44

if.end5.critedge.do.end15_crit_edge:              ; preds = %if.end5.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

mxl111sf_demod_read_reg.exit44:                   ; preds = %if.end5.critedge
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call.i41 = call i32 %15(ptr noundef %17, i8 noundef zeroext 43, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %cmp9 = icmp slt i32 %call.i41, 0
  br i1 %cmp9, label %mxl111sf_demod_read_reg.exit44.do.end15_crit_edge, label %if.end22.critedge

mxl111sf_demod_read_reg.exit44.do.end15_crit_edge: ; preds = %mxl111sf_demod_read_reg.exit44
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

do.end15:                                         ; preds = %mxl111sf_demod_read_reg.exit44.do.end15_crit_edge, %if.end5.critedge.do.end15_crit_edge
  %cond.i4350 = phi i32 [ %call.i41, %mxl111sf_demod_read_reg.exit44.do.end15_crit_edge ], [ -22, %if.end5.critedge.do.end15_crit_edge ]
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.41, i32 noundef %cond.i4350, i32 noundef 344) #9
  br label %fail

if.end22.critedge:                                ; preds = %mxl111sf_demod_read_reg.exit44
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %val, align 1
  %20 = shl i8 %19, 2
  %21 = and i8 %20, 12
  %conv27 = zext i8 %21 to i32
  %mul28 = shl nuw nsw i32 %conv6, %conv27
  %22 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul28, ptr %ucblocks, align 4
  br label %fail

fail:                                             ; preds = %if.end22.critedge, %do.end15, %do.end
  %ret.0 = phi i32 [ %call.i41, %if.end22.critedge ], [ %cond.i47, %do.end ], [ %cond.i4350, %do.end15 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !15, !17, !19, !20, !22, !23, !24, !25, !26, !28, !29, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !111, !112, !114, !115, !116, !118, !119, !121, !122, !123, !125, !126, !127, !129}
!llvm.module.flags = !{!130, !131, !132, !133, !134, !135, !136, !137}
!llvm.ident = !{!138}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 13, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype386, !1, !"__UNIQUE_ID_debugtype386", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug387, !4, !"__UNIQUE_ID_debug387", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 14, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 578, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mxl111sf_demod_attach._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @mxl111sf_demod_attach._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @__ksymtab_mxl111sf_demod_attach, !12, !"__ksymtab_mxl111sf_demod_attach", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 593, i32 1}
!13 = !{ptr @__UNIQUE_ID_description394, !14, !"__UNIQUE_ID_description394", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 595, i32 1}
!15 = !{ptr @__UNIQUE_ID_author395, !16, !"__UNIQUE_ID_author395", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 596, i32 1}
!17 = !{ptr @__UNIQUE_ID_file396, !18, !"__UNIQUE_ID_file396", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 597, i32 1}
!19 = !{ptr @__UNIQUE_ID_license397, !18, !"__UNIQUE_ID_license397", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_version398, !21, !"__UNIQUE_ID_version398", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 598, i32 1}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @__modver_attr, !21, !"__modver_attr", i1 false, i1 false}
!26 = !{ptr @mxl111sf_demod_debug, !27, !"mxl111sf_demod_debug", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 12, i32 12}
!28 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!29 = !{ptr @mxl111sf_demod_ops, !30, !"mxl111sf_demod_ops", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 544, i32 38}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 539, i32 2}
!33 = !{ptr @mxl111sf_demod_release._entry, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @mxl111sf_demod_release._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 289, i32 2}
!37 = !{ptr @mxl111sf_demod_set_frontend._entry, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @mxl111sf_demod_set_frontend._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 293, i32 7}
!41 = !{ptr @mxl111sf_demod_set_frontend._entry.8, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @mxl111sf_demod_set_frontend._entry_ptr.10, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @mxl111sf_demod_set_frontend._entry.11, !44, !"_entry", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 298, i32 2}
!45 = !{ptr @mxl111sf_demod_set_frontend._entry_ptr.12, !44, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @mxl111sf_demod_set_frontend._entry.13, !47, !"_entry", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 301, i32 2}
!48 = !{ptr @mxl111sf_demod_set_frontend._entry_ptr.14, !47, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 507, i32 2}
!51 = !{ptr @mxl111sf_demod_get_frontend._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @mxl111sf_demod_get_frontend._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 67, i32 6}
!55 = !{ptr @mxl1x1sf_demod_get_tps_code_rate._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @mxl1x1sf_demod_get_tps_code_rate._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 98, i32 6}
!59 = !{ptr @mxl1x1sf_demod_get_tps_modulation._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @mxl1x1sf_demod_get_tps_modulation._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 123, i32 6}
!63 = !{ptr @mxl1x1sf_demod_get_tps_guard_fft_mode._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @mxl1x1sf_demod_get_tps_guard_fft_mode._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 148, i32 6}
!67 = !{ptr @mxl1x1sf_demod_get_tps_guard_interval._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @mxl1x1sf_demod_get_tps_guard_interval._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.20, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 176, i32 6}
!71 = !{ptr @mxl1x1sf_demod_get_tps_hierarchy._entry, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @mxl1x1sf_demod_get_tps_hierarchy._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.21, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 439, i32 6}
!75 = !{ptr @mxl111sf_demod_read_status._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @mxl111sf_demod_read_status._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @mxl111sf_demod_read_status._entry.22, !78, !"_entry", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 442, i32 6}
!79 = !{ptr @mxl111sf_demod_read_status._entry_ptr.23, !78, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @mxl111sf_demod_read_status._entry.24, !81, !"_entry", i1 false, i1 false}
!81 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 445, i32 6}
!82 = !{ptr @mxl111sf_demod_read_status._entry_ptr.25, !81, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @mxl111sf_demod_read_status._entry.26, !84, !"_entry", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 448, i32 6}
!85 = !{ptr @mxl111sf_demod_read_status._entry_ptr.27, !84, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.28, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 219, i32 6}
!88 = !{ptr @mxl1x1sf_demod_get_rs_lock_status._entry, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @mxl1x1sf_demod_get_rs_lock_status._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.29, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 232, i32 6}
!92 = !{ptr @mxl1x1sf_demod_get_tps_lock_status._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @mxl1x1sf_demod_get_tps_lock_status._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 206, i32 6}
!96 = !{ptr @mxl1x1sf_demod_get_sync_lock_status._entry, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @mxl1x1sf_demod_get_sync_lock_status._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.31, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 245, i32 6}
!100 = !{ptr @mxl1x1sf_demod_get_fec_lock_status._entry, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @mxl1x1sf_demod_get_fec_lock_status._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.32, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 383, i32 6}
!104 = !{ptr @mxl111sf_demod_read_ber._entry, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @mxl111sf_demod_read_ber._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @mxl111sf_demod_read_ber._entry.33, !107, !"_entry", i1 false, i1 false}
!107 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 386, i32 6}
!108 = !{ptr @mxl111sf_demod_read_ber._entry_ptr.34, !107, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @mxl111sf_demod_read_ber._entry.35, !110, !"_entry", i1 false, i1 false}
!110 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 389, i32 6}
!111 = !{ptr @mxl111sf_demod_read_ber._entry_ptr.36, !110, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.37, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 406, i32 6}
!114 = !{ptr @mxl111sf_demod_calc_snr._entry, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @mxl111sf_demod_calc_snr._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @mxl111sf_demod_calc_snr._entry.38, !117, !"_entry", i1 false, i1 false}
!117 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 409, i32 6}
!118 = !{ptr @mxl111sf_demod_calc_snr._entry_ptr.39, !117, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.40, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 422, i32 6}
!121 = !{ptr @mxl111sf_demod_read_snr._entry, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @mxl111sf_demod_read_snr._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.41, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 337, i32 6}
!125 = !{ptr @mxl111sf_demod_read_ucblocks._entry, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @mxl111sf_demod_read_ucblocks._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @mxl111sf_demod_read_ucblocks._entry.42, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-demod.c", i32 344, i32 6}
!129 = !{ptr @mxl111sf_demod_read_ucblocks._entry_ptr.43, !128, !"_entry_ptr", i1 false, i1 false}
!130 = !{i32 1, !"wchar_size", i32 2}
!131 = !{i32 1, !"min_enum_size", i32 4}
!132 = !{i32 8, !"branch-target-enforcement", i32 0}
!133 = !{i32 8, !"sign-return-address", i32 0}
!134 = !{i32 8, !"sign-return-address-all", i32 0}
!135 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!136 = !{i32 7, !"uwtable", i32 1}
!137 = !{i32 7, !"frame-pointer", i32 2}
!138 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!139 = !{!"auto-init"}
