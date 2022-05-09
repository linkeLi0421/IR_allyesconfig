; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mxl111sf_tuner_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_mxl111sf_tuner_attach\09\09\09\09"
module asm "\09.long\09__crc_mxl111sf_tuner_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mxl111sf_tuner_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22mxl111sf_tuner_attach\22\09\09\09\09\09"
module asm "__kstrtabns_mxl111sf_tuner_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mxl111sf_reg_ctrl_info = type { i8, i8, i8 }
%struct.mxl111sf_tuner_state = type { ptr, ptr, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.124], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.124 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.125 }>
%union.anon.125 = type { i64 }
%struct.mxl111sf_tuner_config = type { i32, i8, ptr, ptr, ptr, ptr, ptr }

@__param_str_debug = internal constant [21 x i8] c"mxl111sf_tuner.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@mxl111sf_tuner_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @mxl111sf_tuner_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype386 = internal constant [34 x i8] c"mxl111sf_tuner.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug387 = internal constant [66 x i8] c"mxl111sf_tuner.parm=debug:set debugging level (1=info (or-able)).\00", section ".modinfo", align 1
@mxl111sf_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\017%s: ()\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mxl111sf_tuner_attach\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c\00", [50 x i8] zeroinitializer }, align 32
@mxl111sf_tuner_attach._entry_ptr = internal global ptr @mxl111sf_tuner_attach._entry, section ".printk_index", align 4
@mxl111sf_tuner_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"MaxLinear MxL111SF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, ptr @mxl111sf_tuner_release, ptr null, ptr null, ptr null, ptr null, ptr @mxl111sf_tuner_set_params, ptr null, ptr null, ptr @mxl111sf_tuner_get_frequency, ptr @mxl111sf_tuner_get_bandwidth, ptr @mxl111sf_tuner_get_if_frequency, ptr @mxl111sf_tuner_get_status, ptr @mxl111sf_get_rf_strength, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_mxl111sf_tuner_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_mxl111sf_tuner_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_mxl111sf_tuner_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mxl111sf_tuner_attach to i32), ptr @__kstrtab_mxl111sf_tuner_attach, ptr @__kstrtabns_mxl111sf_tuner_attach }, section "___ksymtab_gpl+mxl111sf_tuner_attach", align 4
@__UNIQUE_ID_description388 = internal constant [64 x i8] c"mxl111sf_tuner.description=MaxLinear MxL111SF CMOS tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author389 = internal constant [59 x i8] c"mxl111sf_tuner.author=Michael Krufky <mkrufky@linuxtv.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file390 = internal constant [64 x i8] c"mxl111sf_tuner.file=drivers/media/usb/dvb-usb-v2/mxl111sf-tuner\00", section ".modinfo", align 1
@__UNIQUE_ID_license391 = internal constant [27 x i8] c"mxl111sf_tuner.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version392 = internal constant [27 x i8] c"mxl111sf_tuner.version=0.1\00", section ".modinfo", align 1
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mxl111sf_tuner\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.4, ptr @.str.5 }, section "__modver", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mxl111sf_tuner_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxl111sf_tuner_release\00", [41 x i8] zeroinitializer }, align 32
@mxl111sf_tuner_release._entry_ptr = internal global ptr @mxl111sf_tuner_release._entry, section ".printk_index", align 4
@mxl111sf_tuner_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.7, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mxl111sf_tuner_set_params\00", [38 x i8] zeroinitializer }, align 32
@mxl111sf_tuner_set_params._entry_ptr = internal global ptr @mxl111sf_tuner_set_params._entry, section ".printk_index", align 4
@mxl111sf_tuner_set_params._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: bandwidth not set!\00", [39 x i8] zeroinitializer }, align 32
@mxl111sf_tuner_set_params._entry_ptr.10 = internal global ptr @mxl111sf_tuner_set_params._entry.8, section ".printk_index", align 4
@mxl111sf_tuner_set_params._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: modulation type not supported!\00", [59 x i8] zeroinitializer }, align 32
@mxl111sf_tuner_set_params._entry_ptr.13 = internal global ptr @mxl111sf_tuner_set_params._entry.11, section ".printk_index", align 4
@mxl111sf_tuner_set_params._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.2, i32 301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: error %d on line %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mxl111sf_tuner_set_params._entry_ptr.16 = internal global ptr @mxl111sf_tuner_set_params._entry.14, section ".printk_index", align 4
@mxl1x1sf_tune_rf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: (freq = %d, bw = 0x%x)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mxl1x1sf_tune_rf\00", [47 x i8] zeroinitializer }, align 32
@mxl1x1sf_tune_rf._entry_ptr = internal global ptr @mxl1x1sf_tune_rf._entry, section ".printk_index", align 4
@mxl1x1sf_tune_rf._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.18, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl1x1sf_tune_rf._entry_ptr.20 = internal global ptr @mxl1x1sf_tune_rf._entry.19, section ".printk_index", align 4
@mxl1x1sf_tune_rf._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.18, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl1x1sf_tune_rf._entry_ptr.22 = internal global ptr @mxl1x1sf_tune_rf._entry.21, section ".printk_index", align 4
@mxl1x1sf_tune_rf._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.18, ptr @.str.2, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl1x1sf_tune_rf._entry_ptr.24 = internal global ptr @mxl1x1sf_tune_rf._entry.23, section ".printk_index", align 4
@mxl1x1sf_tune_rf._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.18, ptr @.str.2, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl1x1sf_tune_rf._entry_ptr.26 = internal global ptr @mxl1x1sf_tune_rf._entry.25, section ".printk_index", align 4
@mxl111sf_calc_phy_tune_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: invalid bandwidth setting!\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxl111sf_calc_phy_tune_regs\00", [36 x i8] zeroinitializer }, align 32
@mxl111sf_calc_phy_tune_regs._entry_ptr = internal global ptr @mxl111sf_calc_phy_tune_regs._entry, section ".printk_index", align 4
@mxl_phy_tune_rf = internal global { [4 x %struct.mxl111sf_reg_ctrl_info], [20 x i8] } { [4 x %struct.mxl111sf_reg_ctrl_info] [%struct.mxl111sf_reg_ctrl_info { i8 29, i8 127, i8 0 }, %struct.mxl111sf_reg_ctrl_info { i8 30, i8 -1, i8 0 }, %struct.mxl111sf_reg_ctrl_info { i8 31, i8 -1, i8 0 }, %struct.mxl111sf_reg_ctrl_info zeroinitializer], [20 x i8] zeroinitializer }, align 32
@mxl1x1sf_tuner_set_if_output_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: (IF polarity = %d, IF freq = 0x%02x)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mxl1x1sf_tuner_set_if_output_freq\00", [62 x i8] zeroinitializer }, align 32
@mxl1x1sf_tuner_set_if_output_freq._entry_ptr = internal global ptr @mxl1x1sf_tuner_set_if_output_freq._entry, section ".printk_index", align 4
@mxl1x1sf_tuner_set_if_output_freq._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.30, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl1x1sf_tuner_set_if_output_freq._entry_ptr.32 = internal global ptr @mxl1x1sf_tuner_set_if_output_freq._entry.31, section ".printk_index", align 4
@mxl1x1sf_tuner_set_if_output_freq._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.30, ptr @.str.2, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl1x1sf_tuner_set_if_output_freq._entry_ptr.34 = internal global ptr @mxl1x1sf_tuner_set_if_output_freq._entry.33, section ".printk_index", align 4
@mxl1x1sf_tuner_set_if_output_freq._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.30, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl1x1sf_tuner_set_if_output_freq._entry_ptr.36 = internal global ptr @mxl1x1sf_tuner_set_if_output_freq._entry.35, section ".printk_index", align 4
@mxl1x1sf_tuner_set_if_output_freq._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.30, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl1x1sf_tuner_set_if_output_freq._entry_ptr.38 = internal global ptr @mxl1x1sf_tuner_set_if_output_freq._entry.37, section ".printk_index", align 4
@mxl111sf_tuner_get_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.39, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mxl111sf_tuner_get_status\00", [38 x i8] zeroinitializer }, align 32
@mxl111sf_tuner_get_status._entry_ptr = internal global ptr @mxl111sf_tuner_get_status._entry, section ".printk_index", align 4
@mxl111sf_tuner_get_status._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\016%s: %s%s\0A\00", [20 x i8] zeroinitializer }, align 32
@mxl111sf_tuner_get_status._entry_ptr.42 = internal global ptr @mxl111sf_tuner_get_status._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rf locked \00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ref locked\00", [21 x i8] zeroinitializer }, align 32
@mxl1x1sf_tuner_get_lock_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.46, ptr @.str.2, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mxl1x1sf_tuner_get_lock_status\00", [33 x i8] zeroinitializer }, align 32
@mxl1x1sf_tuner_get_lock_status._entry_ptr = internal global ptr @mxl1x1sf_tuner_get_lock_status._entry, section ".printk_index", align 4
@mxl111sf_get_rf_strength._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.47, ptr @.str.2, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mxl111sf_get_rf_strength\00", [39 x i8] zeroinitializer }, align 32
@mxl111sf_get_rf_strength._entry_ptr = internal global ptr @mxl111sf_get_rf_strength._entry, section ".printk_index", align 4
@mxl111sf_get_rf_strength._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.47, ptr @.str.2, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_get_rf_strength._entry_ptr.49 = internal global ptr @mxl111sf_get_rf_strength._entry.48, section ".printk_index", align 4
@mxl111sf_get_rf_strength._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.47, ptr @.str.2, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_get_rf_strength._entry_ptr.51 = internal global ptr @mxl111sf_get_rf_strength._entry.50, section ".printk_index", align 4
@mxl111sf_get_rf_strength._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.47, ptr @.str.2, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_get_rf_strength._entry_ptr.53 = internal global ptr @mxl111sf_get_rf_strength._entry.52, section ".printk_index", align 4
@switch.table.mxl111sf_tuner_get_if_frequency = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 4000000, i32 4500000, i32 4570000, i32 5000000, i32 5380000, i32 6000000, i32 6280000, i32 7200000, i32 35250000, i32 36000000, i32 36150000, i32 44000000], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 11, i64 12]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@__sancov_gen_cov_switch_values.55 = internal global [7 x i64] [i64 5, i64 4, i64 0, i64 1, i64 6, i64 7, i64 8]
@___asan_gen_.56 = private unnamed_addr constant [21 x i8] c"mxl111sf_tuner_debug\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 13, i32 12 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 483, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [25 x i8] c"mxl111sf_tuner_tuner_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 455, i32 35 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 503, i32 1 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 448, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 270, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 292, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 297, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 301, i32 6 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 193, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 197, i32 6 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 202, i32 6 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 211, i32 6 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 222, i32 6 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 101, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [16 x i8] c"mxl_phy_tune_rf\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 68, i32 38 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 132, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 141, i32 6 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 164, i32 6 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 171, i32 6 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 178, i32 6 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 344, i32 6 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 346, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 242, i32 6 }
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 364, i32 6 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 367, i32 6 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 370, i32 6 }
@___asan_gen_.206 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.207 = private constant [49 x i8] c"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 376, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant [45 x i8] c"switch.table.mxl111sf_tuner_get_if_frequency\00", align 1
@llvm.compiler.used = appending global [86 x ptr] [ptr @__UNIQUE_ID_author389, ptr @__UNIQUE_ID_debug387, ptr @__UNIQUE_ID_debugtype386, ptr @__UNIQUE_ID_description388, ptr @__UNIQUE_ID_file390, ptr @__UNIQUE_ID_license391, ptr @__UNIQUE_ID_version392, ptr @__ksymtab_mxl111sf_tuner_attach, ptr @__modver_attr, ptr @__param_debug, ptr @mxl111sf_calc_phy_tune_regs._entry, ptr @mxl111sf_calc_phy_tune_regs._entry_ptr, ptr @mxl111sf_get_rf_strength._entry, ptr @mxl111sf_get_rf_strength._entry.48, ptr @mxl111sf_get_rf_strength._entry.50, ptr @mxl111sf_get_rf_strength._entry.52, ptr @mxl111sf_get_rf_strength._entry_ptr, ptr @mxl111sf_get_rf_strength._entry_ptr.49, ptr @mxl111sf_get_rf_strength._entry_ptr.51, ptr @mxl111sf_get_rf_strength._entry_ptr.53, ptr @mxl111sf_tuner_attach._entry, ptr @mxl111sf_tuner_attach._entry_ptr, ptr @mxl111sf_tuner_get_status._entry, ptr @mxl111sf_tuner_get_status._entry.40, ptr @mxl111sf_tuner_get_status._entry_ptr, ptr @mxl111sf_tuner_get_status._entry_ptr.42, ptr @mxl111sf_tuner_release._entry, ptr @mxl111sf_tuner_release._entry_ptr, ptr @mxl111sf_tuner_set_params._entry, ptr @mxl111sf_tuner_set_params._entry.11, ptr @mxl111sf_tuner_set_params._entry.14, ptr @mxl111sf_tuner_set_params._entry.8, ptr @mxl111sf_tuner_set_params._entry_ptr, ptr @mxl111sf_tuner_set_params._entry_ptr.10, ptr @mxl111sf_tuner_set_params._entry_ptr.13, ptr @mxl111sf_tuner_set_params._entry_ptr.16, ptr @mxl1x1sf_tune_rf._entry, ptr @mxl1x1sf_tune_rf._entry.19, ptr @mxl1x1sf_tune_rf._entry.21, ptr @mxl1x1sf_tune_rf._entry.23, ptr @mxl1x1sf_tune_rf._entry.25, ptr @mxl1x1sf_tune_rf._entry_ptr, ptr @mxl1x1sf_tune_rf._entry_ptr.20, ptr @mxl1x1sf_tune_rf._entry_ptr.22, ptr @mxl1x1sf_tune_rf._entry_ptr.24, ptr @mxl1x1sf_tune_rf._entry_ptr.26, ptr @mxl1x1sf_tuner_get_lock_status._entry, ptr @mxl1x1sf_tuner_get_lock_status._entry_ptr, ptr @mxl1x1sf_tuner_set_if_output_freq._entry, ptr @mxl1x1sf_tuner_set_if_output_freq._entry.31, ptr @mxl1x1sf_tuner_set_if_output_freq._entry.33, ptr @mxl1x1sf_tuner_set_if_output_freq._entry.35, ptr @mxl1x1sf_tuner_set_if_output_freq._entry.37, ptr @mxl1x1sf_tuner_set_if_output_freq._entry_ptr, ptr @mxl1x1sf_tuner_set_if_output_freq._entry_ptr.32, ptr @mxl1x1sf_tuner_set_if_output_freq._entry_ptr.34, ptr @mxl1x1sf_tuner_set_if_output_freq._entry_ptr.36, ptr @mxl1x1sf_tuner_set_if_output_freq._entry_ptr.38, ptr @mxl111sf_tuner_debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mxl111sf_tuner_tuner_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.27, ptr @.str.28, ptr @mxl_phy_tune_rf, ptr @.str.29, ptr @.str.30, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @switch.table.mxl111sf_tuner_get_if_frequency], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_tuner_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_tuner_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_tuner_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_tuner_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_tuner_set_params._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_tuner_set_params._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_tuner_set_params._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl1x1sf_tune_rf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl1x1sf_tune_rf._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl1x1sf_tune_rf._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl1x1sf_tune_rf._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl1x1sf_tune_rf._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_calc_phy_tune_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl_phy_tune_rf to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl1x1sf_tuner_set_if_output_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl1x1sf_tuner_set_if_output_freq._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl1x1sf_tuner_set_if_output_freq._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl1x1sf_tuner_set_if_output_freq._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl1x1sf_tuner_set_if_output_freq._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_tuner_get_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_tuner_get_status._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl1x1sf_tuner_get_lock_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_get_rf_strength._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_get_rf_strength._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_get_rf_strength._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_get_rf_strength._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mxl111sf_tuner_get_if_frequency to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mxl111sf_tuner_attach(ptr noundef writeonly %fe, ptr noundef %mxl_state, ptr noundef %cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @mxl111sf_tuner_debug, align 4
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 20) #10
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
  %cfg5 = getelementptr inbounds %struct.mxl111sf_tuner_state, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %cfg5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cfg, ptr %cfg5, align 4
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %4 = call ptr @memcpy(ptr %tuner_ops, ptr @mxl111sf_tuner_tuner_ops, i32 220)
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %5 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
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
define internal void @mxl111sf_tuner_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @mxl111sf_tuner_debug, align 4
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
  %3 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %tuner_priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_tuner_set_params(ptr noundef %fe) #0 align 64 {
entry:
  %ctrl.i.i = alloca i8, align 1
  %mxl_mode.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %0 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delivery_system, align 4
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %2 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tuner_priv, align 4
  %4 = load i32, ptr @mxl111sf_tuner_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %5 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end14 [
    i32 11, label %if.end.sw.epilog17_crit_edge
    i32 12, label %if.end.sw.epilog17_crit_edge51
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
  ]

if.end.sw.epilog17_crit_edge51:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog17

if.end.sw.epilog17_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog17

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog17

sw.bb2:                                           ; preds = %if.end
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %6 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bandwidth_hz, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %7, label %do.end8 [
    i32 6000000, label %sw.bb2.sw.epilog17_crit_edge
    i32 7000000, label %sw.bb4
    i32 8000000, label %sw.bb5
  ]

sw.bb2.sw.epilog17_crit_edge:                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog17

sw.bb4:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog17

sw.bb5:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog17

do.end8:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7) #9
  br label %cleanup

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.7) #9
  br label %cleanup

sw.epilog17:                                      ; preds = %sw.bb5, %sw.bb4, %sw.bb2.sw.epilog17_crit_edge, %sw.bb1, %if.end.sw.epilog17_crit_edge, %if.end.sw.epilog17_crit_edge51
  %bw.0 = phi i8 [ 8, %sw.bb5 ], [ 7, %sw.bb4 ], [ 1, %sw.bb1 ], [ 0, %if.end.sw.epilog17_crit_edge ], [ 0, %if.end.sw.epilog17_crit_edge51 ], [ 6, %sw.bb2.sw.epilog17_crit_edge ]
  %9 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dtv_property_cache, align 4
  %11 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mxl_mode.i) #6
  %13 = ptrtoint ptr %mxl_mode.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %mxl_mode.i, align 1, !annotation !131
  %14 = load i32, ptr @mxl111sf_tuner_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %sw.epilog17.if.end.i_crit_edge, label %do.end.i

sw.epilog17.if.end.i_crit_edge:                   ; preds = %sw.epilog17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %sw.epilog17
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = zext i8 %bw.0 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %10, i32 noundef %conv.i) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %sw.epilog17.if.end.i_crit_edge
  %cfg.i.i = getelementptr inbounds %struct.mxl111sf_tuner_state, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfg.i.i, align 4
  %write_reg.i.i = getelementptr inbounds %struct.mxl111sf_tuner_config, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_reg.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.end.i.do.end7.i_crit_edge, label %mxl111sf_tuner_write_reg.exit.i

if.end.i.do.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i

mxl111sf_tuner_write_reg.exit.i:                  ; preds = %if.end.i
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %12, align 4
  %call.i.i = tail call i32 %18(ptr noundef %20, i8 noundef zeroext 28, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %mxl111sf_tuner_write_reg.exit.i.do.end7.i_crit_edge, label %if.end14.critedge.i

mxl111sf_tuner_write_reg.exit.i.do.end7.i_crit_edge: ; preds = %mxl111sf_tuner_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i

do.end7.i:                                        ; preds = %mxl111sf_tuner_write_reg.exit.i.do.end7.i_crit_edge, %if.end.i.do.end7.i_crit_edge
  %cond.i143.i = phi i32 [ %call.i.i, %mxl111sf_tuner_write_reg.exit.i.do.end7.i_crit_edge ], [ -22, %if.end.i.do.end7.i_crit_edge ]
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, i32 noundef %cond.i143.i, i32 noundef 197) #9
  br label %do.end23

if.end14.critedge.i:                              ; preds = %mxl111sf_tuner_write_reg.exit.i
  %21 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cfg.i.i, align 4
  %read_reg.i.i = getelementptr inbounds %struct.mxl111sf_tuner_config, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_reg.i.i, align 4
  %tobool.not.i110.i = icmp eq ptr %24, null
  br i1 %tobool.not.i110.i, label %if.end14.critedge.i.do.end23.i_crit_edge, label %mxl111sf_tuner_read_reg.exit.i

if.end14.critedge.i.do.end23.i_crit_edge:         ; preds = %if.end14.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

mxl111sf_tuner_read_reg.exit.i:                   ; preds = %if.end14.critedge.i
  %25 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %12, align 4
  %call.i111.i = call i32 %24(ptr noundef %26, i8 noundef zeroext 3, ptr noundef nonnull %mxl_mode.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111.i)
  %cmp17.i = icmp slt i32 %call.i111.i, 0
  br i1 %cmp17.i, label %mxl111sf_tuner_read_reg.exit.i.do.end23.i_crit_edge, label %if.end30.critedge.i

mxl111sf_tuner_read_reg.exit.i.do.end23.i_crit_edge: ; preds = %mxl111sf_tuner_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

do.end23.i:                                       ; preds = %mxl111sf_tuner_read_reg.exit.i.do.end23.i_crit_edge, %if.end14.critedge.i.do.end23.i_crit_edge
  %cond.i113146.i = phi i32 [ %call.i111.i, %mxl111sf_tuner_read_reg.exit.i.do.end23.i_crit_edge ], [ -22, %if.end14.critedge.i.do.end23.i_crit_edge ]
  %call25.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, i32 noundef %cond.i113146.i, i32 noundef 202) #9
  br label %do.end23

if.end30.critedge.i:                              ; preds = %mxl111sf_tuner_read_reg.exit.i
  %trunc = trunc i8 %bw.0 to i4
  %27 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.55)
  switch i4 %trunc, label %mxl111sf_calc_phy_tune_regs.exit.thread.i [
    i4 0, label %if.end30.critedge.i.if.end34.i_crit_edge
    i4 1, label %sw.bb1.i.i
    i4 6, label %sw.bb2.i.i
    i4 7, label %sw.bb3.i.i
    i4 -8, label %sw.bb4.i.i
  ]

if.end30.critedge.i.if.end34.i_crit_edge:         ; preds = %if.end30.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

sw.bb1.i.i:                                       ; preds = %if.end30.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

sw.bb2.i.i:                                       ; preds = %if.end30.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

sw.bb3.i.i:                                       ; preds = %if.end30.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

sw.bb4.i.i:                                       ; preds = %if.end30.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

mxl111sf_calc_phy_tune_regs.exit.thread.i:        ; preds = %if.end30.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i114.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #9
  br label %do.end23

if.end34.i:                                       ; preds = %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.end30.critedge.i.if.end34.i_crit_edge
  %filt_bw.0.i.i = phi i8 [ 63, %sw.bb4.i.i ], [ 42, %sw.bb3.i.i ], [ 21, %sw.bb2.i.i ], [ 69, %sw.bb1.i.i ], [ 25, %if.end30.critedge.i.if.end34.i_crit_edge ]
  %div.i.i = udiv i32 %10, 1000000
  store i8 %filt_bw.0.i.i, ptr getelementptr inbounds ([4 x %struct.mxl111sf_reg_ctrl_info], ptr @mxl_phy_tune_rf, i32 0, i32 0, i32 2), align 1
  %div.tr.i.i = trunc i32 %div.i.i to i8
  %conv5.i.i = shl i8 %div.tr.i.i, 6
  store i8 %conv5.i.i, ptr getelementptr inbounds ([4 x %struct.mxl111sf_reg_ctrl_info], ptr @mxl_phy_tune_rf, i32 0, i32 1, i32 2), align 1
  %shr.i.i = lshr i32 %div.i.i, 2
  %conv7.i.i = trunc i32 %shr.i.i to i8
  store i8 %conv7.i.i, ptr getelementptr inbounds ([4 x %struct.mxl111sf_reg_ctrl_info], ptr @mxl_phy_tune_rf, i32 0, i32 2, i32 2), align 1
  %28 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfg.i.i, align 4
  %program_regs.i.i = getelementptr inbounds %struct.mxl111sf_tuner_config, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %program_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %program_regs.i.i, align 4
  %tobool.not.i116.i = icmp eq ptr %31, null
  br i1 %tobool.not.i116.i, label %if.end34.i.do.end43.i_crit_edge, label %mxl111sf_tuner_program_regs.exit.i

if.end34.i.do.end43.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end43.i

mxl111sf_tuner_program_regs.exit.i:               ; preds = %if.end34.i
  %32 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %12, align 4
  %call.i117.i = call i32 %31(ptr noundef %33, ptr noundef nonnull @mxl_phy_tune_rf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117.i)
  %cmp37.i = icmp slt i32 %call.i117.i, 0
  br i1 %cmp37.i, label %mxl111sf_tuner_program_regs.exit.i.do.end43.i_crit_edge, label %if.end50.critedge.i

mxl111sf_tuner_program_regs.exit.i.do.end43.i_crit_edge: ; preds = %mxl111sf_tuner_program_regs.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end43.i

do.end43.i:                                       ; preds = %mxl111sf_tuner_program_regs.exit.i.do.end43.i_crit_edge, %if.end34.i.do.end43.i_crit_edge
  %cond.i119151.i = phi i32 [ %call.i117.i, %mxl111sf_tuner_program_regs.exit.i.do.end43.i_crit_edge ], [ -22, %if.end34.i.do.end43.i_crit_edge ]
  %call45.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, i32 noundef %cond.i119151.i, i32 noundef 211) #9
  br label %do.end23

if.end50.critedge.i:                              ; preds = %mxl111sf_tuner_program_regs.exit.i
  %34 = ptrtoint ptr %mxl_mode.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %mxl_mode.i, align 1
  %36 = and i8 %35, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp52.i = icmp eq i8 %36, 0
  br i1 %cmp52.i, label %if.then54.i, label %if.end50.critedge.i.if.end58.i_crit_edge

if.end50.critedge.i.if.end58.i_crit_edge:         ; preds = %if.end50.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58.i

if.then54.i:                                      ; preds = %if.end50.critedge.i
  %37 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cfg.i.i, align 4
  %top_master_ctrl.i.i = getelementptr inbounds %struct.mxl111sf_tuner_config, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %top_master_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %top_master_ctrl.i.i, align 4
  %tobool.not.i121.i = icmp eq ptr %40, null
  br i1 %tobool.not.i121.i, label %if.then54.i.mxl1x1sf_tuner_top_master_ctrl.exit.i_crit_edge, label %cond.true.i123.i

if.then54.i.mxl1x1sf_tuner_top_master_ctrl.exit.i_crit_edge: ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxl1x1sf_tuner_top_master_ctrl.exit.i

cond.true.i123.i:                                 ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %12, align 4
  %call.i122.i = call i32 %40(ptr noundef %42, i32 noundef 0) #6
  br label %mxl1x1sf_tuner_top_master_ctrl.exit.i

mxl1x1sf_tuner_top_master_ctrl.exit.i:            ; preds = %cond.true.i123.i, %if.then54.i.mxl1x1sf_tuner_top_master_ctrl.exit.i_crit_edge
  %43 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cfg.i.i, align 4
  %top_master_ctrl.i125.i = getelementptr inbounds %struct.mxl111sf_tuner_config, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %top_master_ctrl.i125.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %top_master_ctrl.i125.i, align 4
  %tobool.not.i126.i = icmp eq ptr %46, null
  br i1 %tobool.not.i126.i, label %mxl1x1sf_tuner_top_master_ctrl.exit.i.mxl1x1sf_tuner_top_master_ctrl.exit129.i_crit_edge, label %cond.true.i128.i

mxl1x1sf_tuner_top_master_ctrl.exit.i.mxl1x1sf_tuner_top_master_ctrl.exit129.i_crit_edge: ; preds = %mxl1x1sf_tuner_top_master_ctrl.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxl1x1sf_tuner_top_master_ctrl.exit129.i

cond.true.i128.i:                                 ; preds = %mxl1x1sf_tuner_top_master_ctrl.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %12, align 4
  %call.i127.i = call i32 %46(ptr noundef %48, i32 noundef 1) #6
  br label %mxl1x1sf_tuner_top_master_ctrl.exit129.i

mxl1x1sf_tuner_top_master_ctrl.exit129.i:         ; preds = %cond.true.i128.i, %mxl1x1sf_tuner_top_master_ctrl.exit.i.mxl1x1sf_tuner_top_master_ctrl.exit129.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ctrl.i.i) #6
  %49 = load i32, ptr @mxl111sf_tuner_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i130.i = icmp eq i32 %49, 0
  br i1 %tobool.not.i130.i, label %mxl1x1sf_tuner_top_master_ctrl.exit129.i.if.end.i.i_crit_edge, label %do.end.i133.i

mxl1x1sf_tuner_top_master_ctrl.exit129.i.if.end.i.i_crit_edge: ; preds = %mxl1x1sf_tuner_top_master_ctrl.exit129.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

do.end.i133.i:                                    ; preds = %mxl1x1sf_tuner_top_master_ctrl.exit129.i
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cfg.i.i, align 4
  %invert_spectrum.i.i = getelementptr inbounds %struct.mxl111sf_tuner_config, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %invert_spectrum.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load.i.i = load i8, ptr %invert_spectrum.i.i, align 4
  %bf.lshr.i.i = lshr i8 %bf.load.i.i, 7
  %bf.cast.i.i = zext i8 %bf.lshr.i.i to i32
  %53 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %51, align 4
  %call.i132.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %bf.cast.i.i, i32 noundef %54) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i133.i, %mxl1x1sf_tuner_top_master_ctrl.exit129.i.if.end.i.i_crit_edge
  %55 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cfg.i.i, align 4
  %invert_spectrum3.i.i = getelementptr inbounds %struct.mxl111sf_tuner_config, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %invert_spectrum3.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load4.i.i = load i8, ptr %invert_spectrum3.i.i, align 4
  %bf.lshr5.i.i = lshr i8 %bf.load4.i.i, 7
  %58 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %56, align 4
  %60 = trunc i32 %59 to i8
  %conv10.i.i = or i8 %bf.lshr5.i.i, %60
  %61 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv10.i.i, ptr %ctrl.i.i, align 1
  %write_reg.i.i.i = getelementptr inbounds %struct.mxl111sf_tuner_config, ptr %56, i32 0, i32 3
  %62 = ptrtoint ptr %write_reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write_reg.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %63, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.do.end17.i.i_crit_edge, label %mxl111sf_tuner_write_reg.exit.i.i

if.end.i.i.do.end17.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17.i.i

mxl111sf_tuner_write_reg.exit.i.i:                ; preds = %if.end.i.i
  %64 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %12, align 4
  %call.i.i.i = call i32 %63(ptr noundef %65, i8 noundef zeroext 6, i8 noundef zeroext %conv10.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %mxl111sf_tuner_write_reg.exit.i.i.do.end17.i.i_crit_edge, label %if.end24.critedge.i.i

mxl111sf_tuner_write_reg.exit.i.i.do.end17.i.i_crit_edge: ; preds = %mxl111sf_tuner_write_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17.i.i

do.end17.i.i:                                     ; preds = %mxl111sf_tuner_write_reg.exit.i.i.do.end17.i.i_crit_edge, %if.end.i.i.do.end17.i.i_crit_edge
  %cond.i25.i.i = phi i32 [ %call.i.i.i, %mxl111sf_tuner_write_reg.exit.i.i.do.end17.i.i_crit_edge ], [ -22, %if.end.i.i.do.end17.i.i_crit_edge ]
  %call19.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.30, i32 noundef %cond.i25.i.i, i32 noundef 141) #9
  br label %mxl1x1sf_tuner_set_if_output_freq.exit.i

if.end24.critedge.i.i:                            ; preds = %mxl111sf_tuner_write_reg.exit.i.i
  %66 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cfg.i.i, align 4
  %read_reg.i.i.i = getelementptr inbounds %struct.mxl111sf_tuner_config, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %read_reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read_reg.i.i.i, align 4
  %tobool.not.i5.i.i = icmp eq ptr %69, null
  br i1 %tobool.not.i5.i.i, label %if.end24.critedge.i.i.do.end33.i.i_crit_edge, label %mxl111sf_tuner_read_reg.exit.i.i

if.end24.critedge.i.i.do.end33.i.i_crit_edge:     ; preds = %if.end24.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end33.i.i

mxl111sf_tuner_read_reg.exit.i.i:                 ; preds = %if.end24.critedge.i.i
  %70 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %12, align 4
  %call.i6.i.i = call i32 %69(ptr noundef %71, i8 noundef zeroext 61, ptr noundef nonnull %ctrl.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i)
  %cmp27.i.i = icmp slt i32 %call.i6.i.i, 0
  br i1 %cmp27.i.i, label %mxl111sf_tuner_read_reg.exit.i.i.do.end33.i.i_crit_edge, label %if.end40.critedge.i.i

mxl111sf_tuner_read_reg.exit.i.i.do.end33.i.i_crit_edge: ; preds = %mxl111sf_tuner_read_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end33.i.i

do.end33.i.i:                                     ; preds = %mxl111sf_tuner_read_reg.exit.i.i.do.end33.i.i_crit_edge, %if.end24.critedge.i.i.do.end33.i.i_crit_edge
  %cond.i828.i.i = phi i32 [ %call.i6.i.i, %mxl111sf_tuner_read_reg.exit.i.i.do.end33.i.i_crit_edge ], [ -22, %if.end24.critedge.i.i.do.end33.i.i_crit_edge ]
  %call35.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.30, i32 noundef %cond.i828.i.i, i32 noundef 164) #9
  br label %mxl1x1sf_tuner_set_if_output_freq.exit.i

if.end40.critedge.i.i:                            ; preds = %mxl111sf_tuner_read_reg.exit.i.i
  %72 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %ctrl.i.i, align 1
  %74 = and i8 %73, 96
  %75 = or i8 %74, -112
  store i8 %75, ptr %ctrl.i.i, align 1
  %76 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cfg.i.i, align 4
  %write_reg.i10.i.i = getelementptr inbounds %struct.mxl111sf_tuner_config, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %write_reg.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write_reg.i10.i.i, align 4
  %tobool.not.i11.i.i = icmp eq ptr %79, null
  br i1 %tobool.not.i11.i.i, label %if.end40.critedge.i.i.do.end54.i.i_crit_edge, label %mxl111sf_tuner_write_reg.exit15.i.i

if.end40.critedge.i.i.do.end54.i.i_crit_edge:     ; preds = %if.end40.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end54.i.i

mxl111sf_tuner_write_reg.exit15.i.i:              ; preds = %if.end40.critedge.i.i
  %80 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %12, align 4
  %call.i12.i.i = call i32 %79(ptr noundef %81, i8 noundef zeroext 61, i8 noundef zeroext %75) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %cmp48.i.i = icmp slt i32 %call.i12.i.i, 0
  br i1 %cmp48.i.i, label %mxl111sf_tuner_write_reg.exit15.i.i.do.end54.i.i_crit_edge, label %if.end61.critedge.i.i

mxl111sf_tuner_write_reg.exit15.i.i.do.end54.i.i_crit_edge: ; preds = %mxl111sf_tuner_write_reg.exit15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end54.i.i

do.end54.i.i:                                     ; preds = %mxl111sf_tuner_write_reg.exit15.i.i.do.end54.i.i_crit_edge, %if.end40.critedge.i.i.do.end54.i.i_crit_edge
  %cond.i1431.i.i = phi i32 [ %call.i12.i.i, %mxl111sf_tuner_write_reg.exit15.i.i.do.end54.i.i_crit_edge ], [ -22, %if.end40.critedge.i.i.do.end54.i.i_crit_edge ]
  %call56.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.30, i32 noundef %cond.i1431.i.i, i32 noundef 171) #9
  br label %mxl1x1sf_tuner_set_if_output_freq.exit.i

if.end61.critedge.i.i:                            ; preds = %mxl111sf_tuner_write_reg.exit15.i.i
  %82 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cfg.i.i, align 4
  %write_reg.i17.i.i = getelementptr inbounds %struct.mxl111sf_tuner_config, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %write_reg.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write_reg.i17.i.i, align 4
  %tobool.not.i18.i.i = icmp eq ptr %85, null
  br i1 %tobool.not.i18.i.i, label %if.end61.critedge.i.i.do.end70.i.i_crit_edge, label %mxl111sf_tuner_write_reg.exit22.i.i

if.end61.critedge.i.i.do.end70.i.i_crit_edge:     ; preds = %if.end61.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end70.i.i

mxl111sf_tuner_write_reg.exit22.i.i:              ; preds = %if.end61.critedge.i.i
  %86 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %ctrl.i.i, align 1
  %88 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %12, align 4
  %call.i19.i.i = call i32 %85(ptr noundef %89, i8 noundef zeroext 60, i8 noundef zeroext %87) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i.i)
  %cmp64.i.i = icmp slt i32 %call.i19.i.i, 0
  br i1 %cmp64.i.i, label %mxl111sf_tuner_write_reg.exit22.i.i.do.end70.i.i_crit_edge, label %if.end77.critedge.i.i

mxl111sf_tuner_write_reg.exit22.i.i.do.end70.i.i_crit_edge: ; preds = %mxl111sf_tuner_write_reg.exit22.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end70.i.i

do.end70.i.i:                                     ; preds = %mxl111sf_tuner_write_reg.exit22.i.i.do.end70.i.i_crit_edge, %if.end61.critedge.i.i.do.end70.i.i_crit_edge
  %cond.i2134.i.i = phi i32 [ %call.i19.i.i, %mxl111sf_tuner_write_reg.exit22.i.i.do.end70.i.i_crit_edge ], [ -22, %if.end61.critedge.i.i.do.end70.i.i_crit_edge ]
  %call72.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.30, i32 noundef %cond.i2134.i.i, i32 noundef 178) #9
  br label %mxl1x1sf_tuner_set_if_output_freq.exit.i

if.end77.critedge.i.i:                            ; preds = %mxl111sf_tuner_write_reg.exit22.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cfg.i.i, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %91, align 4
  %if_freq80.i.i = getelementptr inbounds %struct.mxl111sf_tuner_state, ptr %12, i32 0, i32 2
  %94 = ptrtoint ptr %if_freq80.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %if_freq80.i.i, align 4
  br label %mxl1x1sf_tuner_set_if_output_freq.exit.i

mxl1x1sf_tuner_set_if_output_freq.exit.i:         ; preds = %if.end77.critedge.i.i, %do.end70.i.i, %do.end54.i.i, %do.end33.i.i, %do.end17.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ctrl.i.i) #6
  br label %if.end58.i

if.end58.i:                                       ; preds = %mxl1x1sf_tuner_set_if_output_freq.exit.i, %if.end50.critedge.i.if.end58.i_crit_edge
  %95 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cfg.i.i, align 4
  %write_reg.i135.i = getelementptr inbounds %struct.mxl111sf_tuner_config, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %write_reg.i135.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %write_reg.i135.i, align 4
  %tobool.not.i136.i = icmp eq ptr %98, null
  br i1 %tobool.not.i136.i, label %if.end58.i.do.end67.i_crit_edge, label %mxl111sf_tuner_write_reg.exit140.i

if.end58.i.do.end67.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67.i

mxl111sf_tuner_write_reg.exit140.i:               ; preds = %if.end58.i
  %99 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %12, align 4
  %call.i137.i = call i32 %98(ptr noundef %100, i8 noundef zeroext 28, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137.i)
  %cmp61.i = icmp slt i32 %call.i137.i, 0
  br i1 %cmp61.i, label %mxl111sf_tuner_write_reg.exit140.i.do.end67.i_crit_edge, label %if.end74.critedge.i

mxl111sf_tuner_write_reg.exit140.i.do.end67.i_crit_edge: ; preds = %mxl111sf_tuner_write_reg.exit140.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67.i

do.end67.i:                                       ; preds = %mxl111sf_tuner_write_reg.exit140.i.do.end67.i_crit_edge, %if.end58.i.do.end67.i_crit_edge
  %cond.i139154.i = phi i32 [ %call.i137.i, %mxl111sf_tuner_write_reg.exit140.i.do.end67.i_crit_edge ], [ -22, %if.end58.i.do.end67.i_crit_edge ]
  %call69.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, i32 noundef %cond.i139154.i, i32 noundef 222) #9
  br label %do.end23

if.end74.critedge.i:                              ; preds = %mxl111sf_tuner_write_reg.exit140.i
  %101 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cfg.i.i, align 4
  %ant_hunt.i = getelementptr inbounds %struct.mxl111sf_tuner_config, ptr %102, i32 0, i32 6
  %103 = ptrtoint ptr %ant_hunt.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ant_hunt.i, align 4
  %tobool75.not.i = icmp eq ptr %104, null
  br i1 %tobool75.not.i, label %if.end74.critedge.i.if.end30.critedge_crit_edge, label %if.then76.i

if.end74.critedge.i.if.end30.critedge_crit_edge:  ; preds = %if.end74.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.critedge

if.then76.i:                                      ; preds = %if.end74.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  %call79.i = call i32 %104(ptr noundef %fe) #6
  br label %if.end30.critedge

do.end23:                                         ; preds = %do.end67.i, %do.end43.i, %mxl111sf_calc_phy_tune_regs.exit.thread.i, %do.end23.i, %do.end7.i
  %retval.0.i.ph = phi i32 [ -22, %mxl111sf_calc_phy_tune_regs.exit.thread.i ], [ %cond.i139154.i, %do.end67.i ], [ %cond.i119151.i, %do.end43.i ], [ %cond.i113146.i, %do.end23.i ], [ %cond.i143.i, %do.end7.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mxl_mode.i) #6
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i.ph, i32 noundef 301) #9
  br label %cleanup

if.end30.critedge:                                ; preds = %if.then76.i, %if.end74.critedge.i.if.end30.critedge_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mxl_mode.i) #6
  %105 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %dtv_property_cache, align 4
  %frequency32 = getelementptr inbounds %struct.mxl111sf_tuner_state, ptr %3, i32 0, i32 3
  %107 = ptrtoint ptr %frequency32 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %frequency32, align 4
  %bandwidth_hz33 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %108 = ptrtoint ptr %bandwidth_hz33 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %bandwidth_hz33, align 4
  %bandwidth = getelementptr inbounds %struct.mxl111sf_tuner_state, ptr %3, i32 0, i32 4
  %110 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %bandwidth, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30.critedge, %do.end23, %do.end14, %do.end8
  %retval.0 = phi i32 [ -22, %do.end14 ], [ -22, %do.end8 ], [ %retval.0.i.ph, %do.end23 ], [ %call.i137.i, %if.end30.critedge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mxl111sf_tuner_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %frequency1 = getelementptr inbounds %struct.mxl111sf_tuner_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %frequency1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency1, align 4
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mxl111sf_tuner_get_bandwidth(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %bandwidth) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %bandwidth1 = getelementptr inbounds %struct.mxl111sf_tuner_state, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %bandwidth1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bandwidth1, align 4
  %4 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %bandwidth, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mxl111sf_tuner_get_if_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %frequency, align 4
  %if_freq = getelementptr inbounds %struct.mxl111sf_tuner_state, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %if_freq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %if_freq, align 4
  %switch.tableidx = add i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %switch.tableidx)
  %5 = icmp ult i32 %switch.tableidx, 12
  br i1 %5, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [12 x i32], ptr @switch.table.mxl111sf_tuner_get_if_frequency, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %7 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %switch.load, ptr %frequency, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_tuner_get_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %status, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #6
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %data.i, align 1, !annotation !131
  %cfg.i.i = getelementptr inbounds %struct.mxl111sf_tuner_state, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i.i, align 4
  %read_reg.i.i = getelementptr inbounds %struct.mxl111sf_tuner_config, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_reg.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %entry.do.end_crit_edge, label %mxl111sf_tuner_read_reg.exit.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

mxl111sf_tuner_read_reg.exit.i:                   ; preds = %entry
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call.i.i = call i32 %7(ptr noundef %9, i8 noundef zeroext 35, ptr noundef nonnull %data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %mxl111sf_tuner_read_reg.exit.i.do.end_crit_edge, label %do.end8.critedge

mxl111sf_tuner_read_reg.exit.i.do.end_crit_edge:  ; preds = %mxl111sf_tuner_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %mxl111sf_tuner_read_reg.exit.i.do.end_crit_edge, %entry.do.end_crit_edge
  %cond.i21.i = phi i32 [ %call.i.i, %mxl111sf_tuner_read_reg.exit.i.do.end_crit_edge ], [ -22, %entry.do.end_crit_edge ]
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.46, i32 noundef %cond.i21.i, i32 noundef 242) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #6
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.39, i32 noundef %cond.i21.i, i32 noundef 344) #9
  br label %fail

do.end8.critedge:                                 ; preds = %mxl111sf_tuner_read_reg.exit.i
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data.i, align 1
  %12 = and i8 %11, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %cmp7.i.not = icmp eq i8 %12, 3
  %13 = and i8 %11, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %13)
  %cmp11.i.not = icmp eq i8 %13, 12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #6
  %cond = select i1 %cmp11.i.not, ptr @.str.43, ptr @.str.44
  %cond12 = select i1 %cmp7.i.not, ptr @.str.45, ptr @.str.44
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39, ptr noundef nonnull %cond, ptr noundef nonnull %cond12) #9
  %brmerge = or i1 %cmp11.i.not, %cmp7.i.not
  br i1 %brmerge, label %if.then16, label %do.end8.critedge.fail_crit_edge

do.end8.critedge.fail_crit_edge:                  ; preds = %do.end8.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.then16:                                        ; preds = %do.end8.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status, align 4
  %or = or i32 %15, 1
  store i32 %or, ptr %status, align 4
  br label %fail

fail:                                             ; preds = %if.then16, %do.end8.critedge.fail_crit_edge, %do.end
  %cond.i22.i29 = phi i32 [ %cond.i21.i, %do.end ], [ %call.i.i, %if.then16 ], [ %call.i.i, %do.end8.critedge.fail_crit_edge ]
  ret i32 %cond.i22.i29
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_get_rf_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
  %val1 = alloca i8, align 1
  %val2 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val1) #6
  %2 = ptrtoint ptr %val1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val1, align 1, !annotation !131
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val2) #6
  %3 = ptrtoint ptr %val2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %val2, align 1, !annotation !131
  %4 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %strength, align 2
  %cfg.i = getelementptr inbounds %struct.mxl111sf_tuner_state, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cfg.i, align 4
  %write_reg.i = getelementptr inbounds %struct.mxl111sf_tuner_config, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_reg.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %mxl111sf_tuner_write_reg.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

mxl111sf_tuner_write_reg.exit:                    ; preds = %entry
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call.i = tail call i32 %8(ptr noundef %10, i8 noundef zeroext 0, i8 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %mxl111sf_tuner_write_reg.exit.do.end_crit_edge, label %if.end5.critedge

mxl111sf_tuner_write_reg.exit.do.end_crit_edge:   ; preds = %mxl111sf_tuner_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %mxl111sf_tuner_write_reg.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %cond.i93 = phi i32 [ %call.i, %mxl111sf_tuner_write_reg.exit.do.end_crit_edge ], [ -22, %entry.do.end_crit_edge ]
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.47, i32 noundef %cond.i93, i32 noundef 364) #9
  br label %fail

if.end5.critedge:                                 ; preds = %mxl111sf_tuner_write_reg.exit
  %11 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfg.i, align 4
  %read_reg.i = getelementptr inbounds %struct.mxl111sf_tuner_config, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_reg.i, align 4
  %tobool.not.i73 = icmp eq ptr %14, null
  br i1 %tobool.not.i73, label %if.end5.critedge.do.end14_crit_edge, label %mxl111sf_tuner_read_reg.exit

if.end5.critedge.do.end14_crit_edge:              ; preds = %if.end5.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

mxl111sf_tuner_read_reg.exit:                     ; preds = %if.end5.critedge
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call.i74 = call i32 %14(ptr noundef %16, i8 noundef zeroext 70, ptr noundef nonnull %val1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %cmp8 = icmp slt i32 %call.i74, 0
  br i1 %cmp8, label %mxl111sf_tuner_read_reg.exit.do.end14_crit_edge, label %if.end21.critedge

mxl111sf_tuner_read_reg.exit.do.end14_crit_edge:  ; preds = %mxl111sf_tuner_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.end14:                                         ; preds = %mxl111sf_tuner_read_reg.exit.do.end14_crit_edge, %if.end5.critedge.do.end14_crit_edge
  %cond.i7696 = phi i32 [ %call.i74, %mxl111sf_tuner_read_reg.exit.do.end14_crit_edge ], [ -22, %if.end5.critedge.do.end14_crit_edge ]
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.47, i32 noundef %cond.i7696, i32 noundef 367) #9
  br label %fail

if.end21.critedge:                                ; preds = %mxl111sf_tuner_read_reg.exit
  %17 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg.i, align 4
  %read_reg.i78 = getelementptr inbounds %struct.mxl111sf_tuner_config, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %read_reg.i78 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read_reg.i78, align 4
  %tobool.not.i79 = icmp eq ptr %20, null
  br i1 %tobool.not.i79, label %if.end21.critedge.do.end30_crit_edge, label %mxl111sf_tuner_read_reg.exit83

if.end21.critedge.do.end30_crit_edge:             ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30

mxl111sf_tuner_read_reg.exit83:                   ; preds = %if.end21.critedge
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i80 = call i32 %20(ptr noundef %22, i8 noundef zeroext 71, ptr noundef nonnull %val2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %cmp24 = icmp slt i32 %call.i80, 0
  br i1 %cmp24, label %mxl111sf_tuner_read_reg.exit83.do.end30_crit_edge, label %if.end37.critedge

mxl111sf_tuner_read_reg.exit83.do.end30_crit_edge: ; preds = %mxl111sf_tuner_read_reg.exit83
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30

do.end30:                                         ; preds = %mxl111sf_tuner_read_reg.exit83.do.end30_crit_edge, %if.end21.critedge.do.end30_crit_edge
  %cond.i8299 = phi i32 [ %call.i80, %mxl111sf_tuner_read_reg.exit83.do.end30_crit_edge ], [ -22, %if.end21.critedge.do.end30_crit_edge ]
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.47, i32 noundef %cond.i8299, i32 noundef 370) #9
  br label %fail

if.end37.critedge:                                ; preds = %mxl111sf_tuner_read_reg.exit83
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %val1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %val1, align 1
  %conv38 = zext i8 %24 to i16
  %25 = ptrtoint ptr %val2 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %val2, align 1
  %27 = and i8 %26, 7
  %and = zext i8 %27 to i16
  %shl = shl nuw nsw i16 %and, 8
  %or = or i16 %shl, %conv38
  %28 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %or, ptr %strength, align 2
  br label %fail

fail:                                             ; preds = %if.end37.critedge, %do.end30, %do.end14, %do.end
  %29 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cfg.i, align 4
  %write_reg.i85 = getelementptr inbounds %struct.mxl111sf_tuner_config, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %write_reg.i85 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write_reg.i85, align 4
  %tobool.not.i86 = icmp eq ptr %32, null
  br i1 %tobool.not.i86, label %fail.do.end49_crit_edge, label %mxl111sf_tuner_write_reg.exit90

fail.do.end49_crit_edge:                          ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end49

mxl111sf_tuner_write_reg.exit90:                  ; preds = %fail
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %call.i87 = call i32 %32(ptr noundef %34, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %cmp43 = icmp slt i32 %call.i87, 0
  br i1 %cmp43, label %mxl111sf_tuner_write_reg.exit90.do.end49_crit_edge, label %mxl111sf_tuner_write_reg.exit90.if.end52_crit_edge

mxl111sf_tuner_write_reg.exit90.if.end52_crit_edge: ; preds = %mxl111sf_tuner_write_reg.exit90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

mxl111sf_tuner_write_reg.exit90.do.end49_crit_edge: ; preds = %mxl111sf_tuner_write_reg.exit90
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end49

do.end49:                                         ; preds = %mxl111sf_tuner_write_reg.exit90.do.end49_crit_edge, %fail.do.end49_crit_edge
  %cond.i89102 = phi i32 [ %call.i87, %mxl111sf_tuner_write_reg.exit90.do.end49_crit_edge ], [ -22, %fail.do.end49_crit_edge ]
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.47, i32 noundef %cond.i89102, i32 noundef 376) #9
  br label %if.end52

if.end52:                                         ; preds = %do.end49, %mxl111sf_tuner_write_reg.exit90.if.end52_crit_edge
  %cond.i89103 = phi i32 [ %cond.i89102, %do.end49 ], [ %call.i87, %mxl111sf_tuner_write_reg.exit90.if.end52_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val2) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val1) #6
  ret i32 %cond.i89103
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !15, !17, !19, !20, !22, !23, !24, !25, !26, !28, !29, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !56, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !74, !75, !77, !79, !80, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !98, !100, !101, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !118, !119, !121}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 14, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype386, !1, !"__UNIQUE_ID_debugtype386", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug387, !4, !"__UNIQUE_ID_debug387", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 15, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 483, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mxl111sf_tuner_attach._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @mxl111sf_tuner_attach._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @__ksymtab_mxl111sf_tuner_attach, !12, !"__ksymtab_mxl111sf_tuner_attach", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 498, i32 1}
!13 = !{ptr @__UNIQUE_ID_description388, !14, !"__UNIQUE_ID_description388", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 500, i32 1}
!15 = !{ptr @__UNIQUE_ID_author389, !16, !"__UNIQUE_ID_author389", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 501, i32 1}
!17 = !{ptr @__UNIQUE_ID_file390, !18, !"__UNIQUE_ID_file390", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 502, i32 1}
!19 = !{ptr @__UNIQUE_ID_license391, !18, !"__UNIQUE_ID_license391", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_version392, !21, !"__UNIQUE_ID_version392", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 503, i32 1}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @__modver_attr, !21, !"__modver_attr", i1 false, i1 false}
!26 = !{ptr @mxl111sf_tuner_debug, !27, !"mxl111sf_tuner_debug", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 13, i32 12}
!28 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!29 = !{ptr @mxl111sf_tuner_tuner_ops, !30, !"mxl111sf_tuner_tuner_ops", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 455, i32 35}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 448, i32 2}
!33 = !{ptr @mxl111sf_tuner_release._entry, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @mxl111sf_tuner_release._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 270, i32 2}
!37 = !{ptr @mxl111sf_tuner_set_params._entry, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @mxl111sf_tuner_set_params._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 292, i32 4}
!41 = !{ptr @mxl111sf_tuner_set_params._entry.8, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @mxl111sf_tuner_set_params._entry_ptr.10, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 297, i32 3}
!45 = !{ptr @mxl111sf_tuner_set_params._entry.11, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @mxl111sf_tuner_set_params._entry_ptr.13, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 301, i32 6}
!49 = !{ptr @mxl111sf_tuner_set_params._entry.14, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @mxl111sf_tuner_set_params._entry_ptr.16, !48, !"_entry_ptr", i1 false, i1 false}
!51 = distinct !{null, !52, !"reg_ctrl_array", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 189, i32 40}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 193, i32 2}
!55 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @mxl1x1sf_tune_rf._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @mxl1x1sf_tune_rf._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @mxl1x1sf_tune_rf._entry.19, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 197, i32 6}
!60 = !{ptr @mxl1x1sf_tune_rf._entry_ptr.20, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @mxl1x1sf_tune_rf._entry.21, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 202, i32 6}
!63 = !{ptr @mxl1x1sf_tune_rf._entry_ptr.22, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @mxl1x1sf_tune_rf._entry.23, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 211, i32 6}
!66 = !{ptr @mxl1x1sf_tune_rf._entry_ptr.24, !65, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @mxl1x1sf_tune_rf._entry.25, !68, !"_entry", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 222, i32 6}
!69 = !{ptr @mxl1x1sf_tune_rf._entry_ptr.26, !68, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 101, i32 3}
!72 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @mxl111sf_calc_phy_tune_regs._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @mxl111sf_calc_phy_tune_regs._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @mxl_phy_tune_rf, !76, !"mxl_phy_tune_rf", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 68, i32 38}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 132, i32 2}
!79 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @mxl1x1sf_tuner_set_if_output_freq._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @mxl1x1sf_tuner_set_if_output_freq._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @mxl1x1sf_tuner_set_if_output_freq._entry.31, !83, !"_entry", i1 false, i1 false}
!83 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 141, i32 6}
!84 = !{ptr @mxl1x1sf_tuner_set_if_output_freq._entry_ptr.32, !83, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @mxl1x1sf_tuner_set_if_output_freq._entry.33, !86, !"_entry", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 164, i32 6}
!87 = !{ptr @mxl1x1sf_tuner_set_if_output_freq._entry_ptr.34, !86, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @mxl1x1sf_tuner_set_if_output_freq._entry.35, !89, !"_entry", i1 false, i1 false}
!89 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 171, i32 6}
!90 = !{ptr @mxl1x1sf_tuner_set_if_output_freq._entry_ptr.36, !89, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @mxl1x1sf_tuner_set_if_output_freq._entry.37, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 178, i32 6}
!93 = !{ptr @mxl1x1sf_tuner_set_if_output_freq._entry_ptr.38, !92, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 344, i32 6}
!96 = !{ptr @mxl111sf_tuner_get_status._entry, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @mxl111sf_tuner_get_status._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 346, i32 2}
!100 = !{ptr @mxl111sf_tuner_get_status._entry.40, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @mxl111sf_tuner_get_status._entry_ptr.42, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 242, i32 6}
!107 = !{ptr @mxl1x1sf_tuner_get_lock_status._entry, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @mxl1x1sf_tuner_get_lock_status._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 364, i32 6}
!111 = !{ptr @mxl111sf_get_rf_strength._entry, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @mxl111sf_get_rf_strength._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @mxl111sf_get_rf_strength._entry.48, !114, !"_entry", i1 false, i1 false}
!114 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 367, i32 6}
!115 = !{ptr @mxl111sf_get_rf_strength._entry_ptr.49, !114, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @mxl111sf_get_rf_strength._entry.50, !117, !"_entry", i1 false, i1 false}
!117 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 370, i32 6}
!118 = !{ptr @mxl111sf_get_rf_strength._entry_ptr.51, !117, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @mxl111sf_get_rf_strength._entry.52, !120, !"_entry", i1 false, i1 false}
!120 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-tuner.c", i32 376, i32 2}
!121 = !{ptr @mxl111sf_get_rf_strength._entry_ptr.53, !120, !"_entry_ptr", i1 false, i1 false}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{!"auto-init"}
